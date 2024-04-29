-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: db597130762.db.1and1.com
-- Generation Time: Apr 26, 2024 at 04:57 AM
-- Server version: 5.7.42-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db597130762`
--
CREATE DATABASE IF NOT EXISTS `db597130762` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db597130762`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `$letzterechnung`
-- (See below for the actual view)
--
CREATE TABLE `$letzterechnung` (
`bId` int(11)
,`datum` date
,`kId2` int(11)
,`rechnungsNummer` varchar(50)
,`kId` int(11)
,`institution` varchar(50)
,`titel` varchar(50)
,`vorname` varchar(50)
,`name` varchar(50)
,`strasse` varchar(50)
,`plz` varchar(50)
,`ort` varchar(50)
,`mw` tinyint(4)
,`mob` varchar(50)
,`tel` varchar(50)
,`email` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `acustomviewautor`
--

CREATE TABLE `acustomviewautor` (
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `preis` decimal(10,4) DEFAULT NULL,
  `autorName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `autorVorname` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `acustomviewautorplay`
--

CREATE TABLE `acustomviewautorplay` (
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `autorName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `autorVorname` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `acustomviewautorpurchase`
--

CREATE TABLE `acustomviewautorpurchase` (
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `preis` decimal(10,4) DEFAULT NULL,
  `paid` decimal(10,4) DEFAULT NULL,
  `autorName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `autorVorname` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `acustomviewtranslator`
--

CREATE TABLE `acustomviewtranslator` (
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vorname` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `appleBridgeDoddle`
-- (See below for the actual view)
--
CREATE TABLE `appleBridgeDoddle` (
`id` int(11)
,`beginDate` date
,`endDate` date
,`developerProceeds` decimal(10,4)
,`units` int(11)
,`sku` varchar(50)
,`currencyOfProceeds` varchar(50)
,`value` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `applebridgedoddle`
--

CREATE TABLE `applebridgedoddle` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `applebridgedoddlenorefund`
--

CREATE TABLE `applebridgedoddlenorefund` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `appledaten`
--

CREATE TABLE `appledaten` (
  `provider` varchar(50) NOT NULL,
  `providerCountry` varchar(50) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `developer` varchar(50) DEFAULT NULL,
  `title` tinytext NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `productTypeIdentifier` varchar(50) NOT NULL,
  `units` int(11) NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `customerCurrency` varchar(50) NOT NULL,
  `countryCode` varchar(50) NOT NULL,
  `currencyOfProceeds` varchar(50) NOT NULL,
  `appleIdentifier` int(11) NOT NULL,
  `customerPrice` decimal(10,4) NOT NULL,
  `promoCode` varchar(50) DEFAULT NULL,
  `parentIdentifier` varchar(50) DEFAULT NULL,
  `subscription` varchar(50) DEFAULT NULL,
  `period` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `cmb` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appledaten`
--

INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 7, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 600516751, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 445),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 446),
('APPLE', 'US', '2101', ' ', '2101 ACOL (starke 2er) - Eröffnungen - Deutsch', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 635718529, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 447),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 5, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 573563664, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 448),
('APPLE', 'US', '505', ' ', '505_FORUM_D_2012_Antworten auf OFuUF-Eröffnungen_Diagramm', ' ', 'IA1', 8, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 595397604, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 449),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 3, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 450),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 4, '0.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 451),
('APPLE', 'US', 'R8', ' ', 'R8 - Eröffnung-Antwort und erstes Rebid', ' ', 'IA1', 14, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 579762302, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 452),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 2, '7.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', ' ', '', 453),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 454),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 455),
('APPLE', 'US', '20001', ' ', '20001 - Ausspiele für Anfaenger', ' ', 'IA1', 6, '3.6500', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 677269493, '5.9900', ' ', ' 1', ' ', ' ', 'Games', '', 456),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 4, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 457),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 458),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 459),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 460),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 5, '0.0000', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 461),
('APPLE', 'US', '2009', ' ', '2009 ACOL (schwache 2er) - Erstes Rebid - Diagramm - Deutsch', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 635648065, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 462),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'CZ', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 463),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 58, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', ' ', '', 464),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 10, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 646480241, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 465),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 2, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 466),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 16, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 467),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 468),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 19, '0.0000', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 469),
('APPLE', 'US', '1509', ' ', '1509 ACOL - First rebid diagram', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 651430012, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 470),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 471),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 472),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 12, '0.0000', '2013-01-01', '2013-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 473),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '4.2500', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609955394, '6.9900', ' ', ' 1', ' ', ' ', ' ', '', 474),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7', 6, '0.0000', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 475),
('APPLE', 'US', '305', ' ', '305 - SAYC - Engl - First Answer to Minor-/Major-Openings  - Bidding', ' ', 'IA1', 1, '7.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609957825, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 476),
('APPLE', 'US', 'R10', ' ', 'R10 - FD Basis – Zweites Gebot des Antwortenden', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 656136834, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 477),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 4, '27.3900', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '45.0000', ' ', '  ', ' ', ' ', ' ', '', 478),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '1', 2, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', ' ', '', 479),
('APPLE', 'US', 'A5', ' ', 'A5 - Wörterbuch/Dictionary Englisch - Deutsch', ' ', 'IA1', 5, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 591656679, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 480),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 481),
('APPLE', 'US', '430', ' ', '430 Forum D PLUS - Weiterreizung nach NT - M. Gromoeller', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 634598711, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 482),
('APPLE', 'US', '507', ' ', '507 - Forum D 2012_NT_Eröffnungen und Antworten', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597235928, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 483),
('APPLE', 'US', '709', ' ', '709 - BETTER MINOR - EÖ-Antwort und erstes Rebid - Diagramm', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 600153420, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 484),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', 'Games', '', 485),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 3, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 486),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 9, '5.4700', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 579760995, '8.9900', ' ', ' 1', ' ', ' ', ' ', '', 487),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 9, '0.0000', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 488),
('APPLE', 'US', '10049', ' ', '10049 - Antworten auf Informationskontra', ' ', 'IA1', 5, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 641292776, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 489),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 490),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', 8, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 622266427, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 491),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', 'CR-RW', '  ', ' ', ' ', ' ', '', 492),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 493),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 4, '0.0000', '2013-01-01', '2013-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 494),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 3, '0.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', ' ', '', 495),
('APPLE', 'US', '201', ' ', '201 - SAYC Deutsch - Eröffnungen', ' ', 'IA1', 1, '5.4700', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 599454067, '8.9900', ' ', ' 1', ' ', ' ', ' ', '', 496),
('APPLE', 'US', '309', ' ', '309 - SAYC - Engl - First rebid by opener - bidding', ' ', 'IA1', 2, '7.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609965674, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 497),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 4, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 498),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 11, '0.0000', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 499),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2013-01-01', '2013-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 500),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 5, '0.0000', '2013-01-01', '2013-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 501),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 502),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597493743, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 503),
('APPLE', 'US', 'R30', ' ', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 642124845, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 504),
('APPLE', 'US', '1505', ' ', '1505 ACOL - Opening and response dia', ' ', 'IA1', 1, '1.8200', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 651673428, '2.9900', ' ', ' 1', ' ', ' ', ' ', '', 505),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 506),
('APPLE', 'US', '1504', ' ', '1504 ACOL - Opening and response', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 649385517, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 507),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', 'CR-RW', '  ', ' ', ' ', ' ', '', 508),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 7, '0.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 509),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 5, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 646480241, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 510),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 6, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 511),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 2, '7.7000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', ' ', '', 512),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 27, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 513),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'PH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 514),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '1', 1, '3.8900', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '6.0000', ' ', '  ', ' ', ' ', ' ', '', 515),
('APPLE', 'US', '501', ' ', '501 - FORUM D 2012 -Aenderungen', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597229142, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 516),
('APPLE', 'US', '511', ' ', '511 Forum D 2012 - Die 2. Antwort des Responders - Diagramm', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 634597389, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 517),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 518),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 91, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 519),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'MY', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 520),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'IE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 521),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 522),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 523),
('APPLE', 'US', '502', ' ', '502 - Benjamin - Semi- und Partieforcing', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 665165446, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 524),
('APPLE', 'US', '1501', ' ', '1501 - ACOL (Modern - Strong) - Openings', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 609977130, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 525),
('APPLE', 'US', '505', ' ', '505_FORUM_D_2012_Antworten auf OFuUF-Eröffnungen_Diagramm', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 595397604, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 526),
('APPLE', 'US', '10021', ' ', '10021 - Michaels Cuebid - Zweifärbergegenreizung', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 648968383, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 527),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 99, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 528),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 20, '0.0000', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 529),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 5, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 530),
('APPLE', 'US', 'A5', ' ', 'A5 - Wörterbuch/Dictionary Englisch - Deutsch', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 591656679, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 531),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 15, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 600516751, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 532),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '51.7400', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 609962419, '85.0000', ' ', ' 1', ' ', ' ', ' ', '', 533),
('APPLE', 'US', '201', ' ', '201 - SAYC Deutsch - Eröffnungen', ' ', 'IA1', 1, '6.4800', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 599454067, '10.0000', ' ', ' 1', ' ', ' ', 'Games', '', 534),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 2, '7.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 535),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 536),
('APPLE', 'US', '508', ' ', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', ' ', 'IA1', 9, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 595400646, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 537),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 538),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '23.5200', '2013-01-01', '2013-12-31', 'NOK', 'NO', 'NOK', 571617541, '42.0000', ' ', '  ', ' ', ' ', 'Games', '', 539),
('APPLE', 'US', '502', ' ', '502 - Benjamin - Semi- und Partieforcing', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 665165446, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 540),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 2, '0.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 541),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 542),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 2, '0.0000', '2013-01-01', '2013-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 543),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 4, '0.0000', '2013-01-01', '2013-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 544),
('APPLE', 'US', '701', ' ', '701 - BETTER MINOR - Eröffnungen', ' ', 'IA1', 3, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 599539662, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 545),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 50, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 546),
('APPLE', 'US', 'R5', ' ', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', ' ', 'IA1', 11, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 579760679, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 547),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '7.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 548),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 549),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 11, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 550),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 551),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 8, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 552),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 2, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 553),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 638336452, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 554),
('APPLE', 'US', '1509', ' ', '1509 ACOL - First rebid diagram', ' ', 'IA1', 3, '1.8200', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 651430012, '2.9900', ' ', ' 1', ' ', ' ', ' ', '', 555),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 19, '2.4300', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '3.9900', ' ', '  ', ' ', ' ', ' ', '', 556),
('APPLE', 'US', 'R30', ' ', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS', ' ', 'IA1', 3, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 642124845, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 557),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 4, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 558),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'TWD', 'TW', 'TWD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 559),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 7, '0.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 560),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', -2, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '-5.9900', ' ', '  ', ' ', ' ', ' ', '', 561),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 562),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 622266427, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 563),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 564),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '3.8900', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '6.0000', ' ', '  ', ' ', ' ', 'Games', '', 565),
('APPLE', 'US', '1601', ' ', '1601 - ACOL (Benjamin) - Openings', ' ', 'IA1', 1, '4.2500', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609978553, '6.9900', ' ', ' 1', ' ', ' ', 'Games', '', 566),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '7.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 609964774, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 567),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 609964774, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 568),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 569),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 109, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 570),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 571),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 572),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.4200', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609989812, '0.6900', ' ', ' 1', ' ', ' ', 'Games', '', 573),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '2.4300', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '3.9900', ' ', '  ', ' ', ' ', 'Games', '', 574),
('APPLE', 'US', '10031', ' ', '10031 - Vierte Farbe forcing', ' ', 'IA1', 6, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 737868944, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 575),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 4, '3.8900', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '6.0000', ' ', '  ', ' ', ' ', ' ', '', 576),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 577),
('APPLE', 'US', '205', ' ', '205 - SAYC Deutsch - Eröffnungen und Antwort Diagramm', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 596005233, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 578),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 579),
('APPLE', 'US', 'R31', ' ', 'R31 - FD Basis - Wiedergebot des NT-Eroeffners', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 737869829, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 580),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 581),
('APPLE', 'US', 'RM40', ' ', 'RM40 - FD Basis – Mix', ' ', 'IA1', 1, '2.7300', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 658840347, '4.4900', ' ', ' 1', ' ', ' ', 'Games', '', 582),
('APPLE', 'US', 'R9', ' ', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM', ' ', 'IA1', 6, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 579918595, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 583),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 584),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 147, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 585),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '23.5200', '2013-01-01', '2013-12-31', 'NOK', 'NO', 'NOK', 571617541, '42.0000', ' ', '  ', ' ', ' ', ' ', '', 586),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 587),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 588),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 589),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 11, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 625730356, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 590),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 10, '4.2000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '5.9900', ' ', '  ', ' ', ' ', ' ', '', 591),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 592),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 50, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 593),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 20, '0.0000', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 594),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 3, '0.0000', '2013-01-01', '2013-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 595),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7', 5, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 596),
('APPLE', 'US', '305', ' ', '305 - SAYC - Engl - First Answer to Minor-/Major-Openings  - Bidding', ' ', 'IA1', 1, '51.7400', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 609957825, '85.0000', ' ', ' 1', ' ', ' ', ' ', '', 597),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 598),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 4, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 599),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 600),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 601),
('APPLE', 'US', '510', ' ', '510 Forum D 2012 - Die 2. Antwort des Responders', ' ', 'IA1', 7, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 634596426, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 602),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 603),
('APPLE', 'US', '506', ' ', '506 - Forum D 2012 - NT - Eröffnungen', ' ', 'IA1', 7, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597967572, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 604),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 605),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 237, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 606),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 607),
('APPLE', 'US', '1409', ' ', '1409 - ACOL (incl. weak twos) - First rebid - Bidding', ' ', 'IA1', 1, '4.5600', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609981679, '7.4900', ' ', ' 1', ' ', ' ', ' ', '', 608),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 609),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 610),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 611),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 612),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 4, '0.0000', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 613),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 2, '7.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 614),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 155, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 615),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 616),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 617),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 618),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 4, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 619),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 3, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 625730356, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 620),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 219, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 621),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 622),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', 'CR-RW', '  ', ' ', ' ', ' ', '', 623),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 8, '4.1300', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '6.4900', ' ', '  ', ' ', ' ', ' ', '', 624),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 625),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 31, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 626),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '7.7000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', ' ', '', 627),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 628),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 1, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'NI', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', ' ', '', 629),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2013-01-01', '2013-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 630),
('APPLE', 'US', '530', ' ', '530 - Weiterreizung nach 1 NT-Eröffnung', ' ', 'IA1', 3, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 642124346, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 631),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 2, '7.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 632),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 633),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 634),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 635),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 636),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 637),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 5, '0.0000', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 638),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 600516751, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 639),
('APPLE', 'US', 'R6', ' ', 'R6 - NT-Eröffnungen Forum D BASIS', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 598619562, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 640),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '5.8000', '2013-01-01', '2013-12-31', 'NZD', 'NZ', 'NZD', 571617541, '8.2900', ' ', '  ', ' ', ' ', ' ', '', 641),
('APPLE', 'US', '2108', ' ', '2108 ACOL (starke 2er) - Erstes Rebid - Hand - Deutsch', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 635255201, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 642),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 1, '5.4700', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 579760995, '8.9900', ' ', ' 1', ' ', ' ', ' ', '', 643),
('APPLE', 'US', '510', ' ', '510 Forum D 2012 - Die 2. Antwort des Responders', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 634596426, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 644),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 4, '0.0000', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 645),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 15, '0.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 646),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 651439061, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 647),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 2, '1.8200', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 651439061, '2.9900', ' ', ' 1', ' ', ' ', ' ', '', 648),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2013-01-01', '2013-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 649),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 14, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 650),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '245.0000', '2013-01-01', '2013-12-31', 'INR', 'IN', 'INR', 571617541, '350.0000', ' ', '  ', ' ', ' ', ' ', '', 651),
('APPLE', 'US', 'R11', ' ', 'R11 - FD Basis – Zweites Gebot des Antwortenden - Diagramm', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 656138082, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 652),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 2, '0.0000', '2013-01-01', '2013-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 653),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 4, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 654),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '4.2500', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609964774, '6.9900', ' ', ' 1', ' ', ' ', ' ', '', 655),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 2, '0.7000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', ' ', '', 656),
('APPLE', 'US', 'R7', ' ', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 598631975, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 657),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 658),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'PK', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', ' ', '', 659),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 660),
('APPLE', 'US', '10049', ' ', '10049 - Antworten auf Informationskontra', ' ', 'IA1', 7, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 641292776, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 661),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 4, '0.0000', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 662),
('APPLE', 'US', '507', ' ', '507 - Forum D 2012_NT_Eröffnungen und Antworten', ' ', 'IA1', 6, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597235928, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 663),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 664),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7', 113, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 665),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 666),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 3, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 667),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 9, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', 'Games', '', 668),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 669),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '1', 2, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', 'Games', '', 670),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 671),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'LU', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 672),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '1', 1, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 673),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 674),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '4.2600', '2013-01-01', '2013-12-31', 'SEK', 'SE', 'SEK', 609989812, '7.0000', ' ', ' 1', ' ', ' ', ' ', '', 675),
('APPLE', 'US', '2104', ' ', '2104 Acol (2er EÖ stark) - Antworten auf Farberöffnungen - Deutsch', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 635830978, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 676),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '2.5800', '2013-01-01', '2013-12-31', 'AED', 'AE', 'AED', 609989812, '3.6900', ' ', ' 1', ' ', ' ', 'Games', '', 677),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 18, '0.0000', '2013-01-01', '2013-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 678),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'HU', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', 'Games', '', 679),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 2, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 680),
('APPLE', 'US', 'R4', ' ', 'R4 - Reizung – Eröffnung und Antwort - Hand', ' ', 'IA1', 9, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 579963138, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 681),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 609971136, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 682),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 683),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '7.0000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 609964774, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 684),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '1', 1, '4.2000', '2013-01-01', '2013-12-31', 'USD', 'US', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', 'Games', '', 685),
('APPLE', 'US', '20001', ' ', '20001 - Ausspiele für Anfaenger', ' ', 'IA1', 3, '3.6500', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 677269493, '5.9900', ' ', ' 1', ' ', ' ', ' ', '', 686),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 573563664, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 687),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 13, '0.0000', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 688),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 1, '4.5600', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609971136, '7.4900', ' ', ' 1', ' ', ' ', ' ', '', 689),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 638336452, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 690),
('APPLE', 'US', '2008', ' ', '2008 ACOL (schwache 2er) - Erstes Rebid - Hand - Deutsch', ' ', 'IA1', 2, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 635314597, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 691),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 692),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 693),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 694),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 2, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'ES', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 695),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 2, '0.0000', '2013-01-01', '2013-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 696),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2013-01-01', '2013-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 697),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 698),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 1, '3.8900', '2013-01-01', '2013-12-31', 'CHF', 'CH', 'CHF', 571617541, '6.0000', ' ', '  ', ' ', ' ', ' ', '', 699),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'HU', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 700),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 18, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597493743, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 701),
('APPLE', 'US', '1609', ' ', '1609 ACOL Benji – Opening_response_rebid diagramm', ' ', 'IA1', 1, '1.8200', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 651429309, '2.9900', ' ', ' 1', ' ', ' ', ' ', '', 702);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 703),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 704),
('APPLE', 'US', '10021', ' ', '10021 - Michaels Cuebid - Zweifärbergegenreizung', ' ', 'IA1', 5, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 648968383, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 705),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 11, '0.0000', '2013-01-01', '2013-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 706),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '7', 20, '0.0000', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 707),
('APPLE', 'US', '1504', ' ', '1504 ACOL - Opening and response', ' ', 'IA1', 2, '4.5600', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 649385517, '7.4900', ' ', ' 1', ' ', ' ', ' ', '', 708),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 709),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 3, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 710),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 82, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 711),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '1', 1, '55.3000', '2013-01-01', '2013-12-31', 'MXN', 'MX', 'MXN', 571617541, '79.0000', ' ', '  ', ' ', ' ', ' ', '', 712),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 713),
('APPLE', 'US', '508', ' ', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 595400646, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 714),
('APPLE', 'US', '501', ' ', '501 - FORUM D 2012 -Aenderungen', ' ', 'IA1', 4, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 597229142, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 715),
('APPLE', 'US', '1409', ' ', '1409 - ACOL (incl. weak twos) - First rebid - Bidding', ' ', 'IA1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'PT', 'EUR', 609981679, '0.0000', 'FREE', ' 1', ' ', ' ', ' ', '', 716),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 31, '0.0000', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 717),
('APPLE', 'US', '509', ' ', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', ' ', 'IA1', 7, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 595410023, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 718),
('APPLE', 'US', '1501', ' ', '1501 - ACOL (Modern - Strong) - Openings', ' ', 'IA1', 3, '4.2500', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609977130, '6.9900', ' ', ' 1', ' ', ' ', ' ', '', 719),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', -1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 600516751, '-9.9900', ' ', ' 1', ' ', ' ', ' ', '', 720),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.2', '1', 1, '0.0000', '2013-01-01', '2013-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 721),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.1', '7', 1, '0.0000', '2013-01-01', '2013-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', ' ', '', 722),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 4, '0.4200', '2013-01-01', '2013-12-31', 'GBP', 'GB', 'GBP', 609989812, '0.6900', ' ', ' 1', ' ', ' ', ' ', '', 723),
('APPLE', 'US', '708', ' ', '708 - BETTER MINOR  - Eröffnung-Antwort und erstes Rebid', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 599769887, '9.9900', ' ', ' 1', ' ', ' ', ' ', '', 724),
('APPLE', 'US', '520', ' ', '520 - Help Suit Trial Bid', ' ', 'IA1', 1, '6.0800', '2013-01-01', '2013-12-31', 'EUR', 'DE', 'EUR', 755463889, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 725),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 3, '3.3400', '2013-01-01', '2013-12-31', 'EUR', 'AT', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', ' ', '', 726),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', ' ', '1', 3, '3.3400', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', 'GP', '  ', ' ', ' ', '', '', 727),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 2, '6.0800', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 573563664, '9.9900', ' ', ' 1', ' ', ' ', '', '', 728),
('APPLE', 'US', 'R8', ' ', 'R8 - Eröffnung-Antwort und erstes Rebid', ' ', 'IA1', 2, '6.0800', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 579762302, '9.9900', ' ', ' 1', ' ', ' ', '', '', 729),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 2, '0.0000', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', 'GR', '  ', ' ', ' ', '', '', 730),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 5, '3.8900', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 571617541, '6.0000', ' ', '  ', ' ', ' ', '', '', 731),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 1, '6.4800', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 579760995, '10.0000', ' ', ' 1', ' ', ' ', '', '', 732),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 2, '3.3400', '2012-01-01', '2012-12-31', 'EUR', 'AT', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', '', '', 733),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 1, '7.1300', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 573563664, '11.0000', ' ', ' 1', ' ', ' ', '', '', 734),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 3, '5.4700', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 579760995, '8.9900', ' ', ' 1', ' ', ' ', '', '', 735),
('APPLE', 'US', 'R5', ' ', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', ' ', 'IA1', 1, '7.1300', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 579760679, '11.0000', ' ', ' 1', ' ', ' ', '', '', 736),
('APPLE', 'US', 'R4', ' ', 'R4 - Reizung – Eröffnung und Antwort - Hand', ' ', 'IA1', 7, '6.0800', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 579963138, '9.9900', ' ', ' 1', ' ', ' ', '', '', 737),
('APPLE', 'US', 'R8', ' ', 'R8 - Eröffnung-Antwort und erstes Rebid', ' ', 'IA1', 1, '7.1300', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 579762302, '11.0000', ' ', ' 1', ' ', ' ', '', '', 738),
('APPLE', 'US', 'R9', ' ', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM', ' ', 'IA1', 1, '7.1300', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 579918595, '11.0000', ' ', ' 1', ' ', ' ', '', '', 739),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 41, '3.3400', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', '', '', 740),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '1.0', '1', 2, '0.0000', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', 'CR-RW', '  ', ' ', ' ', '', '', 741),
('APPLE', 'US', 'R5', ' ', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', ' ', 'IA1', 2, '6.0800', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 579760679, '9.9900', ' ', ' 1', ' ', ' ', '', '', 742),
('APPLE', 'US', 'R4', ' ', 'R4 - Reizung – Eröffnung und Antwort - Hand', ' ', 'IA1', 1, '7.1300', '2012-01-01', '2012-12-31', 'CHF', 'CH', 'CHF', 579963138, '11.0000', ' ', ' 1', ' ', ' ', '', '', 743),
('APPLE', 'US', 'R9', ' ', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM', ' ', 'IA1', 2, '6.0800', '2012-01-01', '2012-12-31', 'EUR', 'DE', 'EUR', 579918595, '9.9900', ' ', ' 1', ' ', ' ', '', '', 744),
('APPLE', 'US', '10099', ' ', '10099 - Responding to a takeout double', ' ', 'IA1', 2, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296320, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 2997),
('APPLE', 'US', '513MAX', ' ', '513MAX - Info-X und Antworten auf Info-X - FD 2012', ' ', 'IA1', 3, '8.5200', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 869390310, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 2998),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 2999),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'ZW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3000),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3001),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 12, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3002),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3003),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', -1, '70.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 836734714, '-99.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3004),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3005),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3006),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 155, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3007),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 9, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3008),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3009),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 21, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3010),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 37, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3011),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 25, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3012),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 16, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3013),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 7, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3014),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'ZW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3015),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MU', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3016),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 48, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3017),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3018),
('APPLE', 'US', '20015', ' ', '20015 - Spieltechnik - Farbbehandlung', ' ', 'IA1', 1, '7.3000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 886167480, '11.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3019),
('APPLE', 'US', '1409', ' ', '1409 - ACOL (incl. weak twos) - First rebid - Bidding', ' ', 'IA1', 1, '8.9000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609981679, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3020),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296064, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3021),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 14, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3022),
('APPLE', 'US', '20051', ' ', '20051 - Alleinspiel Spielplan II - W. Gromoeller', ' ', 'IA1', 1, '7.9100', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 885010271, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3023),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 7, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3024),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 23, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3025),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 2, '7.1300', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 600516751, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 3026),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 8, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3027),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3028),
('APPLE', 'US', '1404', ' ', '1404 - ACOL (incl. weak twos) - First Respond', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609967982, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3029),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3030),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3031),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3032),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 17, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3033),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 9, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3034),
('APPLE', 'US', '505', ' ', '505_FORUM_D_2012_Antworten auf OFuUF-Eröffnungen_Diagramm', ' ', 'IA1', 7, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 595397604, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3035),
('APPLE', 'US', 'R30', ' ', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 642124845, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3036),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3037),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3038),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 40, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3039),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3040),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3041),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'EE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3042),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3043),
('APPLE', 'US', '1501', ' ', '1501 - ACOL (Modern - Strong) - Openings', ' ', 'IA1', 1, '5.4700', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 609977130, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3044),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3045),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3046),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3047),
('APPLE', 'US', '10099', ' ', '10099 - Responding to a takeout double', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296320, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3048),
('APPLE', 'US', '520', ' ', '520 - Help Suit Trial Bid', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 755463889, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3049),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3050),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3051),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 122, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3052),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3053),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3054),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3055),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3056),
('APPLE', 'US', '313', ' ', '313 Takeout Double', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296071, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3057),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 35, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3058),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3059),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 41, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3060),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3061),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3062),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3063),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', -1, '5.4700', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 579760995, '-8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3064),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3065),
('APPLE', 'US', '1609', ' ', '1609 ACOL Benji -First rebid diagram', ' ', 'IA1', 1, '7.3400', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 651429309, '10.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3066),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3067),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 30, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3068),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3069),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 8, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3070),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'DM', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3071),
('APPLE', 'US', '1509', ' ', '1509 ACOL - First rebid diagram', ' ', 'IA1', 4, '1.8200', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 651430012, '2.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3072),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '0.5400', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 836734714, '0.8900', ' ', ' 1', ' ', ' ', 'Games', '', 3073),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 17, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3074),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 24, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3075),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3076),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3077),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'OM', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3078),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', 11, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 622266427, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3079),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 23, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3080),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3081),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', -2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 638336452, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3082),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', -1, '7.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 609955394, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3083),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3084),
('APPLE', 'US', 'R11', ' ', 'R11 - FD Basis – Zweites Gebot des Antwortenden - Diagramm', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 656138082, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3085),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3086),
('APPLE', 'US', '340', ' ', '340 - Inverted Minors', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 945335909, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3087),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3088),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3089),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3090),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3091),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 298, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3092),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3093),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 7, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3094),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3095),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 13, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3096),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3097),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296064, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3098),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3099),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3100),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 194, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3101),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 195, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3102),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3103),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3104),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3105),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3106),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3107),
('APPLE', 'US', '10071', ' ', '10071 - Michaels Cuebid', ' ', 'IA1', 1, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 942296169, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3108),
('APPLE', 'US', '440', ' ', '440 Inverted Minors I', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 847803836, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3109),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3110),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3111),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 14, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3112),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3113),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 49, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3114),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 185, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3115),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 122, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3116),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3117),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 13, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3118),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3119),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3120),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3121),
('APPLE', 'US', '506', ' ', '506 - Forum D 2012 - NT - Eröffnungen', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 597967572, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3122),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3123),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3124),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3125),
('APPLE', 'US', 'FP6', ' ', 'FP6 - NT-Eröffnungen', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 925091152, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3126),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3127),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3128),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 5, '11.2000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 836739558, '15.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3129),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 651439061, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3130),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3131),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3132),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3133),
('APPLE', 'US', '20001', ' ', '20001 - Ausspiele für Anfaenger', ' ', 'IA1', 10, '5.4700', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 677269493, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3134),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3135),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 49, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3136),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 85, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3137),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3138),
('APPLE', 'US', '542', ' ', '542 - Gegenreizung auf Weak Twos', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 923869104, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3139),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 8, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3140),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 11, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3141),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 12, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3142),
('APPLE', 'US', '10070', ' ', '10070 - Kontras Allgemein', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 901120264, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3143),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 639, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3144),
('APPLE', 'US', '705', ' ', '705 - BETTER MINOR-Reizung – EÖ und Antwort', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 599960673, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3145),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 14, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3146),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MU', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3147),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3148),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 37, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3149),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 19, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3150),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3151),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 597493743, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3152),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 9, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3153),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 129, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3154),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3155),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'QA', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3156),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 5, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3157),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 145, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3158),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3159),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3160),
('APPLE', 'US', '1101', ' ', '1101 2over1 - Eroeffnungen', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 837796489, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3161),
('APPLE', 'US', '518', ' ', '518 Zweite Ansage des Antwortenden nach 1NT-Eröffnung', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 864114719, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3162),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3163),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3164),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 8, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3165),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3166),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3167),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'AL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3168),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3169),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3170),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3171),
('APPLE', 'US', '1608', ' ', '1608 ACOL Benji – Opening_response_rebid', ' ', 'IA1', 1, '3.5000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 651428166, '4.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3172),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3173),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.5400', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 609989812, '0.8900', ' ', ' 1', ' ', ' ', 'Games', '', 3174),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 7, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3175),
('APPLE', 'US', '314', ' ', '314 - Response after interference', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296079, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3176),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 28, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 597493743, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3177),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 32, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3178),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3179),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 218, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3180),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3181),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 18, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3182),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 12, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3183),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 17, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3184),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3185),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3186),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 30, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3187),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3188),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 16, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3189),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 26, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3190),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 14, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3191),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3192),
('APPLE', 'US', '510', ' ', '510 Forum D 2012 - Die 2. Antwort des Responders', ' ', 'IA1', 7, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 634596426, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3193),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 244, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3194),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3195),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3196),
('APPLE', 'US', '1409', ' ', '1409 - ACOL (incl. weak twos) - First rebid - Bidding', ' ', 'IA1', 2, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609981679, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3197),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 77, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3198),
('APPLE', 'US', '20050', ' ', '20050 - Alleinspiel Spielplan I - W. Gromoeller', ' ', 'IA1', 4, '7.9100', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 885010339, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3199),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.6300', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3200),
('APPLE', 'US', 'FP10', ' ', 'FP10 - Forum Piekarek -– Zweites Gebot des Antwortenden', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 927600804, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3201),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3202),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 6, '54.7800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 836734714, '89.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3203),
('APPLE', 'US', '309', ' ', '309 - SAYC - Engl - First rebid by opener - bidding', ' ', 'IA1', 5, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609965674, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3204),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3205),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 609971136, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3206),
('APPLE', 'US', '315', ' ', '315 - openers rebid after the opponents first level overcall', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 950956813, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3207),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3208),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3209),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 12, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3210),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 27, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3211),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3212),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 14, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 625730356, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3213);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3214),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3215),
('APPLE', 'US', '430', ' ', '430 Forum D PLUS - Weiterreizung nach NT - M. Gromoeller', ' ', 'IA1', -1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 634598711, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3216),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3217),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3218),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3219),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3220),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'VE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3221),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3222),
('APPLE', 'US', '530', ' ', '530 - Weiterreizung nach 1 NT-Eröffnung', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 642124346, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3223),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3224),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 28, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3225),
('APPLE', 'US', '10099', ' ', '10099 - Responding to a takeout double', ' ', 'IA1', 4, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 942296320, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3226),
('APPLE', 'US', '314', ' ', '314 - Response after interference', ' ', 'IA1', 3, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 942296079, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3227),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3228),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 247, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3229),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '8.9000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609962419, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3230),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3231),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3232),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3233),
('APPLE', 'US', '20050', ' ', '20050 - Alleinspiel Spielplan I - W. Gromoeller', ' ', 'IA1', -1, '7.9100', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 885010339, '-12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3234),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 13, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3235),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3236),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3237),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3238),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3239),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3240),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3241),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3242),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3243),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3244),
('APPLE', 'US', '340', ' ', '340 - Inverted Minors', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 945335909, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3245),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3246),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 15, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3247),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3248),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3249),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 38, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3250),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3251),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3252),
('APPLE', 'US', '501', ' ', '501 - FORUM D 2012 -Aenderungen', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 597229142, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3253),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3254),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'UA', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3255),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 6, '0.5400', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 609989812, '0.8900', ' ', ' 1', ' ', ' ', 'Games', '', 3256),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3257),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3258),
('APPLE', 'US', '514MAX', ' ', '514MAX - Antwort nach Zwischenreizung und Rebid', ' ', 'IA1', 3, '8.5200', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 869386467, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3259),
('APPLE', 'US', '10071', ' ', '10071 - Michaels Cuebid', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296169, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3260),
('APPLE', 'US', '1204', ' ', '1204 2over1 -– Opening bids and responses', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 945343089, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3261),
('APPLE', 'US', '342', ' ', '342 - Overcalls after a Weak Two', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 950956859, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3262),
('APPLE', 'US', '20021', ' ', '20021 - Beherrsche die Farben 2 - R. Rohowsky', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 909414069, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3263),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 1, '2.7300', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 651439061, '4.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3264),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3265),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3266),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 16, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3267),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3268),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3269),
('APPLE', 'US', '1409', ' ', '1409 - ACOL (incl. weak twos) - First rebid - Bidding', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609981679, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3270),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3271),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3272),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 18, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3273),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 1, '8.9000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609959316, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3274),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3275),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3276),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 34, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3277),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3278),
('APPLE', 'US', '326', ' ', '326 - 4th suit forcing', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951369680, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3279),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 117, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3280),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 235, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3281),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 5, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3282),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 29, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3283),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', 3, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 945343112, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3284),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3285),
('APPLE', 'US', '313', ' ', '313 Takeout Double', ' ', 'IA1', 3, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 942296071, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3286),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3287),
('APPLE', 'US', '1404', ' ', '1404 - ACOL (incl. weak twos) - First Respond', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 609967982, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3288),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 24, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3289),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '3.3400', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '5.4900', ' ', '  ', ' ', ' ', 'Games', '', 3290),
('APPLE', 'US', '531', ' ', '531 - FD 2012 – Zweites Gebot des NT-Eröffners', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 755463895, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3291),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 42, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3292),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3293),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 11, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3294),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 94, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3295),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3296),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 60, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3297),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 34, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3298),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 25, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3299),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 23, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3300),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 4, '1.8200', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 651439061, '2.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3301),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3302),
('APPLE', 'US', '430', ' ', '430 Forum D PLUS - Weiterreizung nach NT - M. Gromoeller', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 634598711, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3303),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3304),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3305),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3306),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3307),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3308),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 17, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3309),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3310),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3311),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 204, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3312),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3313),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 25, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3314),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3315),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 186, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3316),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3317),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3318),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3319),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3320),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 139, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3321),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 9, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3322),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 219, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3323),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', -2, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 945343112, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3324),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 546, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3325),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 17, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3326),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3327),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 5, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3328),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 38, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3329),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3330),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3331),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 14, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 646480241, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3332),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3333),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3334),
('APPLE', 'US', '313', ' ', '313 Takeout Double', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 942296071, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3335),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3336),
('APPLE', 'US', '508', ' ', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', ' ', 'IA1', 14, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 595400646, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3337),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'JO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3338),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 21, '0.4200', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609989812, '0.6900', ' ', ' 1', ' ', ' ', 'Games', '', 3339),
('APPLE', 'US', '305', ' ', '305 - SAYC - Engl - First Answer to Minor-/Major-Openings  - Bidding', ' ', 'IA1', 3, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609957825, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3340),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3341),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 640, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3342),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 46, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3343),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '9.7900', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 609964774, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3344),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 2, '39.5600', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 836739559, '64.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 3345),
('APPLE', 'US', '342', ' ', '342 - Overcalls after a Weak Two', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 950956859, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3346),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3347),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 23, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3348),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3349),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3350),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'VE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3351),
('APPLE', 'US', '10051', ' ', '10051 - RKCB (3041) - Engl.', ' ', 'IA1', 1, '7.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 634597397, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3352),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3353),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 9, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3354),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 174, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3355),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 9, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3356),
('APPLE', 'US', '513APTZ', ' ', '513APTZ - Info-X und Antworten auf Info-X - FD 2012', ' ', 'IA1', 2, '2.1900', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 869390956, '3.5900', ' ', ' 1', ' ', ' ', 'Games', '', 3357),
('APPLE', 'US', '10031', ' ', '10031 - Vierte Farbe forcing', ' ', 'IA1', 19, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 737868944, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3358),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3359),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 28, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3360),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3361),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'ZW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3362),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MU', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3363),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3364),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3365),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 18, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3366),
('APPLE', 'US', '10071', ' ', '10071 - Michaels Cuebid', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296169, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3367),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 17, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3368),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 16, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3369),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3370),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '64.8100', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 836734714, '100.0000', ' ', ' 1', ' ', ' ', 'Games', '', 3371),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 511, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3372),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3373),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 11, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3374),
('APPLE', 'US', '10051', ' ', '10051 - RKCB (3041) - Engl.', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 634597397, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3375),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'DO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3376),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3377),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3378),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3379),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3380),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3381),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3382),
('APPLE', 'US', '1404', ' ', '1404 - ACOL (incl. weak twos) - First Respond', ' ', 'IA1', 4, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609967982, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3383),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3384),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3385),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 8, '8.8200', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 836739558, '14.4900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3386),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'MT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3387),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3388),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.8200', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609989812, '1.2900', ' ', ' 1', ' ', ' ', 'Games', '', 3389),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3390),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 4, '70.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 836734714, '99.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3391),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 247, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3392),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 14, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3393),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3394),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3395),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 9, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3396),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3397),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 5, '11.2000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 836739558, '15.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 3398),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', -1, '7.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609955394, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3399),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3400),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 3, '7.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3401),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3402),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 1, '7.1300', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 625730356, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 3403),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 138, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3404),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3405),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3406),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3407),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3408),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 1, '7.1300', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 597493743, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 3409),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 5, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3410),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3411),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3412),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 2, '7.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 609964774, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3413),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3414),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 7, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3415),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 852, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3416),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3417),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3418),
('APPLE', 'US', '1504', ' ', '1504 ACOL - Opening and response', ' ', 'IA1', 4, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 649385517, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3419),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3420),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3421),
('APPLE', 'US', '1201', ' ', '1201 - 2 over 1 – Opening Bids', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951294714, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3422),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 71, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3423),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 16, '8.8200', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 836739558, '14.4900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 3424),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3425),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.7000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3426),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 21, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3427),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 107, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3428),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 15, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3429),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3430),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 527, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3431),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3432),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 26, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3433),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 40, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3434),
('APPLE', 'US', '313', ' ', '313 Takeout Double', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296071, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3435),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3436),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', -2, '70.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 836734714, '-99.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3437),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '4.1300', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '6.4900', ' ', '  ', ' ', ' ', 'Games', '', 3438),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 8, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3439),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 1, '9.7900', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 609971136, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3440),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 969, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3441),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3442),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'TWD', 'TW', 'TWD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3443),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'MT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3444),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3445),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3446),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3447),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 6, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3448),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 433, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3449),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3450),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3451),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3452),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3453),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3454),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '30.4300', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 836739559, '49.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 3455),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3456),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 8, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3457),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3458),
('APPLE', 'US', 'A5', ' ', 'A5 - Wörterbuch/Dictionary Englisch - Deutsch', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 591656679, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3459),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3460),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3461),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3462),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', -1, '11.2000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 836739558, '-15.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3463),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3464),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3465),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3466),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 31, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3467),
('APPLE', 'US', '4001', ' ', '4001_NLAcol openingen', ' ', 'IA1', 2, '4.8600', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 864070008, '7.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3468),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3469),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 9, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3470),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3471),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3472),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3473);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3474),
('APPLE', 'US', 'R10', ' ', 'R10 - FD Basis – Zweites Gebot des Antwortenden', ' ', 'IA1', 4, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 656136834, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3475),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 25, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3476),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3477),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', 2, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 945343112, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3478),
('APPLE', 'US', '360', ' ', '360 - Jacoby 2NT', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951294720, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3479),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 4, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609971136, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3480),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 75, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3481),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 659, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3482),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3483),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3484),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3485),
('APPLE', 'US', '10051', ' ', '10051 - RKCB (3041) - Engl.', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 634597397, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3486),
('APPLE', 'US', '1405', ' ', '1405 - ACOL (incl. weak twos) - First Respond - Bidding', ' ', 'IA1', 3, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609969617, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3487),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 92, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3488),
('APPLE', 'US', '1504', ' ', '1504 ACOL - Opening and response', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 649385517, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3489),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3490),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3491),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 13, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3492),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3493),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3494),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3495),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 11, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3496),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MU', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3497),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3498),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 23, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3499),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3500),
('APPLE', 'US', '1505', ' ', '1505 ACOL - Opening and response dia', ' ', 'IA1', 3, '1.8200', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 651673428, '2.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3501),
('APPLE', 'US', 'R4', ' ', 'R4 - Reizung – Eröffnung und Antwort - Hand', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 579963138, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3502),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3503),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3504),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3505),
('APPLE', 'US', '336', ' ', '336 - Weak Jumps after partner\'s opening', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951508487, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3506),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7F', 15, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3507),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3508),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '8.2700', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609964774, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3509),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3510),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 40, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3511),
('APPLE', 'US', '1201', ' ', '1201 - 2 over 1 – Opening Bids', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951294714, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3512),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3513),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3514),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3515),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 26, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3516),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3517),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3518),
('APPLE', 'US', '542', ' ', '542 - Gegenreizung auf Weak Twos', ' ', 'IA1', -1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 923869104, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3519),
('APPLE', 'US', '326', ' ', '326 - 4th suit forcing', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951369680, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3520),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3521),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3522),
('APPLE', 'US', '20001', ' ', '20001 - Ausspiele für Anfaenger', ' ', 'IA1', 3, '3.6500', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 677269493, '5.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3523),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'UY', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3524),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3525),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KY', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3526),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 19, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3527),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 371, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3528),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 2, '0.5400', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 609989812, '0.8900', ' ', ' 1', ' ', ' ', 'Games', '', 3529),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3530),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3531),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'ZW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3532),
('APPLE', 'US', 'R18', ' ', 'R18 FD Basis – 2. Ansage des Antwortenden nach 1NT', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 868945273, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3533),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3534),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 28, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3535),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 15, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3536),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3537),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3538),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 7, '4.2500', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609964774, '6.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3539),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 15, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3540),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 36, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3541),
('APPLE', 'US', 'R31', ' ', 'R31 - FD Basis - Wiedergebot des NT-Eroeffners', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 737869829, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3542),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 193, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3543),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3544),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3545),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 9, '0.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3546),
('APPLE', 'US', '1501', ' ', '1501 - ACOL (Modern - Strong) - Openings', ' ', 'IA1', 3, '4.2500', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609977130, '6.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3547),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 77, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3548),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3549),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KZ', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3550),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 7, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3551),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', -1, '0.4200', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 609989812, '-0.6900', ' ', ' 1', ' ', ' ', 'Games', '', 3552),
('APPLE', 'US', '1204', ' ', '1204 2over1 -– Opening bids and responses', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 945343089, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3553),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 26, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3554),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 25, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 600516751, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3555),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 11, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3556),
('APPLE', 'US', '2008', ' ', '2008 ACOL (schwache 2er) - Erstes Rebid - Hand - Deutsch', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 635314597, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3557),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 69, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3558),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 136, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3559),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 13, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3560),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3561),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3562),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 23, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3563),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 9, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3564),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 2, '8.2700', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 609955394, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3565),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3566),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3567),
('APPLE', 'US', '515', ' ', '515 - Rebid des Eroeffners nach Gegenreizung', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 851673019, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3568),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 13, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3569),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3570),
('APPLE', 'US', '514', ' ', '514 - Antwort nach Gegenreizung', ' ', 'IA1', 8, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 786440046, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3571),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 31, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3572),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 53, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3573),
('APPLE', 'US', '314', ' ', '314 - Response after interference', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 942296079, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3574),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 14, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3575),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3576),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 638336452, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3577),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 26, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3578),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3579),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3580),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3581),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 3, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 573563664, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3582),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3583),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3584),
('APPLE', 'US', '507', ' ', '507 - Forum D 2012_NT_Eröffnungen und Antworten', ' ', 'IA1', 7, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 597235928, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3585),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 65, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3586),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '7.0000', '2014-01-01', '2014-12-31', 'USD', 'CL', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3587),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'EE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3588),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 35, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3589),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3590),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '2.4300', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '3.9900', ' ', '  ', ' ', ' ', 'Games', '', 3591),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 8, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3592),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'TWD', 'TW', 'TWD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3593),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MU', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3594),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 14, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3595),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 109, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3596),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3597),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3598),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3599),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3600),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 609971136, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3601),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3602),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'CO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3603),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3604),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 13, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3605),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3606),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 114, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3607),
('APPLE', 'US', '205', ' ', '205 - SAYC Deutsch - Eröffnungen und Antwort Diagramm', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 596005233, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3608),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3609),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 32, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3610),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 31, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3611),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 40, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3612),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3613),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 7, '7.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3614),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3615),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3616),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3617),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3618),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 197, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3619),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 6, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3620),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3621),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3622),
('APPLE', 'US', '541', ' ', '541 - Negativkontra nach Gegenreizung auf der 1erStufe', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 909747039, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3623),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 691, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3624),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3625),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3626),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 128, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3627),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '122.8000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 836739558, '199.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3628),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3629),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3630),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 615, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3631),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3632),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 11, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3633),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 15, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3634),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 25, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3635),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 24, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3636),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3637),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3638),
('APPLE', 'US', '336', ' ', '336 - Weak Jumps after partner\'s opening', ' ', 'IA1', 1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951508487, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3639),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 3, '0.7000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3640),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 489, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3641),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 12, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3642),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3643),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '122.8000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 836739558, '199.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 3644),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '4.2000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '5.9900', ' ', '  ', ' ', ' ', 'Games', '', 3645),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3646),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3647),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3648),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 24, '0.0000', '2014-01-01', '2014-12-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3649),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '119.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 836734714, '169.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3650),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3651),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 12, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3652),
('APPLE', 'US', 'R15', ' ', 'R15 - Wiedergebot des Eroefffners nach Gegenreizung', ' ', 'IA1', 1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 852298120, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3653),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 12, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3654),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '7F', 90, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3655),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3656),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3657),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 2, '7.7000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3658),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', -1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 622266427, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3659),
('APPLE', 'US', '10031', ' ', '10031 - Vierte Farbe forcing', ' ', 'IA1', -1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 737868944, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3660),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 10, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3661),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3662),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'DO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3663),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 600516751, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3664),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3665),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3666),
('APPLE', 'US', '10049', ' ', '10049 - Antworten auf Informationskontra', ' ', 'IA1', 16, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 641292776, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3667),
('APPLE', 'US', '360', ' ', '360 - Jacoby 2NT', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 951294720, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3668),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3669),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3670),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3671),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 211, '0.0000', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3672),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 20, '0.0000', '2014-01-01', '2014-12-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3673),
('APPLE', 'US', '315', ' ', '315 - openers rebid after the opponents first level overcall', ' ', 'IA1', -1, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 950956813, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3674),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3675),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '8.8200', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 836739558, '14.4900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 3676),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3677),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3678),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3679),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 5, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3680),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3681),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 136, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3682),
('APPLE', 'US', '1501', ' ', '1501 - ACOL (Modern - Strong) - Openings', ' ', 'IA1', 4, '7.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609977130, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3683),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3684),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3685),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3686),
('APPLE', 'US', '10051', ' ', '10051 - RKCB (3041) - Engl.', ' ', 'IA1', 1, '4.2500', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 634597397, '6.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3687),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 13, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3688),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3689),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 26, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3690),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 4, '5.4700', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 579760995, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3691),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3692),
('APPLE', 'US', 'R14', ' ', 'R14 - Antwort nach Gegenreizung', ' ', 'IA1', 5, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 786440169, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3693),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3694),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 12, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3695),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 9, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3696),
('APPLE', 'US', '1204', ' ', '1204 2over1 -– Opening bids and responses', ' ', 'IA1', 1, '79.8200', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 945343089, '129.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3697),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 64, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3698),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3699),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 5, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3700),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 4, '4.5600', '2014-01-01', '2014-12-31', 'GBP', 'GB', 'GBP', 942296064, '7.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3701),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 4, '0.0000', '2014-01-01', '2014-12-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3702),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 3, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609971136, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3703),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 2, '70.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 836734714, '99.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3704),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '8.8200', '2014-01-01', '2014-12-31', 'EUR', 'AT', 'EUR', 836739558, '14.4900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3705),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '12.7200', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3706),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 25, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3707),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3708),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 163, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3709),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 581, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3710),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3711),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3712),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3713),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3714),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 21, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3715),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 32, '0.0000', '2014-01-01', '2014-12-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3716),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 3, '7.0000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609964774, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3717),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 20, '0.0000', '2014-01-01', '2014-12-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3718),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3719),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 55, '0.0000', '2014-01-01', '2014-12-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3720),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '1F', 10, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3721),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 4, '7.7000', '2014-01-01', '2014-12-31', 'USD', 'US', 'USD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3722),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3723),
('APPLE', 'US', '10021', ' ', '10021 - Michaels Cuebid - Zweifärbergegenreizung', ' ', 'IA1', -1, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 648968383, '-9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3724),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '5.4700', '2014-01-01', '2014-12-31', 'EUR', 'CZ', 'EUR', 609964774, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3725),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 14, '0.0000', '2014-01-01', '2014-12-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3726),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 5, '91.3000', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 836734714, '149.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3727),
('APPLE', 'US', '502', ' ', '502 - Benjamin - Semi- und Partieforcing', ' ', 'IA1', 8, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 665165446, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3728),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3729),
('APPLE', 'US', '509', ' ', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', ' ', 'IA1', 2, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 595410023, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3730),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3731),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 25, '0.0000', '2014-01-01', '2014-12-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3732);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '1F', 2, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'MY', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3733),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 29, '0.0000', '2014-01-01', '2014-12-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3734),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3735),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 6, '0.0000', '2014-01-01', '2014-12-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3736),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3737),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3738),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.6', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'ZW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3739),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.5', '7F', 3, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3740),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 7, '0.0000', '2014-01-01', '2014-12-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3741),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 12, '0.0000', '2014-01-01', '2014-12-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3742),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.3', '1F', 51, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3743),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'ZW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3744),
('APPLE', 'US', '10021', ' ', '10021 - Michaels Cuebid - Zweifärbergegenreizung', ' ', 'IA1', 12, '6.0800', '2014-01-01', '2014-12-31', 'EUR', 'DE', 'EUR', 648968383, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3745),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '7F', 113, '0.0000', '2014-01-01', '2014-12-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3746),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.7', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'USD', 'VE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3747),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.4', '1F', 1, '0.0000', '2014-01-01', '2014-12-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3748),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 79, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3818),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3819),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 5, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3820),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '46.6600', '2015-02-01', '2015-02-28', 'GBP', 'GB', 'GBP', 836739559, '79.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 3821),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3822),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '14.0000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3823),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3824),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'MY', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3825),
('APPLE', 'US', '451', ' ', '451 - Forum D Plus 2015 - SpiralScan', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 963132800, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3826),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2015-02-01', '2015-02-28', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3827),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3828),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 15, '0.0000', '2015-02-01', '2015-02-28', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3829),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2015-02-01', '2015-02-28', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3830),
('APPLE', 'US', '510MAX', ' ', '510MAX - Zweites Gebot des Antwortenden – - Hände und Diagramm', ' ', 'IA1', 1, '8.8200', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 869391149, '14.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3831),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 2, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 597493743, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3832),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3833),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3834),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2015-02-01', '2015-02-28', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3835),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 638336452, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3836),
('APPLE', 'US', '10009', ' ', '10009 - Exclusion KC', ' ', 'IA1', 1, '2.9400', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 950956766, '4.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3837),
('APPLE', 'US', '10070', ' ', '10070 - Kontras Allgemein', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 901120264, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3838),
('APPLE', 'US', '309', ' ', '309 - SAYC - Engl - First rebid by opener - bidding', ' ', 'IA1', 1, '8.9000', '2015-02-01', '2015-02-28', 'AUD', 'AU', 'AUD', 609965674, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3839),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '8.9000', '2015-02-01', '2015-02-28', 'AUD', 'AU', 'AUD', 609962419, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3840),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 573563664, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3841),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3842),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '58.3300', '2015-02-01', '2015-02-28', 'EUR', 'AT', 'EUR', 836739559, '99.9900', ' ', ' 1', 'Renewal', '1 Year', 'Games', '', 3843),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 7, '0.0000', '2015-02-01', '2015-02-28', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3844),
('APPLE', 'US', '508', ' ', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 595400646, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3845),
('APPLE', 'US', '1204', ' ', '1204 2over1 -– Opening bids and responses', ' ', 'IA1', 1, '7.7000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 945343089, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3846),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3847),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '110.1900', '2015-02-01', '2015-02-28', 'CHF', 'CH', 'CHF', 836734714, '170.0000', ' ', ' 1', ' ', ' ', 'Games', '', 3848),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-02-01', '2015-02-28', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3849),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 1, '8.9000', '2015-02-01', '2015-02-28', 'AUD', 'AU', 'AUD', 609959316, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3850),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 68, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3851),
('APPLE', 'US', '546', ' ', '546 - Support-Kontra und –Rekontra', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 932415385, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3852),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 91, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3853),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 4, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 625730356, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3854),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3855),
('APPLE', 'US', '10071', ' ', '10071 - Michaels Cuebid', ' ', 'IA1', 1, '7.7000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 942296169, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3856),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 7, '0.0000', '2015-02-01', '2015-02-28', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3857),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3858),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '11.7600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 3859),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3860),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2015-02-01', '2015-02-28', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3861),
('APPLE', 'US', '315', ' ', '315 - openers rebid after the opponents first level overcall', ' ', 'IA1', 1, '4.9500', '2015-02-01', '2015-02-28', 'GBP', 'GB', 'GBP', 950956813, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 3862),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 18, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3863),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 4, '11.7600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3864),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', 1, '7.7000', '2015-02-01', '2015-02-28', 'USD', 'LK', 'USD', 945343112, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3865),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 23, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3866),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 6, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3867),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3868),
('APPLE', 'US', '520', ' ', '520 - Help Suit Trial Bid', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 755463889, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3869),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'UA', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3870),
('APPLE', 'US', '10049', ' ', '10049 - Antworten auf Informationskontra', ' ', 'IA1', 3, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 641292776, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3871),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2015-02-01', '2015-02-28', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3872),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.7000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3873),
('APPLE', 'US', '2009', ' ', '2009 ACOL (schwache 2er) - Erstes Rebid - Diagramm - Deutsch', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 635648065, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3874),
('APPLE', 'US', '340', ' ', '340 - Inverted Minors', ' ', 'IA1', 1, '6.2500', '2015-02-01', '2015-02-28', 'EUR', 'IE', 'EUR', 945335909, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3875),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '117.6400', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3876),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 15, '0.0000', '2015-02-01', '2015-02-28', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3877),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2015-02-01', '2015-02-28', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3878),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3879),
('APPLE', 'US', '419', ' ', '419 - Forum D Plus 2015 - Neue Unterfarbe forcing', ' ', 'IA1', 2, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 960126704, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3880),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2015-02-01', '2015-02-28', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3881),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3882),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3883),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3884),
('APPLE', 'US', '20051', ' ', '20051 - Alleinspiel Spielplan II - W. Gromoeller', ' ', 'IA1', 1, '8.2300', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 885010271, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3885),
('APPLE', 'US', '1101', ' ', '1101 2over1 - Eroeffnungen', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 837796489, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3886),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3887),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3888),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-02-01', '2015-02-28', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3889),
('APPLE', 'US', '10008', ' ', '10008 - Gerber', ' ', 'IA1', 1, '3.5200', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 949216769, '5.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3890),
('APPLE', 'US', '20002', ' ', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 959316916, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3891),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '7.7000', '2015-02-01', '2015-02-28', 'USD', 'US', 'USD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3892),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 31, '0.0000', '2015-02-01', '2015-02-28', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3893),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-02-01', '2015-02-28', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3894),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-02-01', '2015-02-28', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3895),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 19, '0.0000', '2015-02-01', '2015-02-28', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3896),
('APPLE', 'US', '10031', ' ', '10031 - Vierte Farbe forcing', ' ', 'IA1', 1, '6.4600', '2015-02-01', '2015-02-28', 'EUR', 'DE', 'EUR', 737868944, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3897),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3898),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.7600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3899),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-03-01', '2015-03-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3900),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'EE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3901),
('APPLE', 'US', '4004', ' ', '4004_NLAcol antwoord opening', ' ', 'IA1', 1, '5.2000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 864070970, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3902),
('APPLE', 'US', '302', ' ', '302 Benjamin -– Strong opening at the 2nd level', ' ', 'IA1', -1, '79.8200', '2015-03-01', '2015-03-31', 'ZAR', 'ZA', 'ZAR', 945335825, '-129.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3903),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3904),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-03-01', '2015-03-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3905),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 6, '0.0000', '2015-03-01', '2015-03-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3906),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3907),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 201, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3908),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1137, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3909),
('APPLE', 'US', '286', ' ', '286 - Eröffnungen in dritter Hand', ' ', 'IA1', 1, '7.1300', '2015-03-01', '2015-03-31', 'CHF', 'CH', 'CHF', 971920411, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 3910),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3911),
('APPLE', 'US', '302', ' ', '302 Benjamin -– Strong opening at the 2nd level', ' ', 'IA1', 1, '79.8200', '2015-03-01', '2015-03-31', 'ZAR', 'ZA', 'ZAR', 945335825, '129.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3912),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3913),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', 2, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 622266427, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3914),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3915),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3916),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 7, '0.0000', '2015-03-01', '2015-03-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3917),
('APPLE', 'US', '10060', ' ', '10060 - Jacoby 2NT', ' ', 'IA1', 1, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 868945228, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3918),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 2, '7.7000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3919),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 19, '0.0000', '2015-03-01', '2015-03-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3920),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 55, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3921),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3922),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-03-01', '2015-03-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3923),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3924),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', -1, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 622266427, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3925),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3926),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3927),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 14, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3928),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3929),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3930),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-03-01', '2015-03-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3931),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-03-01', '2015-03-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3932),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3933),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3934),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 27, '0.0000', '2015-03-01', '2015-03-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3935),
('APPLE', 'US', '10049', ' ', '10049 - Antworten auf Informationskontra', ' ', 'IA1', 2, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 641292776, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3936),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 1, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 597493743, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3937),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 264, '0.0000', '2015-03-01', '2015-03-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3938),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-03-01', '2015-03-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3939),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3940),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3941),
('APPLE', 'US', '10010', ' ', '10010 - Diverse Schlemmkonventionen', ' ', 'IA1', 1, '2.9400', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 950956791, '4.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3942),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 44, '0.0000', '2015-03-01', '2015-03-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3943),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 21, '0.0000', '2015-03-01', '2015-03-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3944),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'OM', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3945),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 7, '0.0000', '2015-03-01', '2015-03-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3946),
('APPLE', 'US', '4007', ' ', '4007_NLAcol antwoord 1SA2SA vragen', ' ', 'IA1', 1, '5.2000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 864093805, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3947),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 4, '117.6400', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3948),
('APPLE', 'US', '4009', ' ', '4009_NLAcol rebid openaar vragen', ' ', 'IA1', 1, '5.2000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 864097102, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3949),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3950),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 31, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3951),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 33, '0.0000', '2015-03-01', '2015-03-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3952),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 10, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3953),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'UA', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3954),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 15, '0.0000', '2015-03-01', '2015-03-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3955),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3956),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3957),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '140.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3958),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 58, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3959),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3960),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 102, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3961),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '7.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 609964774, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3962),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 41, '0.0000', '2015-03-01', '2015-03-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3963),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3964),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3965),
('APPLE', 'US', '20001', ' ', '20001 - Ausspiele für Anfaenger', ' ', 'IA1', 1, '5.8800', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 677269493, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3966),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 7, '0.0000', '2015-03-01', '2015-03-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3967),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 10, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3968),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 196, '0.0000', '2015-03-01', '2015-03-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3969),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '12.9600', '2015-03-01', '2015-03-31', 'CHF', 'CH', 'CHF', 836739558, '20.0000', ' ', ' 1', 'New', '1 Month', 'Games', '', 3970),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'KZ', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3971),
('APPLE', 'US', '20002', ' ', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', ' ', 'IA1', 1, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 959316916, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3972),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-03-01', '2015-03-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3973),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 6, '0.0000', '2015-03-01', '2015-03-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3974),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '17.4900', '2015-03-01', '2015-03-31', 'NZD', 'NZ', 'NZD', 836739558, '24.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 3975),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 9, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3976),
('APPLE', 'US', '4006', ' ', '4006_NLAcol antwoord 1SA2SA', ' ', 'IA1', 1, '5.2000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 864076491, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3977),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.7000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3978),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 2, '7.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3979),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3980),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 5, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3981),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3982),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3983),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', 2, '7.7000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 945343112, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3984),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3985),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 21, '0.0000', '2015-03-01', '2015-03-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3986),
('APPLE', 'US', '4005', ' ', '4005_NLAcol antwoord opening vragen', ' ', 'IA1', 1, '5.2000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 864073041, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3987),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 4, '0.0000', '2015-03-01', '2015-03-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3988),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '7.7000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3989),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 11, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3990),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 4, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3991),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3992),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 69, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3993),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 2, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 600516751, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3994),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 19, '0.0000', '2015-03-01', '2015-03-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3995),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 31, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3996),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '14.0000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 3997),
('APPLE', 'US', '342', ' ', '342 - Overcalls after a Weak Two', ' ', 'IA1', 1, '7.7000', '2015-03-01', '2015-03-31', 'USD', 'US', 'USD', 950956859, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 3998),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 3999),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 254, '0.0000', '2015-03-01', '2015-03-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4000),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 789, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4001),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 9, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4002),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 5, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4003),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 1, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 625730356, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4004),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4005),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 24, '0.0000', '2015-03-01', '2015-03-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4006),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 66, '0.0000', '2015-03-01', '2015-03-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4007),
('APPLE', 'US', '4008', ' ', '4008_NLAcol rebid openaar', ' ', 'IA1', 1, '5.2000', '2015-03-01', '2015-03-31', 'EUR', 'NL', 'EUR', 864096934, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4008),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4009),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 26, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4010),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 5, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4011),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 4, '0.0000', '2015-03-01', '2015-03-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4012),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4013),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'VE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4014),
('APPLE', 'US', '505', ' ', '505_FORUM_D_2012_Antworten auf OFuUF-Eröffnungen_Diagramm', ' ', 'IA1', 1, '6.4600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 595397604, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4015),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4016),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4017),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-03-01', '2015-03-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4018),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 31, '0.0000', '2015-03-01', '2015-03-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4019),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4020),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4021),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 5, '11.7600', '2015-03-01', '2015-03-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4022),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-04-01', '2015-04-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4023),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4024),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4025),
('APPLE', 'US', '514', ' ', '514 - Antwort nach Gegenreizung', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 786440046, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4026),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', -1, '11.7600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 836739558, '-19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4027),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 2, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 597493743, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4028),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4029),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 5, '0.0000', '2015-04-01', '2015-04-30', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4030),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4031),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '17.4900', '2015-04-01', '2015-04-30', 'NZD', 'NZ', 'NZD', 836739558, '24.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4032),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 47, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4033),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 76, '0.0000', '2015-04-01', '2015-04-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4034),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-04-01', '2015-04-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4035),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 2, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 573563664, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4036),
('APPLE', 'US', '20050', ' ', '20050 - Alleinspiel Spielplan I - W. Gromoeller', ' ', 'IA1', 1, '8.2300', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 885010339, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4037),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4038),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 72, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4039),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 8, '0.0000', '2015-04-01', '2015-04-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4040),
('APPLE', 'US', '509', ' ', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 595410023, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4041),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 51, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4042),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4043),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 13, '0.0000', '2015-04-01', '2015-04-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4044),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4045),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4046),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4047),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 16, '0.0000', '2015-04-01', '2015-04-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4048),
('APPLE', 'US', '531', ' ', '531 - FD 2012 – Zweites Gebot des NT-Eröffners', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 755463895, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4049),
('APPLE', 'US', '10002', ' ', '10002 - RKCB (Roman KeyCard Blackwood) 1430', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 959316919, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4050),
('APPLE', 'US', '417', ' ', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', ' ', 'IA1', 2, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 962501513, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4051),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-04-01', '2015-04-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4052),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4053),
('APPLE', 'US', '507', ' ', '507 - Forum D 2012_NT_Eröffnungen und Antworten', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 597235928, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4054),
('APPLE', 'US', '511', ' ', '511 Forum D 2012 - Die 2. Antwort des Responders - Diagramm', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 634597389, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4055),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 16, '0.0000', '2015-04-01', '2015-04-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4056),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-04-01', '2015-04-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4057),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 2, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 600516751, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4058),
('APPLE', 'US', 'R4', ' ', 'R4 - Reizung – Eröffnung und Antwort - Hand', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 579963138, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4059);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', 'R15', ' ', 'R15 - Wiedergebot des Eroefffners nach Gegenreizung', ' ', 'IA1', 2, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 852298120, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4060),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 2, '117.6400', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4061),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4062),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4063),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'USD', 'JO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4064),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 16, '0.0000', '2015-04-01', '2015-04-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4065),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4066),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '14.0000', '2015-04-01', '2015-04-30', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4067),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 4, '0.0000', '2015-04-01', '2015-04-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4068),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4069),
('APPLE', 'US', '502', ' ', '502 - Benjamin - Semi- und Partieforcing', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 665165446, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4070),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '64.8100', '2015-04-01', '2015-04-30', 'CHF', 'CH', 'CHF', 836739559, '100.0000', ' ', ' 1', 'Renewal', '1 Year', 'Games', '', 4071),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4072),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4073),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4074),
('APPLE', 'US', '1509', ' ', '1509 ACOL - First rebid diagram', ' ', 'IA1', 1, '6.3600', '2015-04-01', '2015-04-30', 'EUR', 'BE', 'EUR', 651430012, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4075),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4076),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4077),
('APPLE', 'US', '10065', ' ', '10065 Bergen Hebungen', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 945530760, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4078),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 8, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4079),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', -1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 597493743, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4080),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4081),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-04-01', '2015-04-30', 'AED', 'AE', 'AED', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4082),
('APPLE', 'US', '506', ' ', '506 - Forum D 2012 - NT - Eröffnungen', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 597967572, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4083),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-04-01', '2015-04-30', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4084),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 12, '0.0000', '2015-04-01', '2015-04-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4085),
('APPLE', 'US', '441', ' ', '441 - Forum D Plus 2015 - Inverted Minors', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 963133803, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4086),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.4600', '2015-04-01', '2015-04-30', 'GBP', 'GB', 'GBP', 609989812, '0.7900', ' ', ' 1', ' ', ' ', 'Games', '', 4087),
('APPLE', 'US', '510', ' ', '510 Forum D 2012 - Die 2. Antwort des Responders', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 634596426, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4088),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-04-01', '2015-04-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4089),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 3, '14.0000', '2015-04-01', '2015-04-30', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4090),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 65, '0.0000', '2015-04-01', '2015-04-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4091),
('APPLE', 'US', '430', ' ', '430 Forum D PLUS - Weiterreizung nach NT - M. Gromoeller', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 634598711, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4092),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4093),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 646480241, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4094),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4095),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4096),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-04-01', '2015-04-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4097),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-04-01', '2015-04-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4098),
('APPLE', 'US', '10021', ' ', '10021 - Michaels Cuebid - Zweifärbergegenreizung', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 648968383, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4099),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-04-01', '2015-04-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4100),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 5, '11.7600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4101),
('APPLE', 'US', '505', ' ', '505_FORUM_D_2012_Antworten auf OFuUF-Eröffnungen_Diagramm', ' ', 'IA1', 1, '6.4600', '2015-04-01', '2015-04-30', 'EUR', 'DE', 'EUR', 595397604, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4102),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 4, '0.0000', '2015-05-01', '2015-05-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4103),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4104),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4105),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 1, '7.7000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 942296064, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4106),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-05-01', '2015-05-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4107),
('APPLE', 'US', '451', ' ', '451 - Forum D Plus 2015 - SpiralScan', ' ', 'IA1', 1, '6.4600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 963132800, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4108),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4109),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '17.4900', '2015-05-01', '2015-05-31', 'NZD', 'NZ', 'NZD', 836739558, '24.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4110),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 38, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4111),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 87, '0.0000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4112),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-05-01', '2015-05-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4113),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-05-01', '2015-05-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4114),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4115),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 31, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4116),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 14, '0.0000', '2015-05-01', '2015-05-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4117),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 38, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4118),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4119),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 13, '0.0000', '2015-05-01', '2015-05-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4120),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4121),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-05-01', '2015-05-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4122),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4123),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 6, '0.0000', '2015-05-01', '2015-05-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4124),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4125),
('APPLE', 'US', '10002', ' ', '10002 - RKCB (Roman KeyCard Blackwood) 1430', ' ', 'IA1', 1, '6.4600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 959316919, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4126),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.7600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4127),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-05-01', '2015-05-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4128),
('APPLE', 'US', 'R5', ' ', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', ' ', 'IA1', 1, '6.4600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 579760679, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4129),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 15, '0.0000', '2015-05-01', '2015-05-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4130),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4131),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-05-01', '2015-05-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4132),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 1, '16.0900', '2015-05-01', '2015-05-31', 'TRY', 'TR', 'TRY', 942296064, '22.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4133),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 4, '0.0000', '2015-05-01', '2015-05-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4134),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4135),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4136),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 12, '0.0000', '2015-05-01', '2015-05-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4137),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4138),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 3, '14.0000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4139),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4140),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '7.0000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4141),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4142),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-05-01', '2015-05-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4143),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4144),
('APPLE', 'US', '1408', ' ', '1408 - ACOL (incl. weak twos) - First rebid', ' ', 'IA1', 1, '7.7000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 609971136, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4145),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '9.0900', '2015-05-01', '2015-05-31', 'CAD', 'CA', 'CAD', 609962419, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4146),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4147),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4148),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 7, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4149),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-05-01', '2015-05-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4150),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 8, '0.0000', '2015-05-01', '2015-05-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4151),
('APPLE', 'US', '510', ' ', '510 Forum D 2012 - Die 2. Antwort des Responders', ' ', 'IA1', 2, '6.4600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 634596426, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4152),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-05-01', '2015-05-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4153),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 41, '0.0000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4154),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.8200', '2015-05-01', '2015-05-31', 'AUD', 'AU', 'AUD', 609989812, '1.2900', ' ', ' 1', ' ', ' ', 'Games', '', 4155),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 3, '6.4600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 646480241, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4156),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 1, '7.7000', '2015-05-01', '2015-05-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4157),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-05-01', '2015-05-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4158),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-05-01', '2015-05-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4159),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 5, '11.7600', '2015-05-01', '2015-05-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4160),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.7600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4161),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-06-01', '2015-06-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4162),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-06-01', '2015-06-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4163),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4164),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 4, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4165),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 17, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4166),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 2, '7.7000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 942296064, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4167),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4168),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-06-01', '2015-06-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4169),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4170),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4171),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-06-01', '2015-06-30', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4172),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', -2, '117.6400', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 836734714, '-199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4173),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 2, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 646480241, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4174),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4175),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4176),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4177),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 1, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 597493743, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4178),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 9, '0.0000', '2015-06-01', '2015-06-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4179),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 1, '4.9500', '2015-06-01', '2015-06-30', 'GBP', 'GB', 'GBP', 651439061, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 4180),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-06-01', '2015-06-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4181),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-06-01', '2015-06-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4182),
('APPLE', 'US', '1205', ' ', '1205 - 2 over 1 - Opening and response - diagram', ' ', 'IA1', 1, '9.0900', '2015-06-01', '2015-06-30', 'CAD', 'CA', 'CAD', 997974968, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4183),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 2, '117.6400', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4184),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4185),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-06-01', '2015-06-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4186),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4187),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4188),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '17.4900', '2015-06-01', '2015-06-30', 'NZD', 'NZ', 'NZD', 836739558, '24.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4189),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', 1, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 638336452, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4190),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 18, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4191),
('APPLE', 'US', '441', ' ', '441 - Forum D Plus 2015 - Inverted Minors', ' ', 'IA1', 1, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 963133803, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4192),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 137, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4193),
('APPLE', 'US', '1505', ' ', '1505 ACOL - Opening and response dia', ' ', 'IA1', 1, '7.7000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 651673428, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4194),
('APPLE', 'US', '20071', ' ', '20071 - Suit Combinations 2', ' ', 'IA1', 2, '7.7000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 945343309, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4195),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-06-01', '2015-06-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4196),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4197),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '8.2700', '2015-06-01', '2015-06-30', 'AUD', 'AU', 'AUD', 609955394, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4198),
('APPLE', 'US', '453', ' ', '453 - Forum D Plus 2015 - Minorwood', ' ', 'IA1', 1, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 962502518, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4199),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.7000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4200),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '58.8200', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 836739559, '99.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 4201),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-06-01', '2015-06-30', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4202),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4203),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', 4, '7.7000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 945343112, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4204),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4205),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 36, '0.0000', '2015-06-01', '2015-06-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4206),
('APPLE', 'US', '20015', ' ', '20015 - Spieltechnik - Farbbehandlung', ' ', 'IA1', 1, '7.6400', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 886167480, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4207),
('APPLE', 'US', '552', ' ', '552 - Multi Landy', ' ', 'IA1', 1, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 959316913, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4208),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 39, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4209),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 24, '0.0000', '2015-06-01', '2015-06-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4210),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4211),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 5, '0.4600', '2015-06-01', '2015-06-30', 'GBP', 'GB', 'GBP', 609989812, '0.7900', ' ', ' 1', ' ', ' ', 'Games', '', 4212),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'USD', 'CR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4213),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4214),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '14.0000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4215),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 9, '0.0000', '2015-06-01', '2015-06-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4216),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 20, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4217),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4218),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4219),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 13, '0.0000', '2015-06-01', '2015-06-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4220),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 3, '0.0000', '2015-06-01', '2015-06-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4221),
('APPLE', 'US', '340', ' ', '340 - Inverted Minors', ' ', 'IA1', 1, '9.0900', '2015-06-01', '2015-06-30', 'CAD', 'CA', 'CAD', 945335909, '12.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4222),
('APPLE', 'US', '10071', ' ', '10071 - Michaels Cuebid', ' ', 'IA1', 1, '7.7000', '2015-06-01', '2015-06-30', 'USD', 'US', 'USD', 942296169, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4223),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', -1, '6.4600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 638336452, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4224),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-06-01', '2015-06-30', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4225),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4226),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4227),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 5, '11.7600', '2015-06-01', '2015-06-30', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4228),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4229),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '11.7600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4230),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 3, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4231),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4232),
('APPLE', 'US', '514APTZ', ' ', '514APTZ - Antwort nach Zwischenreizung und Rebid des Eröffners', ' ', 'IA1', 1, '2.3500', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 869386663, '3.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4233),
('APPLE', 'US', '338', ' ', '338 - Nonforcing Stayman', ' ', 'IA1', 1, '4.9500', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 967843593, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 4234),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 1, '0.0000', '2015-07-01', '2015-07-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4235),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4236),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-07-01', '2015-07-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4237),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 3, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4238),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4239),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4240),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 16, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4241),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '70.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 836739559, '99.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 4242),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4243),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '14.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4244),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '58.8200', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 836739559, '99.9900', ' ', ' 1', 'Renewal', '1 Year', 'Games', '', 4245),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4246),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4247),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4248),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 1, '0.0000', '2015-07-01', '2015-07-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4249),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-07-01', '2015-07-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4250),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 39, '0.0000', '2015-07-01', '2015-07-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4251),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 1, '7.7000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4252),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4253),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-07-01', '2015-07-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4254),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4255),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 646480241, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4256),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4257),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-07-01', '2015-07-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4258),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 156, '0.0000', '2015-07-01', '2015-07-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4259),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 5, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4260),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4261),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4262),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 176, '0.0000', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4263),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', -1, '14.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 836739558, '-19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4264),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 6, '0.0000', '2015-07-01', '2015-07-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4265),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 17, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4266),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 3, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4267),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 3, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4268),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4269),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-07-01', '2015-07-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4270),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4271),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'KZ', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4272),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4273),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-07-01', '2015-07-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4274),
('APPLE', 'US', '1508', ' ', '1508 ACOL – Opening_response_rebid', ' ', 'IA1', 1, '4.9500', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 651439061, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 4275),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4276),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 5, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4277),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4278),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4279),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 2, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4280),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4281),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4282),
('APPLE', 'US', '541', ' ', '541 - Negativkontra nach Gegenreizung auf der 1erStufe', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 909747039, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4283),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 15, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4284),
('APPLE', 'US', '507', ' ', '507 - Forum D 2012_NT_Eröffnungen und Antworten', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 597235928, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4285),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 24, '0.0000', '2015-07-01', '2015-07-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4286),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4287),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4288),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 10, '0.0000', '2015-07-01', '2015-07-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4289),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4290),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 2, '0.0000', '2015-07-01', '2015-07-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4291),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 13, '0.0000', '2015-07-01', '2015-07-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4292),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 4, '0.0000', '2015-07-01', '2015-07-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4293),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4294),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '140.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4295),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 25, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4296),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 102, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4297),
('APPLE', 'US', '10065', ' ', '10065 Bergen Hebungen', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 945530760, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4298),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 43, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4299),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4300),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 573563664, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4301),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4302),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 146, '0.0000', '2015-07-01', '2015-07-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4303),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 518, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4304),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4305),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 6, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4306),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '58.8200', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 836739559, '99.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 4307),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 2, '7.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4308),
('APPLE', 'US', '508', ' ', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 595400646, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4309),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 1, '0.0000', '2015-07-01', '2015-07-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4310),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4311),
('APPLE', 'US', '20070', ' ', '20070 - Suit Combinations 1', ' ', 'IA1', 1, '7.7000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 945343112, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4312),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4313),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 25, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4314),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4315),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'JO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4316),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 5, '0.0000', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4317),
('APPLE', 'US', '530', ' ', '530 - Weiterreizung nach 1 NT-Eröffnung', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 642124346, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4318),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 25, '0.0000', '2015-07-01', '2015-07-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4319);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4320),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-07-01', '2015-07-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4321),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 15, '0.0000', '2015-07-01', '2015-07-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4322),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4323),
('APPLE', 'US', '313', ' ', '313 Takeout Double', ' ', 'IA1', 1, '7.7000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 942296071, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4324),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 25, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4325),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 600516751, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4326),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 12, '0.0000', '2015-07-01', '2015-07-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4327),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4328),
('APPLE', 'US', '315', ' ', '315 - openers rebid after the opponents first level overcall', ' ', 'IA1', 1, '4.9500', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 950956813, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 4329),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 3, '0.0000', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4330),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.4600', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 609989812, '0.7900', ' ', ' 1', ' ', ' ', 'Games', '', 4331),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4332),
('APPLE', 'US', '305', ' ', '305 - SAYC - Engl - First Answer to Minor-/Major-Openings  - Bidding', ' ', 'IA1', 1, '7.7000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 609957825, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4333),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4334),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '14.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4335),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4336),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 31, '0.0000', '2015-07-01', '2015-07-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4337),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4338),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4339),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 10, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4340),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 2, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4341),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 10, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4342),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 625730356, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4343),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4344),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 9, '0.0000', '2015-07-01', '2015-07-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4345),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 21, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4346),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4347),
('APPLE', 'US', '506', ' ', '506 - Forum D 2012 - NT - Eröffnungen', ' ', 'IA1', 1, '6.4600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 597967572, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4348),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4349),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4350),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4351),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 153, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4352),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 3, '0.0000', '2015-07-01', '2015-07-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4353),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 928, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4354),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4355),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4356),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-07-01', '2015-07-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4357),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1', 1, '0.0000', '2015-07-01', '2015-07-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4358),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4359),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.0', '1F', 1, '0.0000', '2015-07-01', '2015-07-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4360),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 15, '0.0000', '2015-07-01', '2015-07-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4361),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 4, '11.7600', '2015-07-01', '2015-07-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4362),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4363),
('APPLE', 'US', '1201', ' ', '1201 - 2 over 1 – Opening Bids', ' ', 'IA1', 1, '6.4100', '2015-08-01', '2015-08-31', 'EUR', 'FR', 'EUR', 951294714, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4364),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 9, '0.0000', '2015-08-01', '2015-08-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4365),
('APPLE', 'US', '10021', ' ', '10021 - Michaels Cuebid - Zweifärbergegenreizung', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 648968383, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4366),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 12, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4367),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 5, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4368),
('APPLE', 'US', '4001', ' ', '4001_NLAcol openingen', ' ', 'IA1', 1, '5.2000', '2015-08-01', '2015-08-31', 'EUR', 'NL', 'EUR', 864070008, '8.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4369),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4370),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 39, '0.0000', '2015-08-01', '2015-08-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4371),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4372),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 9, '0.0000', '2015-08-01', '2015-08-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4373),
('APPLE', 'US', 'R5', ' ', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 579760679, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4374),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4375),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4376),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 1, '7.7000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 942296064, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4377),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4378),
('APPLE', 'US', '10082', ' ', '10082 - Ogust - Weiterreizung nach weak two in ♡ oder ♤', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 979017035, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4379),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'CR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4380),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4381),
('APPLE', 'US', '417', ' ', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 962501513, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4382),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 4, '0.0000', '2015-08-01', '2015-08-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4383),
('APPLE', 'US', '20002', ' ', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 959316916, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4384),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4385),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 197, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4386),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 41, '0.0000', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4387),
('APPLE', 'US', '1205', ' ', '1205 - 2 over 1 - Opening and response - diagram', ' ', 'IA1', 1, '6.4100', '2015-08-01', '2015-08-31', 'EUR', 'FR', 'EUR', 997974968, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4388),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4389),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4390),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 2, '0.0000', '2015-08-01', '2015-08-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4391),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4392),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 646480241, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4393),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4394),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 6, '0.0000', '2015-08-01', '2015-08-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4395),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4396),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 21, '0.0000', '2015-08-01', '2015-08-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4397),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 60, '0.0000', '2015-08-01', '2015-08-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4398),
('APPLE', 'US', '436', ' ', '436 - Schwache Sprünge in der eigenen Reizung', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 951508430, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4399),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1244, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4400),
('APPLE', 'US', '238', ' ', '238 - Nonforcing Stayman', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 953610112, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4401),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4402),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 26, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4403),
('APPLE', 'US', 'R4', ' ', 'R4 - Reizung – Eröffnung und Antwort - Hand', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 579963138, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4404),
('APPLE', 'US', '10082', ' ', '10082 - Ogust - Weiterreizung nach weak two in ♡ oder ♤', ' ', 'IA1', -1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 979017035, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4405),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4406),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 78, '0.0000', '2015-08-01', '2015-08-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4407),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 5, '0.0000', '2015-08-01', '2015-08-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4408),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 39, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4409),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-08-01', '2015-08-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4410),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4411),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 35, '0.0000', '2015-08-01', '2015-08-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4412),
('APPLE', 'US', '521', ' ', '521 - Long Suit Trial Bids', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 886163481, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4413),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4414),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4415),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4416),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4417),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4418),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 15, '0.0000', '2015-08-01', '2015-08-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4419),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4420),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4421),
('APPLE', 'US', '20001', ' ', '20001 - Ausspiele für Anfaenger', ' ', 'IA1', 1, '6.4800', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 677269493, '10.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4422),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 14, '0.0000', '2015-08-01', '2015-08-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4423),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 214, '0.0000', '2015-08-01', '2015-08-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4424),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4425),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4426),
('APPLE', 'US', '20101', ' ', '20101 - Spielstiche zählen', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 987286274, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4427),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4428),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4429),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4430),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-08-01', '2015-08-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4431),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4432),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4433),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4434),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 779, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4435),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 28, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4436),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 39, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4437),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 14, '0.0000', '2015-08-01', '2015-08-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4438),
('APPLE', 'US', '545', ' ', '545 - Zweite Ansage nach Informationskontra', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 973431203, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4439),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4440),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-08-01', '2015-08-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4441),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4442),
('APPLE', 'US', '451', ' ', '451 - Forum D Plus 2015 - SpiralScan', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 963132800, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4443),
('APPLE', 'US', '452', ' ', '452 - Forum D Plus 2015 - Multi Landy', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 974836759, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4444),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 7, '0.0000', '2015-08-01', '2015-08-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4445),
('APPLE', 'US', '10001', ' ', '10001 RKCB Ass-Frage Deutsch', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 622266427, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4446),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 4, '0.0000', '2015-08-01', '2015-08-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4447),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4448),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 2, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4449),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4450),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4451),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 8, '0.0000', '2015-08-01', '2015-08-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4452),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 25, '0.0000', '2015-08-01', '2015-08-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4453),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 55, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4454),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4455),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 15, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4456),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 35, '0.0000', '2015-08-01', '2015-08-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4457),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4458),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', -1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 573563664, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4459),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 2, '0.0000', '2015-08-01', '2015-08-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4460),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 212, '0.0000', '2015-08-01', '2015-08-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4461),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4462),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4463),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 6, '0.0000', '2015-08-01', '2015-08-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4464),
('APPLE', 'US', '502', ' ', '502 - Benjamin - Semi- und Partieforcing', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 665165446, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4465),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4466),
('APPLE', 'US', '709', ' ', '709 - BETTER MINOR - EÖ-Antwort und erstes Rebid - Diagramm', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 600153420, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4467),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4468),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4469),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 573563664, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4470),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 2, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4471),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 9, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4472),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 75, '0.0000', '2015-08-01', '2015-08-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4473),
('APPLE', 'US', '542', ' ', '542 - Gegenreizung auf Weak Twos', ' ', 'IA1', 1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 923869104, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4474),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 2, '5.8800', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 579760995, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4475),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 2, '0.0000', '2015-08-01', '2015-08-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4476),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 300, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4477),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 4, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4478),
('APPLE', 'US', '502', ' ', '502 - Benjamin - Semi- und Partieforcing', ' ', 'IA1', -1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 665165446, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4479),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 12, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4480),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4481),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 68, '0.0000', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4482),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 13, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4483),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 646480241, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4484),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'KZ', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4485),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 2, '7.0000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4486),
('APPLE', 'US', '20101', ' ', '20101 - Spielstiche zählen', ' ', 'IA1', -1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 987286274, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4487),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4488),
('APPLE', 'US', '419', ' ', '419 - Forum D Plus 2015 - Neue Unterfarbe forcing', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 960126704, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4489),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 3, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4490),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4491),
('APPLE', 'US', '552', ' ', '552 - Multi Landy', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 959316913, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4492),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 7, '0.0000', '2015-08-01', '2015-08-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4493),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4494),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4495),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 7, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4496),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4497),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 13, '0.0000', '2015-08-01', '2015-08-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4498),
('APPLE', 'US', '560', ' ', '560 - Balancing und Weiterreizung', ' ', 'IA1', -1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 1006612151, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4499),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4500),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 5, '0.0000', '2015-08-01', '2015-08-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4501),
('APPLE', 'US', '313', ' ', '313 Takeout Double', ' ', 'IA1', 1, '7.7000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 942296071, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4502),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 13, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4503),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4504),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 6, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4505),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 32, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4506),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'JO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4507),
('APPLE', 'US', '20015', ' ', '20015 - Spieltechnik - Farbbehandlung', ' ', 'IA1', 1, '8.4300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 886167480, '13.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4508),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 6, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4509),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4510),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4511),
('APPLE', 'US', '560', ' ', '560 - Balancing und Weiterreizung', ' ', 'IA1', 2, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 1006612151, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4512),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4513),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '14.0000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4514),
('APPLE', 'US', '417', ' ', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', ' ', 'IA1', -1, '6.4600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 962501513, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4515),
('APPLE', 'US', '342', ' ', '342 - Overcalls after a Weak Two', ' ', 'IA1', 1, '7.7000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 950956859, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4516),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 11, '0.0000', '2015-08-01', '2015-08-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4517),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 2, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4518),
('APPLE', 'US', '3301', ' ', '3301 - Forum Alvensleben - Eröffnungen', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 965963925, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4519),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4520),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4521),
('APPLE', 'US', '1304', ' ', '1304 - Precision -– Antwort auf natürliche Farberöffnungen', ' ', 'IA1', 1, '7.1300', '2015-08-01', '2015-08-31', 'CHF', 'CH', 'CHF', 1013824010, '11.0000', ' ', ' 1', ' ', ' ', 'Games', '', 4522),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 4, '0.0000', '2015-08-01', '2015-08-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4523),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 8, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4524),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '1F', 25, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4525),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 239, '0.0000', '2015-08-01', '2015-08-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4526),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 24, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4527),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 56, '0.0000', '2015-08-01', '2015-08-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4528),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 318, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4529),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-08-01', '2015-08-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4530),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 10, '0.0000', '2015-08-01', '2015-08-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4531),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 8, '0.0000', '2015-08-01', '2015-08-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4532),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 3, '11.7600', '2015-08-01', '2015-08-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4533),
('APPLE', 'US', '514APTZ', ' ', '514APTZ - Antwort nach Zwischenreizung und Rebid des Eröffners', ' ', 'IA1', 1, '2.3500', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 869386663, '3.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4795),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 68, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4796),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4797),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4798),
('APPLE', 'US', '514', ' ', '514 - Antwort nach Gegenreizung', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 786440046, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4799),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4800),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4801),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 15, '0.0000', '2015-01-01', '2015-01-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4802),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 8, '0.0000', '2015-01-01', '2015-01-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4803),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4804),
('APPLE', 'US', '504', ' ', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten', ' ', 'IA1', 2, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 597493743, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4805),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4806),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4807),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '9.4100', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 836739558, '15.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4808),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 5, '0.0000', '2015-01-01', '2015-01-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4809),
('APPLE', 'US', '10046', ' ', '10046 - Relaistransfer', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 638336452, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4810),
('APPLE', 'US', '20020', ' ', '20020 - Farbbehandlung 1', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 904617226, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4811),
('APPLE', 'US', '309', ' ', '309 - SAYC - Engl - First rebid by opener - bidding', ' ', 'IA1', 1, '7.7000', '2015-01-01', '2015-01-31', 'USD', 'US', 'USD', 609965674, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4812),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4813),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-01-01', '2015-01-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4814),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2015-01-01', '2015-01-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4815),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2015-01-01', '2015-01-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4816),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4817),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 83, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4818),
('APPLE', 'US', '20071', ' ', '20071 - Suit Combinations 2', ' ', 'IA1', 1, '4.9500', '2015-01-01', '2015-01-31', 'GBP', 'GB', 'GBP', 945343309, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 4819),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 85, '0.0000', '2015-01-01', '2015-01-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4820),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 4, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4821),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.4600', '2015-01-01', '2015-01-31', 'GBP', 'GB', 'GBP', 609989812, '0.7900', ' ', ' 1', ' ', ' ', 'Games', '', 4822),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 2, '0.0000', '2015-01-01', '2015-01-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4823),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4824),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 5, '0.0000', '2015-01-01', '2015-01-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4825),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4826),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 9, '0.0000', '2015-01-01', '2015-01-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4827),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.2000', '2015-01-01', '2015-01-31', 'USD', 'US', 'USD', 836739558, '15.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 4828),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 9, '0.0000', '2015-01-01', '2015-01-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4829),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 4, '0.0000', '2015-01-01', '2015-01-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4830),
('APPLE', 'US', '1201', ' ', '1201 - 2 over 1 – Opening Bids', ' ', 'IA1', 1, '7.7000', '2015-01-01', '2015-01-31', 'USD', 'US', 'USD', 951294714, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4831),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4832),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 38, '0.0000', '2015-01-01', '2015-01-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4833),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.7600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4834),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4835),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 18, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4836),
('APPLE', 'US', 'RM40', ' ', 'RM40 - FD Basis – Mix', ' ', 'IA1', 1, '2.9400', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 658840347, '4.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4837),
('APPLE', 'US', '430', ' ', '430 Forum D PLUS - Weiterreizung nach NT - M. Gromoeller', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 634598711, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4838),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 9, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4839);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '522', ' ', '522 - Short Suit Trial Bids', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 875576942, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4840),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 8, '0.0000', '2015-01-01', '2015-01-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4841),
('APPLE', 'US', '501', ' ', '0501 - Forum D 2012 - Eröffnungen', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 600516751, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4842),
('APPLE', 'US', '521', ' ', '521 - Long Suit Trial Bids', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 886163481, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4843),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4844),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', ' ', 'IAY', 1, '44.1100', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 836739559, '74.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 4845),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 24, '0.0000', '2015-01-01', '2015-01-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4846),
('APPLE', 'US', '701', ' ', '701 - BETTER MINOR - Eröffnungen', ' ', 'IA1', 1, '6.0800', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 599539662, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4847),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'EE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4848),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 3, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4849),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4850),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4851),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 1, '7.7000', '2015-01-01', '2015-01-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4852),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 1, '0.0000', '2015-01-01', '2015-01-31', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4853),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 1, '5.8800', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 579760995, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4854),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 2, '0.0000', '2015-01-01', '2015-01-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4855),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 7, '0.0000', '2015-01-01', '2015-01-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4856),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2015-01-01', '2015-01-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4857),
('APPLE', 'US', '20002', ' ', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', ' ', 'IA1', 1, '6.4600', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 959316916, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4858),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 15, '0.0000', '2015-01-01', '2015-01-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4859),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '91.3000', '2015-01-01', '2015-01-31', 'EUR', 'DE', 'EUR', 836734714, '149.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4860),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 2, '0.0000', '2015-01-01', '2015-01-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4861),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '1F', 1, '0.0000', '2015-01-01', '2015-01-31', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4862),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.9', '7F', 3, '0.0000', '2015-01-01', '2015-01-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4863),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4864),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4865),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4866),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4867),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 34, '0.0000', '2015-09-01', '2015-09-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4868),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 12, '0.0000', '2015-09-01', '2015-09-30', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4869),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 31, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4870),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4871),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.5700', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4872),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4873),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4874),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 6, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4875),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4876),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 14, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4877),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '14.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 4878),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 7, '0.0000', '2015-09-01', '2015-09-30', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4879),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 247, '0.0000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4880),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 53, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4881),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4882),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4883),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4884),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4885),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 12, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4886),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4887),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4888),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4889),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 155, '0.0000', '2015-09-01', '2015-09-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4890),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 1, '7.7000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4891),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4892),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4893),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 8, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4894),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 177, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4895),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4896),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 4, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4897),
('APPLE', 'US', '512', ' ', '512 Gegenreizung - Hand', ' ', 'IA1', 2, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 646480241, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4898),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4899),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4900),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 177, '0.0000', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4901),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4902),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4903),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 26, '0.0000', '2015-09-01', '2015-09-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4904),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4905),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 58, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4906),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'CZ', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4907),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 7, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4908),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 9, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4909),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4910),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 6, '0.0000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4911),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 17, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4912),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 4, '0.0000', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4913),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4914),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4915),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4916),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 22, '0.0000', '2015-09-01', '2015-09-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4917),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.8', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4918),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 831, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4919),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 4, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4920),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 9, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4921),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4922),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 208, '0.0000', '2015-09-01', '2015-09-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4923),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.2', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4924),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4925),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 6, '0.0000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4926),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 23, '0.0000', '2015-09-01', '2015-09-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4927),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 6, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4928),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'KE', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4929),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4930),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 293, '0.0000', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4931),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 6, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4932),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 17, '0.0000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4933),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4934),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4935),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 26, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4936),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'CR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4937),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4938),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 67, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4939),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4940),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 5, '0.0000', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4941),
('APPLE', 'US', '507', ' ', '507 - Forum D 2012_NT_Eröffnungen und Antworten', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 597235928, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4942),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4943),
('APPLE', 'US', '10031', ' ', '10031 - Vierte Farbe forcing', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 737868944, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4944),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1010, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4945),
('APPLE', 'US', 'R18', ' ', 'R18 FD Basis – 2. Ansage des Antwortenden nach 1NT', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 868945273, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4946),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', ' ', 'IA1', 1, '4.6600', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 609964774, '7.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4947),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '117.6400', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4948),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', ' ', 'IA1', 1, '113.8200', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 836734714, '199.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4949),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'CO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4950),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 7, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4951),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4952),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4953),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 5, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4954),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 17, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4955),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4956),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 28, '0.0000', '2015-09-01', '2015-09-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4957),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4958),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4959),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 13, '0.0000', '2015-09-01', '2015-09-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4960),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'JO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4961),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4962),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4963),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4964),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 55, '0.0000', '2015-09-01', '2015-09-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4965),
('APPLE', 'US', '805', ' ', '805 - Better Minor - engl. - OPENING and RESPONSE - Diagram', ' ', 'IA1', 1, '3.5000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 619289313, '4.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4966),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 8, '0.0000', '2015-09-01', '2015-09-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4967),
('APPLE', 'US', '520', ' ', '520 - Help Suit Trial Bid', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 755463889, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4968),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4969),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4970),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 608, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4971),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'RO', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4972),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 1, '8.9000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 609962419, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4973),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4974),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4975),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 18, '0.0000', '2015-09-01', '2015-09-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4976),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 17, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4977),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4978),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4979),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 12, '0.0000', '2015-09-01', '2015-09-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4980),
('APPLE', 'US', '20002', ' ', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 959316916, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4981),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1317, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4982),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'BR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4983),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 35, '0.0000', '2015-09-01', '2015-09-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4984),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4985),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4986),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 11, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4987),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4988),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '7.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4989),
('APPLE', 'US', '20002', ' ', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', ' ', 'IA1', -1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 959316916, '-10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 4990),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 158, '0.0000', '2015-09-01', '2015-09-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4991),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4992),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4993),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 10, '0.0000', '2015-09-01', '2015-09-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4994),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4995),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4996),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 5, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4997),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'IDR', 'ID', 'IDR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4998),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 4999),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5000),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 242, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5001),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 8, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5002),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 70, '0.0000', '2015-09-01', '2015-09-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5003),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5004),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 44, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5005),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 27, '0.0000', '2015-09-01', '2015-09-30', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5006),
('APPLE', 'US', '10002', ' ', '10002 - RKCB (Roman KeyCard Blackwood) 1430', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 959316919, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5007),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5008),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'TT', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5009),
('APPLE', 'US', '308', ' ', '308 - SAYC - Engl - First rebid by opener', ' ', 'IA1', 2, '7.7000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 609962419, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5010),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5011),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5012),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 12, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5013),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5014),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 7, '0.0000', '2015-09-01', '2015-09-30', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5015),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 3, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5016),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 14, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5017),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 11, '0.0000', '2015-09-01', '2015-09-30', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5018),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 26, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5019),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5020),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'RUB', 'RU', 'RUB', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5021),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 11, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5022),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'SI', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5023),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'KZ', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5024),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 36, '0.0000', '2015-09-01', '2015-09-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5025),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.4600', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 609989812, '0.7900', ' ', ' 1', ' ', ' ', 'Games', '', 5026),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'LB', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5027),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '14.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 5028),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5029),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5030),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'LU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5031),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5032),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5033),
('APPLE', 'US', '10050', ' ', '10050 Informationskontra - Forum D (Basis und 2012)', ' ', 'IA1', 1, '6.4600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 625730356, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5034),
('APPLE', 'US', '302', ' ', '302 Benjamin - Strong opening at the 2nd level', ' ', 'IA1', 1, '6.4100', '2015-09-01', '2015-09-30', 'EUR', 'FR', 'EUR', 945335825, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5035),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'SAR', 'SA', 'SAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5036),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 5, '0.0000', '2015-09-01', '2015-09-30', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5037),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'PT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5038),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5039),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'HR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5040),
('APPLE', 'US', '1400', ' ', '1400 - ACOL (incl. weak twos) - Start set', ' ', 'IA1', 1, '0.5600', '2015-09-01', '2015-09-30', 'EUR', 'IE', 'EUR', 609989812, '0.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5041),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 13, '0.0000', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5042),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 5, '0.0000', '2015-09-01', '2015-09-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5043),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 13, '0.0000', '2015-09-01', '2015-09-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5044),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5045),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 4, '0.0000', '2015-09-01', '2015-09-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5046),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5047),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'AR', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5048),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5049),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-09-01', '2015-09-30', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5050),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 1, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5051),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.3', '1F', 7, '0.0000', '2015-09-01', '2015-09-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5052),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 2, '11.7600', '2015-09-01', '2015-09-30', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 5053),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '1F', 39, '0.0000', '2015-09-01', '2015-09-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5054),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.4', '7F', 27, '0.0000', '2015-09-01', '2015-09-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5055),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5056),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5057),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5058),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 3, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5059),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 12, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5060),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 12, '0.0000', '2015-10-01', '2015-10-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5061),
('APPLE', 'US', '448', ' ', '448 - Forum D Plus 2015 - Oberfarbfit nach Zwischenreizung', ' ', 'IA1', 1, '6.4600', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 960127661, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5062),
('APPLE', 'US', '10041', ' ', '10041 - Puppet Stayman', ' ', 'IA1', 1, '6.4600', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 901410169, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5063),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 6, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5064),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5065),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5066),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5067),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5068),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5069),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-10-01', '2015-10-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5070),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5071),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5072),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5073),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 4, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5074),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 41, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5075),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5076),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5077),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 6, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5078),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5079),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 39, '0.0000', '2015-10-01', '2015-10-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5080),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 74, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5081),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5082),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.0', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5083),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5084),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5085),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-10-01', '2015-10-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5086),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'IS', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5087),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 5, '0.0000', '2015-10-01', '2015-10-31', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5088),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 47, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5089),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5090),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', ' ', 'IA1', 1, '7.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5091),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 3, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'PL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5092),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'SGD', 'SG', 'SGD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5093),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'EG', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5094),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5095),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5096),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 8, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5097),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5098),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '2.0', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5099),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.7600', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 5100);
INSERT INTO `appledaten` (`provider`, `providerCountry`, `sku`, `developer`, `title`, `version`, `productTypeIdentifier`, `units`, `developerProceeds`, `beginDate`, `endDate`, `customerCurrency`, `countryCode`, `currencyOfProceeds`, `appleIdentifier`, `customerPrice`, `promoCode`, `parentIdentifier`, `subscription`, `period`, `category`, `cmb`, `id`) VALUES
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5101),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 5, '0.0000', '2015-10-01', '2015-10-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5102),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', '', 'IAY', 1, '70.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 836739559, '99.9900', ' ', ' 1', 'Renewal', '1 Year', 'Games', '', 5103),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 9, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5104),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 3, '0.0000', '2015-10-01', '2015-10-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5105),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '14.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 5106),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'ILS', 'IL', 'ILS', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5107),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5108),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 51, '0.0000', '2015-10-01', '2015-10-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5109),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 6, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5110),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5111),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'PK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5112),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 7, '0.0000', '2015-10-01', '2015-10-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5113),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'BG', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5114),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 15, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5115),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5116),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5117),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 276, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5118),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5119),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5120),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 3, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5121),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 3, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5122),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5123),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5124),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 9, '0.0000', '2015-10-01', '2015-10-31', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5125),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5126),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5127),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 6, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5128),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.0', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5129),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 13, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5130),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5131),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 4, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5132),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 4, '0.0000', '2015-10-01', '2015-10-31', 'TRY', 'TR', 'TRY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5133),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 3, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5134),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 39, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5135),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5136),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5137),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 13, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5138),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5139),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 28, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5140),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 12, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5141),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'LK', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5142),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5143),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.2', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5144),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 6, '0.0000', '2015-10-01', '2015-10-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5145),
('APPLE', 'US', '312', ' ', '312 - Overcalls', ' ', 'IA1', 1, '4.9500', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 942296064, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 5146),
('APPLE', 'US', 'M1', ' ', 'M1 - Der Anfang (Minibridge I)', ' ', 'IA1', 1, '5.8800', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 579760995, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5147),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'TH', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5148),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5149),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5150),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 8, '0.0000', '2015-10-01', '2015-10-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5151),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.3', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5152),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5153),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', ' ', 'IAY', 1, '11.7600', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'New', '1 Month', 'Games', '', 5154),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '2.9', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5155),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 6, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5156),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5157),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5158),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-10-01', '2015-10-31', 'INR', 'IN', 'INR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5159),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 212, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5160),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'JPY', 'JP', 'JPY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5161),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5162),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5163),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 7, '0.0000', '2015-10-01', '2015-10-31', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5164),
('APPLE', 'US', '510', ' ', '510 Forum D 2012 - Die 2. Antwort des Responders', ' ', 'IA1', 1, '6.4600', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 634596426, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5165),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5166),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5167),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5168),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5169),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-10-01', '2015-10-31', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5170),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 1, '0.0000', '2015-10-01', '2015-10-31', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5171),
('APPLE', 'US', '360', ' ', '360 - Jacoby 2NT', ' ', 'IA1', 1, '8.9000', '2015-10-01', '2015-10-31', 'AUD', 'AU', 'AUD', 951294720, '13.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5172),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 2, '0.0000', '2015-10-01', '2015-10-31', 'MXN', 'MX', 'MXN', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5173),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 5, '0.0000', '2015-10-01', '2015-10-31', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5174),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', '', 'IAY', 1, '11.7600', '2015-10-01', '2015-10-31', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 5175),
('APPLE', 'US', '304', ' ', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings', ' ', 'IA1', 2, '7.7000', '2015-10-01', '2015-10-31', 'USD', 'US', 'USD', 609959316, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5176),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 10, '0.0000', '2015-10-01', '2015-10-31', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5177),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '7F', 7, '0.0000', '2015-10-01', '2015-10-31', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5178),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5179),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5180),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '2.9', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5181),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5182),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'CL', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5183),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 32, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5184),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 3, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5185),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5186),
('APPLE', 'US', '20020', ' ', '20020 - Farbbehandlung 1', '', 'IA1', 1, '6.4100', '2015-11-01', '2015-11-30', 'EUR', 'AT', 'EUR', 904617226, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5187),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5188),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 3, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5189),
('APPLE', 'US', 'R1', ' ', 'R1 - Die Eröffnungen Forum D - Basis', '', 'IA1', 1, '6.4600', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 573563664, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5190),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 16, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5191),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5192),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5193),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5194),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5195),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '2.8', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5196),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5197),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 7, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5198),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 22, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5199),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5200),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5201),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 8, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5202),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.3', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5203),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 4, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5204),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5205),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5206),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5207),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 3, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5208),
('APPLE', 'US', '1509', ' ', '1509 ACOL - First rebid diagram', '', 'IA1', 1, '4.9500', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 651430012, '8.4900', ' ', ' 1', ' ', ' ', 'Games', '', 5209),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 4, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5210),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5211),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'ES', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5212),
('APPLE', 'US', 'R7', ' ', 'R7 - NT-Eröffnungen und Antwort Forum D Basis ', '', 'IA1', 1, '6.4600', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 598631975, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5213),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 14, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5214),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'CNY', 'CN', 'CNY', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5215),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5216),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.3', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5217),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5218),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5219),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 12, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5220),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 17, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5221),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5222),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5223),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'CO', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5224),
('APPLE', 'US', 'ABO1', ' ', 'Abo_200_30', '', 'IAY', 1, '11.7600', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 836739558, '19.9900', ' ', ' 1', 'Renewal', '1 Month', 'Games', '', 5225),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'SEK', 'SE', 'SEK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5226),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5227),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5228),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', '', 'IA1', 1, '9.5400', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 609955394, '14.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5229),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5230),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5231),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5232),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'KW', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5233),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5234),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'CY', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5235),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.0', '3F', 3, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5236),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5237),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'DKK', 'DK', 'DKK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5238),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 35, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5239),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 8, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5240),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 6, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5241),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '2.9', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5242),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '2.8', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5243),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5244),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 7, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5245),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5246),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.0', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5247),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5248),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 37, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5249),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 11, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5250),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5251),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'ZAR', 'ZA', 'ZAR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5252),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 29, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5253),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 3, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5254),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 4, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5255),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5256),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 48, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5257),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.0', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5258),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5259),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5260),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 3, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5261),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.3', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'HKD', 'HK', 'HKD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5262),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'NZD', 'NZ', 'NZD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5263),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5264),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'GR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5265),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.4', '3F', 4, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5266),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'IE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5267),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5268),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'BE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5269),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 21, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5270),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5271),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'NL', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5272),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 6, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5273),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 1, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'HU', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5274),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'FR', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5275),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 7, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5276),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5277),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5278),
('APPLE', 'US', '301', ' ', '301 - SAYC - Engl - Openings', '', 'IA1', 1, '7.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 609955394, '9.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5279),
('APPLE', 'US', 'ABO2', ' ', 'Abo_600_365', '', 'IAY', 1, '58.8200', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 836739559, '99.9900', ' ', ' 1', 'New', '1 Year', 'Games', '', 5280),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 1, '0.0000', '2015-11-01', '2015-11-30', 'NOK', 'NO', 'NOK', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5281),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.0', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5282),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 3, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5283),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 2, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5284),
('APPLE', 'US', 'ALLINC', ' ', 'Flat', '', 'IA1', 1, '160.9900', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 836734714, '229.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5285),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 10, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5286),
('APPLE', 'US', '1401', ' ', '1401 - ACOL (incl. weak twos) - Openings', '', 'IA1', 1, '4.6600', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 609964774, '7.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5287),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 19, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5288),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 2, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'AT', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5289),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 3, '0.0000', '2015-11-01', '2015-11-30', 'CHF', 'CH', 'CHF', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5290),
('APPLE', 'US', 'R6', ' ', 'R6 - NT-Eröffnungen Forum D BASIS', '', 'IA1', 1, '6.4600', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 598619562, '10.9900', ' ', ' 1', ' ', ' ', 'Games', '', 5291),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '3F', 4, '0.0000', '2015-11-01', '2015-11-30', 'AUD', 'AU', 'AUD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5292),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.2', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'CAD', 'CA', 'CAD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5293),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '3.5', '7F', 22, '0.0000', '2015-11-01', '2015-11-30', 'EUR', 'DE', 'EUR', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5294),
('APPLE', 'US', '1 ', 'Klaus Maass ', 'Bridge Doddle ', '2.8', '3F', 1, '0.0000', '2015-11-01', '2015-11-30', 'USD', 'US', 'USD', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5295),
('APPLE', 'US', '1', 'Klaus Maass', 'Bridge Doddle', '3.5', '1F', 6, '0.0000', '2015-11-01', '2015-11-30', 'GBP', 'GB', 'GBP', 571617541, '0.0000', ' ', '  ', ' ', ' ', 'Games', '', 5296);

-- --------------------------------------------------------

--
-- Stand-in structure for view `appleFlatratesabo`
-- (See below for the actual view)
--
CREATE TABLE `appleFlatratesabo` (
`id` int(11)
,`beginDate` date
,`endDate` date
,`developerProceeds` decimal(10,4)
,`units` int(11)
,`sku` varchar(50)
,`currencyOfProceeds` varchar(50)
,`value` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `appleflatratesabo`
--

CREATE TABLE `appleflatratesabo` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `appleflatratesabonorefund`
--

CREATE TABLE `appleflatratesabonorefund` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `appleJahresabo`
-- (See below for the actual view)
--
CREATE TABLE `appleJahresabo` (
`id` int(11)
,`beginDate` date
,`endDate` date
,`developerProceeds` decimal(10,4)
,`units` int(11)
,`sku` varchar(50)
,`currencyOfProceeds` varchar(50)
,`value` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `applejahresabo`
--

CREATE TABLE `applejahresabo` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `applejahresabonorefund`
--

CREATE TABLE `applejahresabonorefund` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `applemonatsabo`
--

CREATE TABLE `applemonatsabo` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `appleMonatsabo`
-- (See below for the actual view)
--
CREATE TABLE `appleMonatsabo` (
`id` int(11)
,`beginDate` date
,`endDate` date
,`developerProceeds` decimal(10,4)
,`units` int(11)
,`sku` varchar(50)
,`currencyOfProceeds` varchar(50)
,`value` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `applemonatsabonorefund`
--

CREATE TABLE `applemonatsabonorefund` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `appleSaetze`
-- (See below for the actual view)
--
CREATE TABLE `appleSaetze` (
`id` int(11)
,`beginDate` date
,`endDate` date
,`developerProceeds` decimal(10,4)
,`units` int(11)
,`currencyOfProceeds` varchar(50)
,`sku` varchar(50)
,`satzName` tinytext
,`trId` int(11)
,`atId` int(11)
,`satzId` int(11)
,`value` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `applesaetze`
--

CREATE TABLE `applesaetze` (
  `id` int(11) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL,
  `developerProceeds` decimal(10,4) NOT NULL,
  `units` int(11) NOT NULL,
  `currencyOfProceeds` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `satzName` tinytext CHARACTER SET utf8 NOT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `satzId` int(11) NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `autordaten`
--

CREATE TABLE `autordaten` (
  `kId` int(11) NOT NULL,
  `at` int(11) NOT NULL DEFAULT '1',
  `abk` varchar(50) DEFAULT 'unbekannt',
  `name` varchar(50) DEFAULT '1',
  `vorname` varchar(50) DEFAULT 'unbekannt',
  `strasse` varchar(50) DEFAULT 'unbekannt',
  `plz` varchar(50) DEFAULT 'unbekannt',
  `ort` varchar(50) DEFAULT 'unbekannt',
  `mw` tinyint(4) DEFAULT '1',
  `tel` varchar(50) DEFAULT NULL,
  `mob` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bemerkung` tinytext,
  `stat` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autordaten`
--

INSERT INTO `autordaten` (`kId`, `at`, `abk`, `name`, `vorname`, `strasse`, `plz`, `ort`, `mw`, `tel`, `mob`, `email`, `bemerkung`, `stat`) VALUES
(10, 1, 'Alv', 'von Alvensleben', 'Wolfram', 'Unbekannt', 'Unbekannt', 'Unbekannt', 1, '666', '444', 'test@yahoo.de', 'Test 10', 1),
(11, 2, 'Braun', 'Braun', 'Raffael', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test4@yahoo.de', 'test 11', 1),
(12, 1, 'Roth', 'Roth', 'Thorsten', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test3@yahoo.de', 'test 12', 1),
(13, 1, 'Meckel', 'Meckel', 'Martin', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test4@yahoo.de', 'test 13', 1),
(14, 1, 'Kasimir', 'Kasimir', 'Udo', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test5@yahoo.de', 'test 14', 1),
(15, 1, 'Linde', 'Linde', 'Julius', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test6@yahoo.de', 'test 15', 1),
(16, 1, 'M. Gromöller', 'Gromöller', 'Michael', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test7@yahoo.de', 'test 16', 1),
(17, 1, 'Marie Eggeling', 'Eggeling', 'Marie', 'unbekannt', 'unbekannt', 'unbekannt', 0, 'unbekannt', 'unbekannt', 'test8@yahoo.de', 'test 17', 0),
(18, 1, 'Dirksen', 'Gerben', 'Dirksen', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test9@yahoo.de', 'test 18', 1),
(19, 1, 'Boldt', 'Boldt', 'Frederic', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test10@yahoo.de', 'test 19', 1),
(20, 1, 'Piekarek', 'Piekarek', 'Josef', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test20@yahoo.de', 'test 20', 1),
(21, 1, '', 'Maaß', 'Klaus', 'Unbekannt', 'Unbekannt', 'Unbekannt', 1, '', '', 'test21@yahoo.de', 'Test 21', 1),
(22, 1, 'W. Gromöller', 'Gromöller', 'Wilhelm', 'Unbekannt', 'Unbekannt', 'Unbekannt', 1, '', '', 'test22@yahoo.de', 'Test 22', 1),
(23, 1, 'Rohowsky', 'Rohowsky', 'Roland', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test23@yahoo.de', 'test 23', 1),
(24, 0, 'Silva', 'Silva', 'Henrique', 'unbekannt', 'unbekannt', 'unbekannt', 1, 'unbekannt', 'unbekannt', 'test24@yahoo.de', 'test 24', 1),
(50, 0, 'na', 'Trifft nicht zu', 'Nicht löschen', 'Nicht löschen', 'Nicht löschen', 'Nicht löschen', 0, '', '', '', '', 1),
(53, 1, 'Güttler', 'Güttler', 'Güttler', 'Güttler', '12345', 'Güttler', 1, '', '', '', 'Güttler', 1),
(54, 0, 'Tavlan', 'Tavlan', 'unbekannt', 'unbekannt', 'unbekannt', 'unbekannt', 1, NULL, NULL, NULL, NULL, 1),
(55, 1, 'FZ', 'FZ', 'unbekannt', 'unbekannt', 'unbekannt', 'unbekannt', 1, NULL, NULL, NULL, NULL, 1),
(56, 1, '456', 'Gregorio', 'G', 'Dfdsg', 'Gds', 'G', 1, '', '', '', '', 1),
(57, 1, '', 'Df', 'G', 'G', 'Gf', 'Fg', 1, '', '', '', '', 1),
(58, 1, 'Gfdsgdsg', 'Dfsgsfdg', 'Dsdf', '465', '546', '46545', 1, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bestellung`
--

CREATE TABLE `bestellung` (
  `bId` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `kId2` int(11) NOT NULL,
  `rechnungsNummer` varchar(50) DEFAULT NULL,
  `rl` int(11) DEFAULT '2',
  `preislisteName` char(50) DEFAULT '1',
  `item_1` int(11) DEFAULT '0',
  `item_2` int(11) DEFAULT '0',
  `item_3` int(11) DEFAULT '0',
  `item_4` int(11) DEFAULT '0',
  `item_5` int(11) DEFAULT '0',
  `item_6` int(11) DEFAULT '0',
  `item_7` int(11) DEFAULT '0',
  `item_8` int(11) DEFAULT '0',
  `item_9` int(11) DEFAULT '0',
  `item_10` int(11) DEFAULT '0',
  `item_11` int(11) DEFAULT '0',
  `item_12` int(11) DEFAULT '0',
  `item_13` int(11) DEFAULT '0',
  `item_14` int(11) DEFAULT '0',
  `item_15` int(11) DEFAULT '0',
  `item_16` int(11) DEFAULT '0',
  `item_17` int(11) DEFAULT '0',
  `item_18` int(11) DEFAULT '0',
  `item_19` int(11) DEFAULT '0',
  `item_20` int(11) DEFAULT '0',
  `item_21` int(11) DEFAULT '0',
  `item_22` int(11) DEFAULT '0',
  `item_23` int(11) DEFAULT '0',
  `item_24` int(11) DEFAULT '0',
  `item_25` int(11) DEFAULT '0',
  `item_26` int(11) DEFAULT '0',
  `item_27` int(11) DEFAULT '0',
  `item_28` int(11) DEFAULT '0',
  `item_29` int(11) DEFAULT '0',
  `item_30` int(11) DEFAULT '0',
  `item_31` int(11) DEFAULT '0',
  `item_32` int(11) DEFAULT '0',
  `item_33` int(11) DEFAULT '0',
  `item_34` int(11) DEFAULT '0',
  `item_35` int(11) DEFAULT '0',
  `item_36` int(11) DEFAULT '0',
  `item_37` int(11) DEFAULT '0',
  `item_38` int(11) DEFAULT '0',
  `item_39` int(11) DEFAULT '0',
  `item_40` int(11) DEFAULT '0',
  `item_41` int(11) DEFAULT '0',
  `item_42` int(11) DEFAULT '0',
  `item_43` int(11) DEFAULT '0',
  `item_44` int(11) DEFAULT '0',
  `item_45` int(11) DEFAULT '0',
  `item_46` int(11) DEFAULT '0',
  `item_47` int(11) DEFAULT '0',
  `item_48` int(11) DEFAULT '0',
  `item_49` int(11) DEFAULT '0',
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `porto` float DEFAULT NULL,
  `preis` float NOT NULL DEFAULT '0',
  `buecher` tinyint(4) NOT NULL DEFAULT '0',
  `portoGewuenscht` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bestellung`
--

INSERT INTO `bestellung` (`bId`, `datum`, `kId2`, `rechnungsNummer`, `rl`, `preislisteName`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `item_10`, `item_11`, `item_12`, `item_13`, `item_14`, `item_15`, `item_16`, `item_17`, `item_18`, `item_19`, `item_20`, `item_21`, `item_22`, `item_23`, `item_24`, `item_25`, `item_26`, `item_27`, `item_28`, `item_29`, `item_30`, `item_31`, `item_32`, `item_33`, `item_34`, `item_35`, `item_36`, `item_37`, `item_38`, `item_39`, `item_40`, `item_41`, `item_42`, `item_43`, `item_44`, `item_45`, `item_46`, `item_47`, `item_48`, `item_49`, `stat`, `porto`, `preis`, `buecher`, `portoGewuenscht`) VALUES
(1082, '2012-12-05', 1001, '301/1212', 2, '1', 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 90, 0, 0),
(1083, '2012-12-05', 1002, '302/1212', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1084, '2012-12-06', 1003, '303/1212', 2, '1', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1085, '2012-12-05', 1004, '304/1212', 2, '1', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1086, '2012-12-10', 1005, '305/1212', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1087, '2012-12-11', 1006, '306/1212', 2, '2', 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1088, '2012-12-11', 1007, '307/1212', 2, '1', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1089, '2012-12-11', 1008, '308/1212', 2, '1', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1090, '2012-12-16', 1009, '309/1212', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1091, '2012-11-07', 1010, '310/1112', 2, '1', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1092, '2012-11-06', 1011, '311/1112', 2, '1', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1093, '2012-11-08', 1012, '312/1112', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1094, '2012-11-08', 1013, '313/1112', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1095, '2012-11-06', 1014, '314/1112', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1096, '2012-11-06', 1015, '315/1112', 2, '1', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1097, '2012-10-31', 1016, '316/1012', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1098, '2012-12-18', 1017, '317/1212', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1099, '2012-12-31', 1018, '318/1212', 2, '2', 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1100, '2013-01-13', 1019, '319/0113', 2, '1', 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1101, '2013-01-13', 1020, '320/0113', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1102, '2013-01-14', 1021, '321/0113', 2, '2', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1103, '2013-01-24', 1022, '322/0113', 2, '2', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1104, '2013-01-24', 1023, '323/0113', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1105, '2013-01-24', 1024, '324/0113', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1106, '2013-01-24', 1025, '325/0113', 2, '1', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1107, '2013-01-26', 1026, '326/0113', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1108, '2013-01-26', 1027, '327/0113', 2, '2', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1109, '2013-01-26', 1028, '328/0113', 2, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1110, '2013-01-26', 1029, '329/0113', 2, '2', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1111, '2013-02-01', 1030, '330/0213', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1112, '2013-02-01', 1031, '331/0213', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1113, '2013-02-01', 1032, '332/0213', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1114, '2013-02-01', 1033, '333/0213', 2, '2', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1115, '2013-02-01', 1034, '334/0213', 2, '1', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1116, '2013-02-03', 1035, '335/0213', 2, '1', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1117, '2013-02-04', 1036, '336/0213', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1118, '2013-02-04', 1037, '337/0213', 2, '1', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1119, '2013-02-04', 1038, '338/0213', 2, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1120, '2013-02-04', 1039, '339/0213', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1121, '2013-02-15', 1040, '340/0213', 2, '2', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1122, '2013-02-05', 1041, '341/0213', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 92, 0, NULL),
(1123, '2013-02-10', 1042, '342/0213', 2, '1', 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1124, '2013-02-10', 1043, '343/0213', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1125, '2013-02-13', 1044, '344/0213', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1126, '2013-02-13', 1045, '345/0213', 2, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1127, '2013-02-16', 1046, '346/0213', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1128, '2013-02-26', 1047, '347/0213', 2, '1', 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1129, '2013-02-28', 1048, '348/0213', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1130, '2013-02-28', 1046, '349/0213', 2, '1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1131, '2013-03-05', 1049, '350/0313', 2, '1', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1132, '2013-03-05', 1050, '351/0313', 2, '1', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1133, '2013-03-05', 1051, '352/0313', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1134, '2013-03-07', 1052, '001/0313', 1, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1135, '2013-03-07', 1053, '002/0313', 1, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1136, '2013-03-07', 1054, '003/0313', 1, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1137, '2013-03-17', 1055, '357/0313', 2, '1', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1138, '2013-03-24', 1056, '358/0313', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1139, '2013-03-24', 1057, '359/0313', 2, '1', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1140, '2013-03-24', 1058, '360/0313', 2, '3', 25, 0, 20, 20, 40, 20, 10, 0, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1141, '2013-03-28', 1059, '361/0313', 2, '1', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1142, '2013-03-28', 1060, '362/0313', 2, '1', 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1143, '2013-04-10', 1032, '363/0413', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 2.5, 0, 0, 2.5),
(1144, '2013-04-13', 1061, '364/0413', 2, '2', 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1145, '2013-04-13', 1062, '365/0413', 1, '3', 5, 0, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1146, '2013-04-13', 1062, '366/0413', 2, '3', 8, 0, 13, 0, 13, 0, 13, 0, 13, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1147, '2013-04-13', 1063, '367/0413', 2, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1148, '2013-04-16', 1064, '368/0413', 2, '1', 0, 0, 0, 0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1149, '2013-04-18', 1065, '369/0413', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1150, '2013-04-23', 1062, '370/0413', 2, '3', 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1151, '2013-04-23', 1066, '371/0413', 2, '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1152, '2013-04-23', 1058, '372/0413', 2, '3', 0, 0, 5, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1153, '2013-04-23', 1067, '373/0413', 2, '2', 0, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1154, '2013-04-23', 1066, '374/0413', 2, '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1155, '2013-04-23', 1068, '375/0413', 2, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1156, '2013-04-23', 1069, '376/0413', 2, '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1157, '2013-04-23', 1061, '377/0413', 2, '2', 0, 0, 0, 3, 5, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1158, '2013-04-24', 1070, '378/0413', 2, '1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1159, '2013-04-25', 1071, '379/0413', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1160, '2013-04-28', 1072, '380/0413', 2, '1', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2.5, 0, 0, 2.5),
(1161, '2013-04-28', 1073, '381/0413', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2.5, 0, 0, 2.5),
(1162, '2013-04-29', 1036, '382/0413', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2.5, 0, 0, 2.5),
(1163, '2015-09-11', 1074, '383/0915', 2, '50', 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 144, 0, 0),
(1164, '2015-10-16', 1075, '384/1015', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 15, 1, 2.5),
(1165, '2015-10-28', 1062, '385/1015', 7, '3', 0, 0, 0, 10, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 218.5, 0, NULL),
(1166, '2015-11-10', 1060, '386/1115', 2, '3', 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 69, 0, 4),
(1167, '2015-12-03', 1076, '387/1215', 2, '1', 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 90, 0, NULL),
(1168, '2015-12-08', 1046, '388/1215', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 182, 0, NULL),
(1169, '2015-12-20', 1077, '389/1215', 8, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 60, 1, 0),
(1170, '2016-01-12', 1078, '390/0116', 2, '1', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 60, 1, NULL),
(1171, '2016-01-15', 1077, '391/0116', 9, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 45, 0, NULL),
(1172, '2016-01-27', 1079, '392/0116', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 62, 0, NULL),
(1173, '2016-01-27', 1077, '393/0116', 9, '1', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 90, 1, NULL),
(1174, '2016-01-27', 1080, '394/0116', 9, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 109, 0, NULL),
(1175, '2016-01-27', 1081, '395/0116', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 15, 0, NULL),
(1176, '2016-02-04', 1058, '396/0216', 2, '3', 0, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 207, 0, NULL),
(1177, '2016-02-05', 1082, '397/0216', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 182, 0, NULL),
(1178, '2016-03-03', 1083, '398/0316', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 30, 0, NULL),
(1179, '2016-03-10', 1058, '399/0316', 2, '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 115, 0, NULL),
(1180, '2016-04-05', 1084, '400/0416', 2, '2', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 78, 0, 2.5),
(1181, '2016-04-05', 1085, '401/0416', 10, '2', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 143, 0, NULL),
(1182, '2016-05-25', 1068, '402/0516', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 165, 0, NULL),
(1183, '2016-05-29', 1068, '403/0516', 2, '1', 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 75, 0, NULL),
(1184, '2016-07-06', 1058, '404/0716', 2, '3', 0, 0, 0, 5, 0, 5, 0, 2, 0, 10, 0, 2, 0, 5, 0, 2, 0, 0, 0, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 471.5, 0, NULL),
(1185, '2016-08-05', 1086, '405/0816', 2, '1', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 45, 0, 5),
(1186, '2016-09-26', 1087, '406/0916', 2, '1', 0, 0, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 120, 0, NULL),
(1187, '2016-10-12', 1088, '407/1016', 2, '1', 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 60, 0, NULL),
(1188, '2016-10-19', 1058, '408/1016', 2, '3', 0, 0, 0, 0, 0, 5, 0, 10, 0, 10, 0, 0, 0, 5, 0, 5, 0, 10, 0, 5, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 805, 0, NULL),
(1189, '2016-10-21', 1087, '409/1016', 2, '2', 2, 0, 0, 2, 0, 2, 0, 0, 0, 3, 0, 0, 0, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 260, 0, NULL),
(1190, '2016-11-30', 1089, '410/1116', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 45, 0, NULL),
(1191, '2016-12-13', 1090, '411/1216', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 30, 0, NULL),
(1192, '2017-01-05', 1091, '412/0117', 2, '1', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 15, 0, NULL),
(1193, '2017-02-01', 1092, '413/0217', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 182, 0, NULL),
(1194, '2017-07-18', 1093, '414/0717', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 15, 0, NULL),
(1195, '2017-07-18', 1093, '415/0717', 11, '1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 15, 0, NULL),
(1196, '2017-08-29', 1094, '416/0817', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(1197, '2017-08-29', 1094, '417/0817', 11, '2', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 130, 0, NULL),
(1198, '2017-08-30', 1062, '418/0817', 12, '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 69, 0, NULL),
(1199, '2017-09-05', 1095, '419/0917', 2, '1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 15, 0, NULL),
(1200, '2017-10-11', 1058, '420/1017', 12, '3', 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 345, 0, NULL),
(1201, '2017-11-19', 1096, '421/1117', 12, '2', 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 65, 0, NULL),
(1202, '2017-12-22', 1062, '422/1217', 12, '3', 0, 0, 0, 11, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 253, 0, NULL),
(1203, '2018-03-16', 1096, '423/0318', 12, '2', 0, 0, 0, 0, 0, 4, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 117, 0, NULL),
(1204, '2018-03-23', 1097, '424/0318', 11, '1', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 135, 0, 2.5),
(1205, '2018-03-28', 1058, '425/0318', 12, '3', 0, 0, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 345, 0, NULL),
(1206, '2018-06-03', 1058, '426/0618', 12, '3', 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 460, 0, NULL),
(1207, '2018-07-31', 1098, '427/0718', 12, '1', 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 105, 0, NULL),
(1208, '2018-08-01', 1099, '428/0818', 12, '1', 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 60, 0, NULL),
(1209, '2018-09-13', 1100, '429/0918', 2, '1', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 105, 0, 2.5),
(1210, '2018-11-11', 1099, '430/1118', 12, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 30, 0, NULL),
(1211, '2018-11-11', 1101, '431/1118', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 15, 0, NULL),
(1212, '2019-04-01', 1058, '432/0419', 12, '3', 0, 0, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(1213, '2019-05-27', 1058, '433/0519', 12, '3', 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 345, 0, NULL),
(1214, '2019-07-25', 1102, '434/0719', 11, '1', 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 60, 0, NULL),
(1215, '2019-08-28', 1102, '435/0819', 11, '1', 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 60, 0, NULL),
(1216, '2019-11-01', 1058, '436/1119', 12, '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 230, 0, NULL),
(1217, '2019-11-01', 1103, '437/1119', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL),
(1218, '2019-11-01', 1103, '438/1119', 13, '2', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 143, 0, NULL),
(1219, '2019-11-12', 1103, '439/1119', 13, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 68, 0, NULL),
(1220, '2020-01-29', 1104, '440/0120', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 30, 0, NULL),
(1221, '2020-03-13', 1105, '441/0320', 2, '1', 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 30, 0, NULL),
(1222, '2020-05-26', 1105, '442/0520', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 45, 0, NULL),
(1223, '2020-07-02', 1105, '443/0720', 13, '4', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34.5, 0, NULL),
(1224, '2020-07-02', 1105, '444/0720', 2, '1', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 45, 0, NULL),
(1225, '2020-09-21', 1106, '445/0920', 14, '4', 50, 0, 0, 50, 0, 50, 0, 50, 0, 50, 0, 50, 0, 50, 0, 50, 0, 50, 0, 50, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6900, 0, NULL),
(1226, '2020-10-16', 1107, '446/1020', 2, '1', 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 30, 0, NULL),
(1227, '2020-11-04', 1058, '447/1120', 12, '3', 0, 0, 0, 5, 0, 0, 0, 0, 0, 3, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 230, 0, NULL),
(1228, '2021-01-25', 1108, '448/0121', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 60, 0, NULL),
(1229, '2021-03-10', 1058, '449/0321', 12, '3', 0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 230, 0, NULL),
(1230, '2022-04-13', 1109, '450/0422', 2, '2', 0, 16, 0, 31, 0, 22, 0, 23, 0, 34, 0, 23, 0, 22, 0, 17, 0, 26, 0, 28, 0, 30, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3887, 0, NULL),
(1231, '2023-10-07', 1110, '451/1023', 2, '1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 107, 0, NULL),
(1232, '2023-11-24', 1111, '452/1123', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 45, 0, NULL),
(1233, '2023-12-05', 1039, '453/1223', 2, '1', 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 92, 0, NULL),
(1234, '2024-04-09', 1112, '454/0424', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 90, 0, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Ccustom`
-- (See below for the actual view)
--
CREATE TABLE `Ccustom` (
`bId` int(11)
,`datum` date
,`kId2` int(11)
,`rechnungsNummer` varchar(50)
,`rl` int(11)
,`preislisteName` char(50)
,`item_1` int(11)
,`item_2` int(11)
,`item_3` int(11)
,`item_4` int(11)
,`item_5` int(11)
,`item_6` int(11)
,`item_7` int(11)
,`item_8` int(11)
,`item_9` int(11)
,`item_10` int(11)
,`item_11` int(11)
,`item_12` int(11)
,`item_13` int(11)
,`item_14` int(11)
,`item_15` int(11)
,`item_16` int(11)
,`item_17` int(11)
,`item_18` int(11)
,`item_19` int(11)
,`item_20` int(11)
,`item_21` int(11)
,`item_22` int(11)
,`item_23` int(11)
,`item_24` int(11)
,`item_25` int(11)
,`item_26` int(11)
,`item_27` int(11)
,`item_28` int(11)
,`item_29` int(11)
,`item_30` int(11)
,`item_31` int(11)
,`item_32` int(11)
,`item_33` int(11)
,`item_34` int(11)
,`item_35` int(11)
,`item_36` int(11)
,`item_37` int(11)
,`item_38` int(11)
,`item_39` int(11)
,`item_40` int(11)
,`item_41` int(11)
,`item_42` int(11)
,`item_43` int(11)
,`item_44` int(11)
,`item_45` int(11)
,`item_46` int(11)
,`item_47` int(11)
,`item_48` int(11)
,`item_49` int(11)
,`stat` tinyint(4)
,`porto` float
,`preis` float
,`buecher` tinyint(4)
,`portoGewuenscht` float
,`lrName` varchar(50)
,`preisName` text
);

-- --------------------------------------------------------

--
-- Table structure for table `ccustom`
--

CREATE TABLE `ccustom` (
  `bId` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `kId2` int(11) NOT NULL,
  `rechnungsNummer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rl` int(11) DEFAULT NULL,
  `preislisteName` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_1` int(11) DEFAULT NULL,
  `item_2` int(11) DEFAULT NULL,
  `item_3` int(11) DEFAULT NULL,
  `item_4` int(11) DEFAULT NULL,
  `item_5` int(11) DEFAULT NULL,
  `item_6` int(11) DEFAULT NULL,
  `item_7` int(11) DEFAULT NULL,
  `item_8` int(11) DEFAULT NULL,
  `item_9` int(11) DEFAULT NULL,
  `item_10` int(11) DEFAULT NULL,
  `item_11` int(11) DEFAULT NULL,
  `item_12` int(11) DEFAULT NULL,
  `item_13` int(11) DEFAULT NULL,
  `item_14` int(11) DEFAULT NULL,
  `item_15` int(11) DEFAULT NULL,
  `item_16` int(11) DEFAULT NULL,
  `item_17` int(11) DEFAULT NULL,
  `item_18` int(11) DEFAULT NULL,
  `item_19` int(11) DEFAULT NULL,
  `item_20` int(11) DEFAULT NULL,
  `item_21` int(11) DEFAULT NULL,
  `item_22` int(11) DEFAULT NULL,
  `item_23` int(11) DEFAULT NULL,
  `item_24` int(11) DEFAULT NULL,
  `item_25` int(11) DEFAULT NULL,
  `item_26` int(11) DEFAULT NULL,
  `item_27` int(11) DEFAULT NULL,
  `item_28` int(11) DEFAULT NULL,
  `item_29` int(11) DEFAULT NULL,
  `item_30` int(11) DEFAULT NULL,
  `item_31` int(11) DEFAULT NULL,
  `item_32` int(11) DEFAULT NULL,
  `item_33` int(11) DEFAULT NULL,
  `item_34` int(11) DEFAULT NULL,
  `item_35` int(11) DEFAULT NULL,
  `item_36` int(11) DEFAULT NULL,
  `item_37` int(11) DEFAULT NULL,
  `item_38` int(11) DEFAULT NULL,
  `item_39` int(11) DEFAULT NULL,
  `item_40` int(11) DEFAULT NULL,
  `item_41` int(11) DEFAULT NULL,
  `item_42` int(11) DEFAULT NULL,
  `item_43` int(11) DEFAULT NULL,
  `item_44` int(11) DEFAULT NULL,
  `item_45` int(11) DEFAULT NULL,
  `item_46` int(11) DEFAULT NULL,
  `item_47` int(11) DEFAULT NULL,
  `item_48` int(11) DEFAULT NULL,
  `item_49` int(11) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `porto` float DEFAULT NULL,
  `preis` float NOT NULL,
  `buecher` tinyint(4) NOT NULL,
  `portoGewuenscht` float DEFAULT NULL,
  `lrName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `preisName` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `copyme`
--

CREATE TABLE `copyme` (
  `Spalte 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency` varchar(50) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency`, `value`, `id`, `country`) VALUES
('EUR', '1.00', 1, 'europe'),
('SEK', '9.36', 2, 'Swedish Krona'),
('CAD', '1.46', 3, 'Canadian Dollar'),
('USD', '1.14', 4, 'usa'),
('AUD', '1.55', 5, 'Australian Dollar'),
('TRY', '3.28', 6, 'Turkish Lira'),
('MXN', '18.64', 7, 'Mexican Peso'),
('CHF', '1.08', 8, 'Swiss Franc'),
('GBP', '0.74', 9, 'British Pound'),
('CNY', '7.22', 10, 'Chinese Yuan'),
('ZAR', '14.86', 11, 'South African Rand'),
('ILS', '4.33', 12, 'Israeli New Sheqel'),
('NZD', '1.66', 13, 'New Zealand Dollar'),
('NOK', '9.23', 14, 'Norwegian Krone'),
('JPY', '135.06', 15, 'Japanese Yen'),
('TWD', '36.33', 16, 'New Taiwan Dollar'),
('SGD', '1.57', 17, 'Singapore Dollar'),
('IDR', '15282.94', 18, 'Indonesian Rupiah'),
('AED', '4.18', 19, 'United Arab Emirates Dirham'),
('DKK', '7.46', 20, 'Danish Krone'),
('INR', '73.73', 21, 'Indian Rupee'),
('HKD', '8.82', 22, 'Hong Kong Dollar'),
('RUB', '70.23', 23, 'Russian Ruble'),
('SAR', '4.27', 24, 'Saudi Riyal');

-- --------------------------------------------------------

--
-- Table structure for table `custom`
--

CREATE TABLE `custom` (
  `bId` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `kId2` int(11) NOT NULL,
  `rechnungsNummer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rl` int(11) DEFAULT NULL,
  `preislisteName` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_1` int(11) DEFAULT NULL,
  `item_2` int(11) DEFAULT NULL,
  `item_3` int(11) DEFAULT NULL,
  `item_4` int(11) DEFAULT NULL,
  `item_5` int(11) DEFAULT NULL,
  `item_6` int(11) DEFAULT NULL,
  `item_7` int(11) DEFAULT NULL,
  `item_8` int(11) DEFAULT NULL,
  `item_9` int(11) DEFAULT NULL,
  `item_10` int(11) DEFAULT NULL,
  `item_11` int(11) DEFAULT NULL,
  `item_12` int(11) DEFAULT NULL,
  `item_13` int(11) DEFAULT NULL,
  `item_14` int(11) DEFAULT NULL,
  `item_15` int(11) DEFAULT NULL,
  `item_16` int(11) DEFAULT NULL,
  `item_17` int(11) DEFAULT NULL,
  `item_18` int(11) DEFAULT NULL,
  `item_19` int(11) DEFAULT NULL,
  `item_20` int(11) DEFAULT NULL,
  `item_21` int(11) DEFAULT NULL,
  `item_22` int(11) DEFAULT NULL,
  `item_23` int(11) DEFAULT NULL,
  `item_24` int(11) DEFAULT NULL,
  `item_25` int(11) DEFAULT NULL,
  `item_26` int(11) DEFAULT NULL,
  `item_27` int(11) DEFAULT NULL,
  `item_28` int(11) DEFAULT NULL,
  `item_29` int(11) DEFAULT NULL,
  `item_30` int(11) DEFAULT NULL,
  `item_31` int(11) DEFAULT NULL,
  `item_32` int(11) DEFAULT NULL,
  `item_33` int(11) DEFAULT NULL,
  `item_34` int(11) DEFAULT NULL,
  `item_35` int(11) DEFAULT NULL,
  `item_36` int(11) DEFAULT NULL,
  `item_37` int(11) DEFAULT NULL,
  `item_38` int(11) DEFAULT NULL,
  `item_39` int(11) DEFAULT NULL,
  `item_40` int(11) DEFAULT NULL,
  `item_41` int(11) DEFAULT NULL,
  `item_42` int(11) DEFAULT NULL,
  `item_43` int(11) DEFAULT NULL,
  `item_44` int(11) DEFAULT NULL,
  `item_45` int(11) DEFAULT NULL,
  `item_46` int(11) DEFAULT NULL,
  `item_47` int(11) DEFAULT NULL,
  `item_48` int(11) DEFAULT NULL,
  `item_49` int(11) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `porto` float DEFAULT NULL,
  `preis` float NOT NULL,
  `buecher` tinyint(4) NOT NULL,
  `portoGewuenscht` float DEFAULT NULL,
  `lrName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `preisName` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customautor`
--

CREATE TABLE `customautor` (
  `Id` int(11) NOT NULL,
  `Preis` decimal(10,4) DEFAULT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `satzCode` varchar(50) CHARACTER SET utf8 NOT NULL,
  `atId` int(11) NOT NULL,
  `trId` int(11) NOT NULL,
  `kId` int(11) NOT NULL,
  `at` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vorname` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `geloescht`
--

CREATE TABLE `geloescht` (
  `gId` int(11) NOT NULL,
  `bId` int(11) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `kId2` int(11) DEFAULT NULL,
  `rechnungsNummer` varchar(50) DEFAULT NULL,
  `rl` int(11) DEFAULT '2',
  `preislisteName` char(50) DEFAULT '1',
  `item_1` int(11) DEFAULT '0',
  `item_2` int(11) DEFAULT '0',
  `item_3` int(11) DEFAULT '0',
  `item_4` int(11) DEFAULT '0',
  `item_5` int(11) DEFAULT '0',
  `item_6` int(11) DEFAULT '0',
  `item_7` int(11) DEFAULT '0',
  `item_8` int(11) DEFAULT '0',
  `item_9` int(11) DEFAULT '0',
  `item_10` int(11) DEFAULT '0',
  `item_11` int(11) DEFAULT '0',
  `item_12` int(11) DEFAULT '0',
  `item_13` int(11) DEFAULT '0',
  `item_14` int(11) DEFAULT '0',
  `item_15` int(11) DEFAULT '0',
  `item_16` int(11) DEFAULT '0',
  `item_17` int(11) DEFAULT '0',
  `item_18` int(11) DEFAULT '0',
  `item_19` int(11) DEFAULT '0',
  `item_20` int(11) DEFAULT '0',
  `item_21` int(11) DEFAULT '0',
  `item_22` int(11) DEFAULT '0',
  `item_23` int(11) DEFAULT '0',
  `item_24` int(11) DEFAULT '0',
  `item_25` int(11) DEFAULT '0',
  `item_26` int(11) DEFAULT '0',
  `item_27` int(11) DEFAULT '0',
  `item_28` int(11) DEFAULT '0',
  `item_29` int(11) DEFAULT '0',
  `item_30` int(11) DEFAULT '0',
  `item_31` int(11) DEFAULT '0',
  `item_32` int(11) DEFAULT '0',
  `item_33` int(11) DEFAULT '0',
  `item_34` int(11) DEFAULT '0',
  `item_35` int(11) DEFAULT '0',
  `item_36` int(11) DEFAULT '0',
  `item_37` int(11) DEFAULT '0',
  `item_38` int(11) DEFAULT '0',
  `item_39` int(11) DEFAULT '0',
  `item_40` int(11) DEFAULT '0',
  `item_41` int(11) DEFAULT '0',
  `item_42` int(11) DEFAULT '0',
  `item_43` int(11) DEFAULT '0',
  `item_44` int(11) DEFAULT '0',
  `item_45` int(11) DEFAULT '0',
  `item_46` int(11) DEFAULT '0',
  `item_47` int(11) DEFAULT '0',
  `item_48` int(11) DEFAULT '0',
  `item_49` int(11) DEFAULT '0',
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `porto` float DEFAULT NULL,
  `preis` float NOT NULL DEFAULT '0',
  `buecher` tinyint(4) NOT NULL DEFAULT '0',
  `portoGewuenscht` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `geloescht`
--

INSERT INTO `geloescht` (`gId`, `bId`, `datum`, `kId2`, `rechnungsNummer`, `rl`, `preislisteName`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `item_10`, `item_11`, `item_12`, `item_13`, `item_14`, `item_15`, `item_16`, `item_17`, `item_18`, `item_19`, `item_20`, `item_21`, `item_22`, `item_23`, `item_24`, `item_25`, `item_26`, `item_27`, `item_28`, `item_29`, `item_30`, `item_31`, `item_32`, `item_33`, `item_34`, `item_35`, `item_36`, `item_37`, `item_38`, `item_39`, `item_40`, `item_41`, `item_42`, `item_43`, `item_44`, `item_45`, `item_46`, `item_47`, `item_48`, `item_49`, `stat`, `porto`, `preis`, `buecher`, `portoGewuenscht`) VALUES
(3, 1165, '2015-08-04', 1093, '502/0815', 5, '1', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 92, 1, NULL),
(4, 1166, '2015-09-01', 1093, '502/0915', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(5, 1171, '2015-09-01', 1093, '506/0915', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(6, 1172, '2015-09-01', 1093, '506/0915', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(7, 1177, '2015-09-02', 1093, '510/0915', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(8, 1174, '2015-09-02', 1093, '507/0915', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(9, 1175, '2015-09-02', 1093, '508/0915', 2, '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, NULL),
(10, 1186, '2016-08-05', 1086, '406/0816', 2, '52', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 50, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `google`
--

CREATE TABLE `google` (
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `googlebridgedoddle`
--

CREATE TABLE `googlebridgedoddle` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleBridgeDoddleNoRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleBridgeDoddleNoRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlebridgedoddlenorefund`
--

CREATE TABLE `googlebridgedoddlenorefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleBridgeDoddleRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleBridgeDoddleRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlebridgedoddlerefund`
--

CREATE TABLE `googlebridgedoddlerefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `googleflatratesabo`
--

CREATE TABLE `googleflatratesabo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleFlatratesaboNoRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleFlatratesaboNoRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googleflatratesabonorefund`
--

CREATE TABLE `googleflatratesabonorefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `googleflatratesaborefund`
--

CREATE TABLE `googleflatratesaborefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleFlatratesaboRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleFlatratesaboRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlejahresabo`
--

CREATE TABLE `googlejahresabo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleJahresaboNoRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleJahresaboNoRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlejahresabonorefund`
--

CREATE TABLE `googlejahresabonorefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleJahresaboRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleJahresaboRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlejahresaborefund`
--

CREATE TABLE `googlejahresaborefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `googlemonatsabo`
--

CREATE TABLE `googlemonatsabo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleMonatsaboNoRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleMonatsaboNoRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlemonatsabonorefund`
--

CREATE TABLE `googlemonatsabonorefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleMonatsaboRefund`
-- (See below for the actual view)
--
CREATE TABLE `googleMonatsaboRefund` (
`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`skuId` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `googlemonatsaborefund`
--

CREATE TABLE `googlemonatsaborefund` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `skuId` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `googlepermanentflatrate`
--

CREATE TABLE `googlepermanentflatrate` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Stand-in structure for view `googleSaetze`
-- (See below for the actual view)
--
CREATE TABLE `googleSaetze` (
`sku` varchar(50)
,`id` int(11)
,`date` date
,`preis` decimal(10,4)
,`refund` varchar(50)
,`trId` int(11)
,`atId` int(11)
,`satzId` int(11)
,`satzName` tinytext
);

-- --------------------------------------------------------

--
-- Table structure for table `googlesaetze`
--

CREATE TABLE `googlesaetze` (
  `sku` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `refund` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `trId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `satzId` int(11) NOT NULL,
  `satzName` tinytext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `googletestabo`
--

CREATE TABLE `googletestabo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `preis` decimal(10,4) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `iId` int(11) NOT NULL,
  `iName` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`iId`, `iName`) VALUES
(1, 'Der Anfang M1'),
(2, 'Der Anfang M1-12'),
(3, 'Eröffnung R1'),
(4, 'Eröffnung 501'),
(5, 'Antworten auf OF/UF - Eröffnungen R4'),
(6, 'Antworten auf OF/UF - Eröffnungen 504'),
(7, 'Antworten auf OF/UF - Eröffnungen R5'),
(8, 'Antworten auf OF/UF - Eröffnungen 505'),
(9, 'EÖ-Antwort-Rebid R8'),
(10, 'EÖ-Antwort-Rebid 508'),
(11, 'EÖ-Antwort-Rebid R9'),
(12, 'EÖ-Antwort-Rebid 509'),
(13, '2.Gebot des Responders R10'),
(14, '2.Gebot des Responders 510'),
(15, '2.Gebot des Responders R11'),
(16, '2.Gebot des Responders 511'),
(17, 'Informationskontra R13'),
(18, 'Informationskontra 513'),
(19, 'Antworten auf Informationskontra R14'),
(20, 'Antworten auf Informationskontra 514'),
(21, 'RKCB R80'),
(22, 'RKCB 580'),
(23, 'Antworten nach Zwischenreizung R16'),
(24, 'Antworten nach Zwischenreizung 516'),
(25, 'Antworten nach Zwischenreizung R18'),
(26, 'Antworten nach Zwischenreizung 518'),
(27, 'new1'),
(28, 'new2'),
(29, 'new3'),
(30, 'new4'),
(31, 'new5'),
(32, 'new6'),
(33, 'KK'),
(34, 'm2'),
(35, 'm3'),
(36, 'r2'),
(37, 'r3'),
(38, 'r6'),
(39, 'r7'),
(40, '502'),
(41, '503'),
(42, '506'),
(43, '507'),
(44, '512'),
(45, 'a1'),
(46, 'a2'),
(47, 'a3'),
(48, 'a4'),
(49, 'fd12');

-- --------------------------------------------------------

--
-- Table structure for table `itunessaleschart`
--

CREATE TABLE `itunessaleschart` (
  `month` date NOT NULL,
  `number` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itunessaleschart`
--

INSERT INTO `itunessaleschart` (`month`, `number`, `id`) VALUES
('2012-01-31', 0, 1),
('2012-02-28', 0, 2),
('2012-03-31', 0, 3),
('2012-04-30', 0, 4),
('2012-05-31', 0, 5),
('2012-06-30', 0, 6),
('2012-07-31', 0, 7),
('2012-08-31', 0, 8),
('2012-09-30', 0, 9),
('2012-10-31', 0, 10),
('2012-11-30', 13, 11),
('2012-12-31', 64, 12),
('2013-01-31', 35, 13),
('2013-02-28', 68, 14),
('2013-03-31', 98, 15),
('2013-04-30', 79, 16),
('2013-05-31', 52, 17),
('2013-06-30', 88, 18),
('2013-07-31', 43, 19),
('2013-08-31', 33, 20),
('2013-09-30', 32, 21),
('2013-10-31', 35, 22),
('2013-11-30', 281, 23),
('2013-12-31', 397, 24),
('2014-01-31', 647, 25),
('2014-02-28', 800, 26),
('2014-03-31', 632, 27),
('2014-04-30', 489, 28),
('2014-05-31', 530, 29),
('2014-06-30', 434, 30),
('2014-07-31', 372, 31),
('2014-08-31', 383, 32),
('2014-09-30', 366, 33),
('2014-10-31', 455, 34),
('2014-11-30', 416, 35),
('2014-12-31', 385, 36),
('2015-01-31', 386, 37),
('2015-02-28', 407, 38),
('2015-03-31', 416, 39),
('2015-04-30', 308, 40),
('2015-05-31', 258, 41),
('2015-06-30', 332, 42),
('2015-07-31', 296, 43),
('2015-08-31', 261, 44),
('2015-09-30', 146, 45),
('2015-10-31', 0, 46),
('2015-11-30', 0, 47),
('2015-12-31', 0, 48);

-- --------------------------------------------------------

--
-- Table structure for table `kunden`
--

CREATE TABLE `kunden` (
  `kId` int(11) NOT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `titel` varchar(50) DEFAULT NULL,
  `vorname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `strasse` varchar(50) DEFAULT NULL,
  `plz` varchar(50) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `mw` tinyint(4) NOT NULL,
  `mob` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bemerkung` varchar(50) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kunden`
--

INSERT INTO `kunden` (`kId`, `institution`, `titel`, `vorname`, `name`, `strasse`, `plz`, `ort`, `mw`, `mob`, `tel`, `email`, `bemerkung`, `stat`) VALUES
(1001, '', '', 'Martina', 'von Mitzlaff-Laeisz', 'Alfredd-Beit-Weg 8', '20149', 'Hamburg', 0, '', '', '', '', 1),
(1002, '', '', 'Gisela', 'Pohle', 'Mozartstr. 46', '49076', 'Osnabrück', 0, '', '', '', '', 1),
(1003, '', '', 'Hildegard', 'Bosch', 'Erzberger Str. 16', '73033', 'Göppingen', 0, '', '', '', '', 1),
(1004, '', 'Dr.', 'Thomas', 'Korsukewitz', 'Nikolauskirchtstr. 14', '35216', 'Biedenkopf', 1, '', '', '', '', 1),
(1005, '', '', 'Annamaria', 'Varini', 'Via del Tiglio', 'CH-6605', 'Lorcarno Monti - SCHWEIZ', 0, '', '', '', '', 1),
(1006, '', '', 'Marianne', 'Ritter', 'Winzenholerstr. 8', '63808', 'Haibach', 0, '', '', '', '', 1),
(1007, '', '', 'Barbara', 'Thywissen', 'An der Lauvenburg 3', '41564', 'Kaarst', 0, '', '', '', '', 1),
(1008, '', '', 'Susanne', 'Größle-Karallus', 'Briegerstr. 15f', '76139', 'Karlsruhe', 0, '', '', '', '', 1),
(1009, '', '', 'Rita', 'Niemann', 'Hauwisch 32', '22339', 'Hamburg', 0, '', '', '', '', 1),
(1010, '', '', 'Margret', 'Arnold', 'Reinickendorfer Weg 8', '78056', 'Villingen-Schwenningen', 0, '', '', '', '', 1),
(1011, '', '', 'Christa', 'Ullrich', 'James-Cook-Str. 9', '14089', 'Berlin', 0, '', '', '', '', 1),
(1012, '', '', 'Erika', 'Merckling', 'In den Heilen 5', '51429', 'Bergisch-Gladbach', 0, '', '', '', '', 1),
(1013, '', '', 'Lothar', 'Schwiderski', 'Suttheide 11', '33790', 'Halle', 1, '', '', '', '', 1),
(1014, '', '', 'Ulrike', 'Peicher', 'Herulerweg 1', '13595', 'Berlin', 0, '', '', '', '', 1),
(1015, '', 'Dr.', 'Ralf', 'Wettengel', 'Schillbachstr. 13', '07743', 'Jena', 1, '', '', '', '', 1),
(1016, '', 'Dr.', 'Hartmut', 'Storz', 'Galgenbergweg 14', '89129', 'Langenau', 1, '', '', '', '', 1),
(1017, '', '', 'Ingrid', 'Haney', 'Pfänderweg 9', '14089', 'Berlin', 0, '', '', '', '', 1),
(1018, '', '', 'Alexander', 'Uglar', 'Walter-Delius-Str. 21', '27574', 'Bremerhaven', 1, '', '', '', '', 1),
(1019, '', '', 'Belinda', 'Muth', 'Düsseldorfer Str. 275', '42327', 'Wuppertal', 0, '', '', '', '', 1),
(1020, '', '', 'Horst', 'Deppmeier', 'Drosselweg 30', '29229', 'Celle', 1, '', '', '', '', 1),
(1021, '', '', 'Joachim', 'Elis', 'Schmiedackerstraße 40', '79567', 'Weil am Rhein', 1, '', '', '', '', 1),
(1022, '', '', 'Siegfrid', 'Krenczak', 'Gartenweg 10', '25826', 'St. Peter Ording', 1, '', '', '', '', 1),
(1023, '', '', 'Eva-Maria', 'von Lilienfeld', 'Olympiastr. 36', '48301', 'Nottuln', 0, '', '', '', '', 1),
(1024, '', '', 'Vita', 'Hupe', 'Carl-Diem-Weg 14', '40764', 'Langenfeld', 0, '', '', '', '', 1),
(1025, '', '', 'Schmidt', 'Brigitte', 'Petersenstr. 50', '51109', 'Köln', 0, '', '', '', '', 1),
(1026, '', '', 'Inge', 'Müller', 'Herzberger Str. 24 a', '37191', 'Kaltenburg', 0, '', '', '', '', 1),
(1027, '', '', 'Irmgard', 'Busch', 'Peter-Spies-Str. 24', '92280', 'Kastl', 0, '', '', '', '', 1),
(1028, '', '', 'Hermann', 'Weber', 'Jahnstr. 11', '79117', 'Freiburg', 1, '', '', '', '', 1),
(1029, '', '', 'Illa', 'Kloss', 'An der Eiche 13', '30926', 'Seelze OT Velber', 0, '', '', '', '', 1),
(1030, '', '', 'Jutta', 'Keller', 'Brockhoffstr. 2', '48143', 'Münster', 0, '', '', '', '', 1),
(1031, '', '', 'Angela', 'Strittmatter', 'Osthofstr. 10c', '48163', 'Münster', 0, '', '', '', '', 1),
(1032, '', '', 'Anne', 'Harling', 'Schlagholz 4', '48165', 'Münster', 0, '', '', '', '', 1),
(1033, '', '', 'Monika', 'Sandkühler', 'Westring 24', '48249', 'Dülmen', 0, '', '', '', '', 1),
(1034, '', '', 'Christa-Luise', 'Schott', 'Pfefferloh', '90587', 'Obermichelbach', 0, '', '', '', '', 1),
(1035, '', '', 'Monika', 'Fastenau', 'Schwachhauser Heerstr. 251', '28211', 'Bremen', 0, '', '', '', '', 1),
(1036, '', '', 'Hildegard', 'Eissing', 'Peter-Wust-Str. 19', '48149', 'Münster', 0, '', '', '', '', 1),
(1037, '', '', 'Gottlieb', 'Kellner', 'Zochastr. 7', '91522', 'Ansbach', 1, '', '', '', '', 1),
(1038, '', '', 'Eva', 'Rieger', 'Adams Lehmannstr. 26', '80797', 'München', 0, '', '', '', '', 1),
(1039, '', '', 'Heidi', 'Krusemeyer', 'Rudolf-Virchow-Str.  3', '49477', 'Ibbenbühren', 0, '', '054513383', '', 'Inner wheel, rotary, mann gestorben, osnabrück', 1),
(1040, '', '', 'Regina', 'Krämer', 'Taubenacker 17', '40668', 'Meerbusch', 0, '', '', '', '', 1),
(1041, '', '', 'Marianne', 'Gorissen', 'Wollinstr. 35', '48147', 'Münster', 0, '', '', '', '', 1),
(1042, '', '', 'Michael', 'Rzehak', 'Im Hassel 2 a', '37077', 'Göttingen', 1, '', '', '', '', 1),
(1043, '', '', 'Birgit', 'Schweisel', 'Mühlweg 51', '67117', 'Limburgerhof', 0, '', '', '', '', 1),
(1044, '', '', 'Brigitte', 'Bernhard', 'Poststr. 19', '40667', 'Meerbusch', 0, '', '', '', '', 1),
(1045, '', '', 'Erika', 'von Krell', 'Am Sonnenhang 16', '30989', 'Gehrden', 0, '', '', '', '', 1),
(1046, '', 'Dr.', 'Erika', 'Meyer-Heinicke', 'Im Dorfe 16a', '99441', 'Magdala', 0, '', '', '', '', 1),
(1047, '', '', 'Barbara', 'Hicke', 'Cheruskerring 74', '48147', 'Münster', 0, '', '', '', '', 1),
(1048, '', '', 'Ulrike', 'Schöneseiffen', 'Paul-Ehrlich-Str. 6', '42113', 'Wuppertal', 0, '', '', '', '', 1),
(1049, '', '', 'Gisela', 'Bremer', 'Lübecker Str. 29a', '30974', 'Wennigsen', 0, '', '', '', '', 1),
(1050, '', '', 'Georg-Jesko', 'von Puttkammer', 'Erlenweg 13', '40667', 'Meerbusch', 1, '', '', '', '', 1),
(1051, '', '', 'Brigitte', 'Blanc', 'Steubstr. 10', '81925', 'München', 0, '', '', '', '', 1),
(1052, '', '', 'Götz', 'von Rochow', 'Böschleinsmühle 6', '91785', 'Pleinsfeld', 1, '', '', '', '', 1),
(1053, '', '', 'Heinz', 'Timmermanns', 'Gartenfeldstr. 22', '61231', 'Bad Nauheim', 1, '', '', '', '', 1),
(1054, 'Bridgeclub Esslingen', '', 'Heike', 'Rademacher', 'Panoramastr. 65', '73207', 'Plochingen', 0, '', '', '', '', 1),
(1055, '', '', 'Hubertus', 'von Stromberg', 'Vorarlberger Weg 8', '50858', 'Köln', 1, '', '', '', '', 1),
(1056, '', '', 'Sigrid', 'Battmer', 'Oesterleystr. 3', '30171', 'Hannover', 0, '', '', '', '', 1),
(1057, '', '', 'Kirsten', 'Voß', 'Katzenbuckel 5', '21244', 'Buchholz', 0, '', '', '', '', 1),
(1058, 'Bridge- und Hobby-Versand', '', 'Inge', 'Plein', 'Amselweg 3', '67105', 'Schifferstadt', 0, '', '', '', 'Bestellung vom 1.4. per email\r\n27.5. per mail\r\n3.1', 1),
(1059, '', '', 'Christina', 'Lehne', 'Lerchenweg 15', '38518', 'Gifhorn', 0, '', '', 'clehne@t-online.de', '', 1),
(1060, 'viertreff Bridgeversand', '', 'Alexandra', 'von der Lancken', 'Metzendorfer Weg 31', '21224', 'Rosengarten', 0, '', '', '', 'noch nicht rausgeschickt', 1),
(1061, 'BC Bottrop', '', 'Fred', 'Schwarz', 'Flockenfeld 22', '46049', 'Oberhausen', 1, '', '', '', '', 1),
(1062, 'Bridgeland', '', 'Merle', 'Schneeweis', 'Elsternstr. 37', '33607', 'Bielefeld', 0, '', '', '', '', 1),
(1063, 'BC Tettnang e.V.', '', 'Hadubrand', 'Jungklaus', 'Grundstr. 3 B', '88131', 'Bodolz', 1, '', '', '', '', 1),
(1064, '', '', 'Angela', 'Ott', 'Am Buck 16', '90607', 'Rückersdorf', 0, '', '', '', '', 1),
(1065, '', '', 'Elsa', 'Duer', 'Berliner Allee 25', '22850', 'Norderstedt', 0, '', '', '', '', 1),
(1066, '', '', 'Reinhard', 'Oesterlein', 'Hasseler Str. 19', '29308', 'Winsen', 1, '', '', '', 'Rabatt lt. E-Mail vom 18.4.', 1),
(1067, '', '', 'Heinke', 'Mähl', 'Klaus-Groth-Str. 50', '25451', 'Quickborn', 0, '', '', '', '', 1),
(1068, '', '', 'Jürgen', 'Scharff', 'An der Ratsforst 21', '21335', 'Lüneburg', 1, '', '04131731295', 'jscharff@gmail.com', 'Hatte schon r-sätze , hat jetzt per telefon am 23.', 1),
(1069, '', '', 'Winfried', 'Streppelhoff', 'Wichernstr. 56', '33330', 'Gütersloh', 1, '', '', '', '', 1),
(1070, 'BC Mosbach', '', 'Gisela', 'Metzger', 'Am Weidenrot 12', '74865', 'Neckarzimmern', 0, '', '', '', '', 1),
(1071, '', '', 'Eike', 'Dose', 'Lister Rund 3', '25899', 'Niebüll', 0, '', '', '', '', 1),
(1072, '', '', 'Birgit', 'Mayer', 'Lerchenfeldstr. 13', '79199', 'Kirchzarten', 0, '', '', 'bw.mayer@t-online.de', 'r6 plus r10 (forum2012-änderungen) bestellt am 27.', 1),
(1073, '', 'Dr.', 'Wolfgang', 'Postelt', 'Johann-Heinrich-Platz 13', '50935', 'Köln', 1, '', '', 'wolfgangpostelt@t-online.de', 'empfehlung von guido fuss email vom 28.4.13', 1),
(1074, '', '', 'Sascha', 'Gebhardt', 'Hans-Grundig-Str. 36', '99099', 'Erfurt', 1, '', '', 'risascha@web.de', 'Turnier in naumburg, 5.9.2015, bekannter von zsolt', 1),
(1075, '', 'Dr.', 'Marianne', 'Schultz', 'Lindenstraße 4', '66129', 'Saarbrücken-Bübingen', 0, '0151 111 335 08', '06805-207 990', '', 'Word rechnung vorhanden', 1),
(1076, '', '', 'Beate', 'Biermann', 'Am Vogelherd 6', '90571', 'Schwaig', 0, '', '09119588444', '', 'Bekannte von angie ott, keine email, kein smartpho', 1),
(1077, '', '', 'Liselotte', 'Fütterer-Kaiser', 'Rottalblick 13', '88480', 'Achstetten', 0, '', '', 'lfk9@gmx.de', 'Über Amazon zunächst vier sätze bestellt..dann zu ', 1),
(1078, '', '', 'Gundelinde', 'Krämer', 'Im Buch 19', '89134', 'Blaustein', 0, '015146505068', '', 'GuM.Kraemer@gmx.de', 'Schriftlich bestellt per flyer am 21.12. (barcelon', 1),
(1079, '', '', 'Sauer', 'Ursula', 'Breitensteinstr. 45', '85567', 'Grafing b. München', 0, '', '080923996', 'sauer.ursula@gmx.de', 'Telefonisch bestellt am 27.1, weil registrierung ü', 1),
(1080, '', '', 'Anton', 'Scheuer', 'Mertenweg 21', '50169', 'Kerpen', 1, '', '', 'li.sha@t-online.de', '', 1),
(1081, '', 'Dr.', 'Herta', 'Pichotka', 'Untere Dorfstr. 9', '79241', 'Ihringen', 0, '', '', '', 'Über webseite bestellt, dann kk zurückgeschickt ud', 1),
(1082, '', '', 'Renate', 'Schmidt', 'Kleinreuther Weg 37', '90408', 'Nürnberg', 0, '', '0911382127', 'schmidtrenate@t-online.de', 'Am 4.2.16 alle sätze und karteikasten bestellt for', 1),
(1083, '', '', 'Cornelia', 'Rausch', 'Zwickauer Str. 1', '28215', 'Bremen', 0, '', '', '', 'Via merle email vom 19.2 udn via homepage 31.1.', 1),
(1084, 'Bridgeschule Falkenberg', '', 'Barbara', 'Falkenberg', 'Wettersteinstr.17b', '82467', 'Garmisch-Partenkirchen', 0, '0175- 20 43 916', '08821 - 727 52 35', 'barbara.falkenberg@gmx.de', 'Telefonat und email vom 27.3., lehrerrabatt', 1),
(1085, '', '', 'Claus', 'Daehr', 'Alfred-Delp-Str. 31', '51377', 'Leverkusen', 1, '', '', 'Clausdaehr@aol.com', 'Lehrerrabatt für Kunden \r\n\r\nPeter Kunath\r\nDunstabl', 1),
(1086, 'Jugendcamp', 'Dr.', 'Gabriele', 'Knoll', 'Feldhäuser Str. 42', '28865', 'Lilienthal', 0, '', '', 'gabyknoll@web.de', 'Jugencamp sponsoring; 12 sätze (2xmini, 5x501, 5x5', 1),
(1087, 'Ggf. beim NACHBARN ABGEBEN', '', 'Georg', 'Fischer', 'Kaiserstr. 2-1', '71384', 'Weinstadt', 1, '', '', 'georg.l.fischer@t-online.de', 'Findet karten gut.. unterrichtet an diversen orten', 1),
(1088, '', '', 'Ursula', 'Helmhold', 'Josua-Stegmann-Wall 8', '31737', 'Rinteln', 0, '01638783759', '05751 1304', 'ursula.helmhold@posteo.de', 'Email-bestellung 6.10.', 1),
(1089, '', '', 'Ingeborg', 'Hensel', 'Vor dem weißen Berge 40', '21339', 'Lüneburg', 0, '', '04131395315', 'ingeborg.hensel@web.de', 'Hat am 30.11 telefonisch bestellt.. spielt mit fre', 1),
(1090, '', '', 'Hedda', 'Buckendahl', 'Im Büschken 1', '45659', 'Recklinghausen', 0, '', '', '', 'Bestellung über merle per mail am 12.12.16', 1),
(1091, '', '', 'Frank', 'Skulme', 'Marktstr. 22', '99423', 'Weimar', 1, '', '03643516351', 'FRS.lietuva@gmx.de', 'Hat angerufen.anfänger. forum d BASIS', 1),
(1092, '', '', 'Hans Heinrich', 'Frielinghaus', 'Tiefenweg 10', '33332', 'Gütersloh', 1, '', '052411792898', 'hh.frielinghaus@gmail.coom', '', 1),
(1093, '', '', 'Carmen', 'Singer', 'Ilmenauer Str. 9', '14193', 'Berlin', 0, '', '03081056504', 'carmen.singer1@freenet.de', 'Hat selbst gelernt.. dann dr. bloß vhs.. spielt li', 1),
(1094, '', '', 'Hedi', 'Gries', 'Wiedenhof 70', '51503', 'Rösrath', 0, '', '0220581602', 'ep4242@gmx.de', 'Lehrerrabatt, Tel.Nr. gespeichert im fritz', 1),
(1095, '', '', 'Erika', 'Ries', 'BAUMSCHULENWEG 11', '28213', 'Bremen', 0, '0171/3836078', '', 'erikaries36@gmx.de', 'Per mail am 210817', 1),
(1096, 'Bridgeschule Falkenberg', '', 'Barbara', 'Falkenberg', 'Wettersteinstr. 17 b', '82467', 'Garmisch-Partenkirchen', 0, '0175/20 43 916', '08821/727 52 32', '', 'Bestellung per Telefon und Email 16.11.2017 und pe', 1),
(1097, '', 'Rechtsanwältin', 'Marianne', 'Raven', 'Lichtentaler Str. 13', '76530', 'Baden-Baden', 0, '0171-3300517', '07221-9706971', 'marianne.raven@t-online.de', 'Per Mail vom 230318, bekannte hat die LK schon', 1),
(1098, '', '', 'Brigitte', 'Vedova', 'Im Schlosspark 22', '51429', 'Bergisch Gladbach', 0, '', '', 'brigitte.vedova@gmail.com', '', 1),
(1099, '', '', 'Claudia', 'Sohlmann', 'Himmelreich 23', '21762', 'Otterndorf', 0, '01629877989', '047514069666', 'r.sohlmann@gmx.de', 'Email bestellung vom 31.7.2018', 1),
(1100, '', '', 'Peter', 'Dohrmann', 'Bismarckallee 9', '24105', 'Kiel', 1, '', '0431332322', 'dohrmann@mail.de', 'Telefonisch am 13.9 bestellt', 1),
(1101, 'Adler Apotheke', '', 'Barbara', 'Hölzle', 'Dünner Str. 201', '41066', 'Mönchengladbach', 0, '', '02161993050', '', 'Per amazon bestellt , dann fehllieferung und dann ', 1),
(1102, '', '', 'Gabriele', 'Stelnzer', 'Friedrich-Stoltze-str. 6a', '61462', 'Königstein', 0, '', '', 'g.stelzner@web.de', '', 1),
(1103, '', '', 'Dieter', 'Will', 'Tannenstr. 67', '79761', 'Waldshut', 1, '', '', 'bridge.dieter.will@web.de', 'Team-Mate von Wyk mit Max 2019, unterrichtet in ba', 1),
(1104, '', '', 'Annemarie', 'Friedmann', 'Hohenstaufenstr. 27', '71696', 'Möglingen', 0, '', '07141 9915750', '', 'Lerngruppe (lehrerin).. früher hat mann via amazon', 1),
(1105, '', '', 'Renate', 'Berendt', 'Jagdweg 15', '32427', 'Minden', 0, '', '057184892', 'rberendt@t-online.de', 'Erst amazon r1 bestellt, dann zurück und per coupo', 1),
(1106, 'Burg Services', '', 'Marco', 'Römisch', 'Aggerhütte 120a', '53797', 'Lohmar', 1, '', '', '', '', 1),
(1107, '', '', 'Verena', 'Hoffmann', 'Kandelstraße 14', '79224', 'Umkirch', 0, '', '', 'Verenaho@web.de', 'Hat via website 501 bestellt.. am 16.10. dann 504 ', 1),
(1108, '', '', 'Beatrix', 'Biermann', 'Am Vogelherd 6', '90571', 'Schwaig', 0, '', '0911508808', '', '', 1),
(1109, 'Deutscher Bridgeverband', '', 'Helmut', 'Ortmann', 'Augustinusstr. 11 C', '50226', 'Frechen-Königsdorf', 1, '', '', '', 'Dbv finanzen', 1),
(1110, '', '', 'Karin', 'Kux', 'Schimmelmannstraße 56', '22926', 'Ahrensburg', 0, '015110123454', '', 'k.kux@web.de', 'Anruf 7.10.23', 1),
(1111, '', '', 'Lisa', 'Thedeck', 'Höhenweg 12', '49082', 'Osnabrück', 0, '', '', '', 'Tel bestellt am 24.11.', 1),
(1112, '', '', 'Ulrike', 'Wesseler', 'Orffstraße 21', '49124', 'Georgsmarienhütte', 0, '01703869349', '05401461292', 'u.wesseler@gmx.de', 'Telefonisch bestellt 9.4.24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lr`
--

CREATE TABLE `lr` (
  `lrId` int(11) NOT NULL,
  `lrName` varchar(50) NOT NULL DEFAULT '0',
  `lrText` text NOT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lr`
--

INSERT INTO `lr` (`lrId`, `lrName`, `lrText`, `stat`) VALUES
(1, 'Lieferschein - Normal', 'sowie den Begleitzettel in entsprechender Anzahl.\n\nDie Summe wird erst nach vollständigem Verkauf und Rechnungstellung fällig.\n\nZusätzlich habe ich Ihnen erst einmal ein paar Flyer für Ihre Sendungen beigelegt. In der nächsten Auflage werde ich auch erwähnen, dass die Karten u.a. bei Ihnen zu erhalten sind. Das war jetzt für die erste Auflage nicht möglich.\n\nZusätzlich habe ich auch noch einen Stapel Probekarten zur Ansicht für Ihre Kunden beigelegt. Es wäre schön, wenn Sie Ihren Sendungen jeweils einen Flyer (bei Bedarf und Anforderung natürlich auch mehr) und eine Probekarte beilegen könnten.', 1),
(2, 'Rechnung - Normal', 'sowie den Begleitzettel in entsprechender Anzahl.\n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2 € pro Satz auf den normalen Preis, den Sie in die Vereinskasse geben können.', 1),
(3, 'Lieferschein - new', 'sowie den Begleit-zettel in entsprechender Anzahl.\n \nDie Summe wird erst nach vollständigem Verkauf und Rechnungstellung fällig.\n \nZusätzlich habe ich Ihnen erst einmal ein paar Flyer für Ihre Sendungen beigelegt. In der nächsten Auflage werde ich auch erwähnen, dass die Karten u.a. bei Ihnen zu erhalten sind. Das war jetzt für die erste Auflage nicht möglich.\n\nZusätzlich habe ich auch noch einen Stapel Probekarten zur Ansicht für Ihre Kunden beigelegt. Es wäre schön, wenn Sie Ihren Sendungen jeweils einen Flyer (bei Bedarf und Anforderung natürlich auch mehr) und eine Probekarte beilegen könnten.\n\nKennen Sie schon unsere App Bridge Doddle? Alle Lernkarten auch für unterwegs immer dabei auf Ihrem Smartphone. Mittlerweile sind dort über 250 verschiedene Kartensätze erhältlich fürunterschiedliche Systeme und auch in unterschiedlichen Sprachen.\n\nsowie den Begleit-zettel in entsprechender Anzahl.\n \nDie Summe wird erst nach vollständigem Verkauf und Rechnungstellung fällig.\n \nZusätzlich habe ich Ihnen erst einmal ein paar Flyer für Ihre Sendungen beigelegt. In der nächsten Auflage werde ich auch erwähnen, dass die Karten u.a. bei Ihnen zu erhalten sind. Das war jetzt für die erste Auflage nicht möglich.\n\nZusätzlich habe ich auch noch einen Stapel Probekarten zur Ansicht für Ihre Kunden beigelegt. Es wäre schön, wenn Sie Ihren Sendungen jeweils einen Flyer (bei Bedarf und Anforderung natürlich auch mehr) und eine Probekarte beilegen könnten.\n\nKennen Sie schon unsere App Bridge Doddle? Alle Lernkarten auch für unterwegs immer dabei auf Ihrem Smartphone. Mittlerweile sind dort über 250 verschiedene Kartensätze erhältlich fürunterschiedliche Systeme und auch in unterschiedlichen Sprachen.', 1),
(4, 'Rechnung - new', '132', 0),
(5, 'Rechnung - gregtest1', '1 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXX XXXXXXX XX XXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXX XXXXXXX XX XXXXXXXXXXXXXXXX.\n\n2 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n3 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n4 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n5 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n6 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.\n\n7 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n8 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXX XX XXXXXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n9 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXX XXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXXXXXXXX \n\n10 XXX XXXXXXXX XXXXXX XXXXXX XXXXXXXXXXXXX XXXXXXXXX XXXXXXX XXX XXXXXXXXXXXXXX XXXXXX XX XXXXXXX XXXXXXXXXXXXXXXX XXXXXXX XX XXXXXXXXXXXXXXX XX XXXXXXXXXXXXXXXX.\n\n11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX12.', 0),
(6, 'Rechnung - gregtest2', 'sowie den Begleit-zettel in entsprechender Anzahl.\nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto Nr 1020 020 770 (Inhaber: Bridgeclub Berlin e.V.) bei der DKB Bank (BLZ 120 300 00). \n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nsowie den Begleit-zettel in entsprechender Anzahl.\n\nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto Nr 1020 020 770 (Inhaber: Bridgeclub Berlin e.V.) bei der DKB Bank (BLZ 120 300 00). \n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2€ pro Satz, den Sie in die Vereinskasse geben können.\n\nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto Nr 1020 020 770 (Inhaber: Bridgeclub Berlin e.V.) bei der DKB Bank (BLZ 120 300 00). \n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nsowie den Begleit-zettel in entsprechender Anzahl.\n\nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto Nr 1020 020 770 (Inhaber: Bridgeclub Berlin e.V.) bei der DKB Bank (BLZ 120 300 00). \n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2€ pro Satz, den Sie in die Vereinskasse geben können.\n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \n\nFalls Sie die die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2€ pro Satz, den Sie in die Vereinskasse geben können.', 0),
(7, 'Rechnung - distributoren', 'sowie den Begleitzettel in entsprechender Anzahl. Ich habe noch einen Satz 509 (1. Rebid/Diagramm) als kostenfreies Ansichtsexemplar hinzugefügt. \n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n', 1),
(8, 'Rechnung - fütterer weihnachten', 'sowie den Begleitzettel in entsprechender Anzahl.\n\nWie vereinbart ist die Sendung diesmal versandkostenfrei.\n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \n\nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2 € pro Satz auf den normalen Preis, den Sie in die Vereinskasse geben können.\n\nDie restlichen Sätze schicke ich Ihnen dann nach meiner Rückkehr im Januar. Der Satz 516 ist noch nicht gedruckt und es ist auch noch nicht absehbar, wann er erscheint. \n\nIch wünsche Ihnen und Ihrer Familie ein frohes Weihnachtsfest und ein gesundes neues Jahr 2016!', 1),
(9, 'Rechnung - Rechnung - 516 fehlt', 'ACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \n\nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2 € pro Satz auf den normalen Preis, den Sie in die Vereinskasse geben können.\n\nDer Satz 516 ist noch nicht gedruckt und wird wohl erst gegen Ende des Jahres erscheinen. ', 1),
(10, 'Rechnung - rechnung - daehr', '\nWie telefonisch besprochen, erhalten Sie den Lehrerrabatt, der normale Endkundenpreis ist 15 Euro/Satz. Ich habe den Minibridge-Satz nicht mehr mitgeschickt, da der Kunde ja schon Schüler ist und sich sicher schon mit Reizung beschäftigt.\n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \n\nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2 € pro Satz auf den normalen Preis, den Sie in die Vereinskasse geben können.\n', 1),
(11, 'Rechnung - neueBankDaten', 'sowie den Begleitzettel in entsprechender Anzahl.\n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n\nWenn Sie an weiteren Kartensätzen interessiert sind, informieren Sie sich auf unserer Homepage. \n\nFalls Sie die Lernkarten auch in Ihrem Verein anbieten wollen, so erhalten Sie einen Wiederverkäuferrabatt von 2€ pro Satz auf den normalen Preis, den Sie in die Vereinskasse geben können.', 1),
(12, 'Rechnung - distributoren NEUE BANK', 'sowie den Begleitzettel in entsprechender Anzahl.\n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n', 1),
(13, 'Rechnung - distributoren-SKAT', 'sowie den Begleitzettel in entsprechender Anzahl.\n\nACHTUNG: Kontoänderung: \nBitte überweisen Sie den Gesamtbetrag innerhalb von sieben Tagen ohne Abzug auf das Konto bei der skatbank, IBAN: DE20830654080004151577, BIC: GENODEF1SLR, (Inhaber: Bridgeclub Berlin).\n', 1),
(14, 'Lieferschein - Lieferschein Burg', '\n\nDie Summe wird erst nach vollständigem Verkauf und Rechnungstellung fällig.\n\nZusätzlich habe ich Ihnen erst einmal ein paar Flyer für Ihre Sendungen beigelegt. In der nächsten Auflage werde ich auch erwähnen, dass die Karten u.a. bei Ihnen zu erhalten sind. Das war jetzt für die erste Auflage nicht möglich.\n\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lr1`
--

CREATE TABLE `lr1` (
  `lrId1` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `lrName1` varchar(50) NOT NULL,
  `lrText1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lr1`
--

INSERT INTO `lr1` (`lrId1`, `stat`, `lrName1`, `lrText1`) VALUES
(1, 1, 'autor1', 'test 1\n\ntest2'),
(2, 1, 'übersetzer1', 'anbei erhalten Sie die Abrechnung als Übersetzer für Bridge Doddle: '),
(3, 1, 'autor_übersetzer', 'anbei erhalten Sie die Abrechnung als Autor und Übersetzer für Bridge Doddle: '),
(14, 1, '123', 'kein Text wurde eingetragen'),
(15, 1, 'qwrr', '111'),
(16, 1, 'fgdg', '111'),
(17, 1, 'hghgh', '111hgfhfghg'),
(18, 1, 'fghhggfdg', '111hgfhfghgfghhggfdgsss'),
(19, 1, 'fghhggfdgsss', 'kein Text wurde eingetragen'),
(20, 1, 'sgfd', '111hgfhfghgfghhggfdgsssgfdg'),
(21, 0, 'test3', 'kein Text wurde eingetragen'),
(22, 1, 'test4', 'kein Text wurde eingetragen'),
(23, 1, 'fgg', 'kein Text wurde eingetragen'),
(24, 1, 'hhfh', 'dfsfg'),
(25, 1, 'gfhfghfgh', 'dfsfghgfhfgh'),
(26, 1, 'sdfdssdfsdfsdsdf', 'dfsfghgfhfgh'),
(27, 1, 'fdf', 'dffdfd'),
(28, 1, 'jf', 'dffdfdjf'),
(29, 1, 'jffhg', 'dffdfdjf'),
(30, 1, 'ghdfhh', 'dffdfdjf'),
(31, 1, 'hfghfd', 'dffdfdjfh'),
(32, 1, 'dffh', 'dffdfdjfh'),
(33, 1, 'fff', 'kein Text wurde eingetragen'),
(34, 1, 'lllll', 'dffdfdjfhl'),
(35, 1, 'sdffd', 'kein Text wurde eingetragen'),
(36, 0, 't', 'kein Text wurde eingetragent'),
(37, 1, 'hhh', 'kein Text wurde eingetragen'),
(38, 1, 'dsa', 'line1 line1line1 line1line1 linnnnbnbe1line1 line1line1 line1line1 line1line1 line1line1 line1line1 line1'),
(39, 1, 'äüß', 'kein Text wurde eingetragen'),
(40, 1, 'öäüß', 'öäüß'),
(41, 0, 'dsfsg', 'gfdgdg'),
(42, 1, 'autor_', 'kein Text wurde eingetragen');

-- --------------------------------------------------------

--
-- Table structure for table `lr2`
--

CREATE TABLE `lr2` (
  `lrId2` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `lrName2` varchar(50) NOT NULL,
  `lrText2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lr2`
--

INSERT INTO `lr2` (`lrId2`, `stat`, `lrName2`, `lrText2`) VALUES
(1, 1, 'line2', 'test 3\n\ntest 4\n'),
(2, 1, 'line2a', 'bnvdsffsdsdf'),
(3, 1, 'd', 'aaaaa'),
(4, 1, 'mmb', 'aaaaa'),
(5, 1, 'd2222', 'ddddddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `playapps`
--

CREATE TABLE `playapps` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL DEFAULT '00:00:00',
  `tax` varchar(50) DEFAULT '0',
  `transaction` varchar(50) NOT NULL DEFAULT '0',
  `refund` varchar(50) DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `productId` varchar(50) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `skuId` varchar(50) DEFAULT '0',
  `hardware` varchar(50) NOT NULL DEFAULT '0',
  `country` varchar(50) NOT NULL DEFAULT '0',
  `state` varchar(50) DEFAULT '0',
  `postal` varchar(50) NOT NULL DEFAULT '0',
  `bCurrency` varchar(50) NOT NULL DEFAULT '0',
  `bAmount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `conversion` decimal(10,8) NOT NULL DEFAULT '0.00000000',
  `mCurrency` varchar(50) NOT NULL DEFAULT '0',
  `mAmount` decimal(10,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playapps`
--

INSERT INTO `playapps` (`id`, `description`, `date`, `time`, `tax`, `transaction`, `refund`, `title`, `productId`, `type`, `skuId`, `hardware`, `country`, `state`, `postal`, `bCurrency`, `bAmount`, `conversion`, `mCurrency`, `mAmount`) VALUES
(1, '1342937695802913', '2013-05-15', '09:35:15', '', 'Google fee', '', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'hwY300-0100', 'DE', '', '30163', 'EUR', '-0.3000', '1.00000000', 'EUR', '-0.3000'),
(2, '1342937695802913', '2013-05-15', '09:35:15', '', 'Charge', '', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'hwY300-0100', 'DE', '', '30163', 'EUR', '0.9900', '1.00000000', 'EUR', '0.9900'),
(3, '1342937695802913', '2013-05-17', '03:42:33', '', 'Charge refund', 'Full', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'hwY300-0100', 'DE', '', '30163', 'EUR', '-0.9900', '1.00000000', 'EUR', '-0.9900'),
(4, '1342937695802913', '2013-05-17', '03:42:33', '', 'Google fee refund', 'Full', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'hwY300-0100', 'DE', '', '30163', 'EUR', '0.3000', '1.00000000', 'EUR', '0.3000'),
(5, '1356729684985038', '2013-05-17', '09:00:57', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tinnoes77_s9050', 'DE', '', '10625', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(6, '1356729684985038', '2013-05-17', '09:00:57', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tinnoes77_s9050', 'DE', '', '10625', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(7, '1363664103104131', '2013-05-18', '06:17:49', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm3', 'DE', '', '40699', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(8, '1363664103104131', '2013-05-18', '06:17:49', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm3', 'DE', '', '40699', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(9, '1389681999528388', '2013-05-18', '08:21:53', '', 'Google fee', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'tinnoes77_s9050', 'DE', '', '10625', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(10, '1389681999528388', '2013-05-18', '08:21:53', '', 'Charge', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'tinnoes77_s9050', 'DE', '', '10625', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(11, '1300631818393131', '2013-05-20', '10:07:03', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'endeavoru', 'DE', '', '30177', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(12, '1300631818393131', '2013-05-20', '10:07:03', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'endeavoru', 'DE', '', '30177', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(13, '1374469827223463', '2013-05-20', '12:10:08', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm0', 'DE', '', '82131', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(14, '1374469827223463', '2013-05-20', '12:10:08', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm0', 'DE', '', '82131', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(15, '1334936526455650', '2013-05-22', '08:42:59', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'mako', 'DE', '', '10178', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(16, '1334936526455650', '2013-05-22', '08:42:59', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'mako', 'DE', '', '10178', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(17, '1315730034596026', '2013-05-22', '09:31:53', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'villec2', 'DE', '', '22559', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(18, '1315730034596026', '2013-05-22', '09:31:53', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'villec2', 'DE', '', '22559', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(19, '1354275645817915', '2013-05-22', '09:53:15', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'hwY300-0100', 'DE', '', '30163', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(20, '1354275645817915', '2013-05-22', '09:53:15', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'hwY300-0100', 'DE', '', '30163', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(21, '1327964695921333', '2013-05-23', '10:18:05', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'p4noterf', 'DE', '', '44388', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(22, '1327964695921333', '2013-05-23', '10:18:05', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'p4noterf', 'DE', '', '44388', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(23, '1335075922185004', '2013-05-23', '12:50:19', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '14052', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(24, '1335075922185004', '2013-05-23', '12:50:19', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '14052', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(25, '1388340584659571', '2013-05-26', '01:02:31', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'p4noterf', 'DE', '', '82152', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(26, '1388340584659571', '2013-05-26', '01:02:31', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'p4noterf', 'DE', '', '82152', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(27, '1398553040733663', '2013-05-26', '02:18:31', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'jflte', 'DE', '', '97688', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(28, '1398553040733663', '2013-05-26', '02:18:31', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'jflte', 'DE', '', '97688', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(29, '1322759041800980', '2013-05-28', '08:23:52', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'B1-A71', 'DE', '', '10315', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(30, '1322759041800980', '2013-05-28', '08:23:52', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'B1-A71', 'DE', '', '10315', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(31, '1314390776759936', '2013-05-28', '03:41:34', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm0', 'DE', '', '80999', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(32, '1314390776759936', '2013-05-28', '03:41:34', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm0', 'DE', '', '80999', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(33, '1370456715442690', '2013-05-29', '01:00:49', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(34, '1370456715442690', '2013-05-29', '01:00:49', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(35, '1378755477830454', '2013-05-29', '01:00:51', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(36, '1378755477830454', '2013-05-29', '01:00:51', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(37, '1398842800465939', '2013-05-29', '01:04:02', '', 'Google fee', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(38, '1398842800465939', '2013-05-29', '01:04:02', '', 'Charge', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(39, '1335363147170355', '2013-05-29', '01:04:04', '', 'Charge', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(40, '1335363147170355', '2013-05-29', '01:04:04', '', 'Google fee', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(41, '1364998529055817', '2013-05-29', '01:04:05', '', 'Google fee', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(42, '1364998529055817', '2013-05-29', '01:04:05', '', 'Charge', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(43, '1384164996737615', '2013-05-29', '01:06:08', '', 'Charge', '', '511 Forum D 2012 - Die 2. Antwort des Responders -', 'de.dicendum.bridgedoddle', 1, '511', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(44, '1384164996737615', '2013-05-29', '01:06:08', '', 'Google fee', '', '511 Forum D 2012 - Die 2. Antwort des Responders -', 'de.dicendum.bridgedoddle', 1, '511', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(45, '1355342882063907', '2013-05-29', '04:37:57', '', 'Google fee', '', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –', 'de.dicendum.bridgedoddle', 1, 'R7', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(46, '1355342882063907', '2013-05-29', '04:37:57', '', 'Charge', '', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –', 'de.dicendum.bridgedoddle', 1, 'R7', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(47, '1331747793552570', '2013-05-29', '04:37:59', '', 'Google fee', '', 'R8 - Eröffnung-Antwort und erstes Rebid FD BASIS', 'de.dicendum.bridgedoddle', 1, 'R8', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(48, '1331747793552570', '2013-05-29', '04:37:59', '', 'Charge', '', 'R8 - Eröffnung-Antwort und erstes Rebid FD BASIS', 'de.dicendum.bridgedoddle', 1, 'R8', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(49, '1304120840662667', '2013-05-29', '04:38:00', '', 'Google fee', '', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BAS', 'de.dicendum.bridgedoddle', 1, 'R9', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(50, '1304120840662667', '2013-05-29', '04:38:00', '', 'Charge', '', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BAS', 'de.dicendum.bridgedoddle', 1, 'R9', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(51, '1341604817995473', '2013-05-29', '04:39:29', '', 'Charge', '', 'R6 - NT-Eröffnungen Forum D BASIS', 'de.dicendum.bridgedoddle', 1, 'R6', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(52, '1341604817995473', '2013-05-29', '04:39:29', '', 'Google fee', '', 'R6 - NT-Eröffnungen Forum D BASIS', 'de.dicendum.bridgedoddle', 1, 'R6', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(53, '1313207826204699', '2013-05-30', '10:22:26', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'streak7', 'DE', '', '30916', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(54, '1313207826204699', '2013-05-30', '10:22:26', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'streak7', 'DE', '', '30916', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(55, '1302803599354753', '2013-05-30', '01:05:07', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'espresso10wifi', 'DE', '', '53332', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(56, '1302803599354753', '2013-05-30', '01:05:07', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'espresso10wifi', 'DE', '', '53332', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(57, '1355301195977518', '2013-06-04', '12:58:42', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '81675', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(58, '1355301195977518', '2013-06-04', '12:58:42', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '81675', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(59, '1385479332602881', '2013-06-04', '01:59:07', '', 'Charge', '', 'R10 - FD Basis – Zweites Gebot des Antwortenden', 'de.dicendum.bridgedoddle', 1, 'R10', 'B1-A71', 'DE', '', '10315', 'EUR', '1.0000', '1.00000000', 'EUR', '0.5900'),
(60, '1385479332602881', '2013-06-04', '01:59:07', '', 'Google fee', '', 'R10 - FD Basis – Zweites Gebot des Antwortenden', 'de.dicendum.bridgedoddle', 1, 'R10', 'B1-A71', 'DE', '', '10315', 'EUR', '0.0000', '1.00000000', 'EUR', '-0.1800'),
(61, '1377942986142748', '2013-06-04', '01:59:09', '', 'Charge', '', 'R11 - FD Basis – Zweites Gebot des Antwortenden. D', 'de.dicendum.bridgedoddle', 1, 'R11', 'B1-A71', 'DE', '', '10315', 'EUR', '1.0000', '1.00000000', 'EUR', '0.5900'),
(62, '1377942986142748', '2013-06-04', '01:59:09', '', 'Google fee', '', 'R11 - FD Basis – Zweites Gebot des Antwortenden. D', 'de.dicendum.bridgedoddle', 1, 'R11', 'B1-A71', 'DE', '', '10315', 'EUR', '0.0000', '1.00000000', 'EUR', '-0.1800'),
(63, '1334719358927404', '2013-06-04', '03:49:19', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'golden', 'DE', '', '14052', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(64, '1334719358927404', '2013-06-04', '03:49:19', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'golden', 'DE', '', '14052', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(65, '1337193956620315', '2013-06-05', '01:08:19', '', 'Google fee', '', 'R4 - Reizung – Eröffnung und Antwort - Hand', 'de.dicendum.bridgedoddle', 1, 'R4', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(66, '1337193956620315', '2013-06-05', '01:08:19', '', 'Charge', '', 'R4 - Reizung – Eröffnung und Antwort - Hand', 'de.dicendum.bridgedoddle', 1, 'R4', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(67, '1309699552248128', '2013-06-05', '01:08:20', '', 'Google fee', '', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', 'de.dicendum.bridgedoddle', 1, 'R5', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(68, '1309699552248128', '2013-06-05', '01:08:20', '', 'Charge', '', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', 'de.dicendum.bridgedoddle', 1, 'R5', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(69, '1315183487294868', '2013-06-06', '03:25:40', '', 'Charge', '', '201 - SAYC Deutsch - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '201', 'GT-I9100', 'DE', '', '81675', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(70, '1315183487294868', '2013-06-06', '03:25:40', '', 'Google fee', '', '201 - SAYC Deutsch - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '201', 'GT-I9100', 'DE', '', '81675', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(71, '1365752141558132', '2013-06-06', '08:33:18', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-P7501', 'DE', '', '22559', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(72, '1365752141558132', '2013-06-06', '08:33:18', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-P7501', 'DE', '', '22559', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(73, '1349598569449147', '2013-06-06', '01:04:17', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '67655', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(74, '1349598569449147', '2013-06-06', '01:04:17', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '67655', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(75, '1354125309270772', '2013-06-08', '07:22:15', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'SGH-I997', 'US', 'TX', '78239', 'USD', '-1.0000', '0.75625998', 'EUR', '-0.6800'),
(76, '1354125309270772', '2013-06-08', '07:22:15', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'SGH-I997', 'US', 'TX', '78239', 'USD', '3.0000', '0.75625998', 'EUR', '2.2600'),
(77, '1395795529055091', '2013-06-10', '08:57:06', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'manta', 'FR', '', '22300', 'EUR', '-1.0000', '1.00000000', 'EUR', '-0.9000'),
(78, '1395795529055091', '2013-06-10', '08:57:06', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'manta', 'FR', '', '22300', 'EUR', '3.0000', '1.00000000', 'EUR', '2.9900'),
(79, '1310460294821672', '2013-06-12', '03:54:08', '', 'Charge', '', '530 - Weiterreizung nach 1 NT-Eröffnung', 'de.dicendum.bridgedoddle', 1, '530', 'GT-I9100', 'DE', '', '81675', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(80, '1310460294821672', '2013-06-12', '03:54:08', '', 'Google fee', '', '530 - Weiterreizung nach 1 NT-Eröffnung', 'de.dicendum.bridgedoddle', 1, '530', 'GT-I9100', 'DE', '', '81675', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(81, '1377994753303449', '2013-06-12', '08:57:27', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-S5830i', 'DE', '', '45131', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(82, '1377994753303449', '2013-06-12', '08:57:27', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-S5830i', 'DE', '', '45131', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(83, '1353909978018461', '2013-06-12', '05:27:04', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-S5660', 'DE', '', '25938', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(84, '1353909978018461', '2013-06-12', '05:27:04', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-S5660', 'DE', '', '25938', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(85, '1340807267973808', '2013-06-12', '07:04:23', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '30926', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(86, '1340807267973808', '2013-06-12', '07:04:23', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '30926', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(87, '1355962870876489', '2013-06-12', '07:14:55', '', 'Charge', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'GT-I9100', 'DE', '', '30926', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(88, '1355962870876489', '2013-06-12', '07:14:55', '', 'Google fee', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'GT-I9100', 'DE', '', '30926', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(89, '1372854908024375', '2013-06-14', '12:50:38', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tilapia', 'DE', '', '23701', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(90, '1372854908024375', '2013-06-14', '12:50:38', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tilapia', 'DE', '', '23701', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(91, '1311173400491872', '2013-06-14', '06:42:26', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-P7500', 'DK', '', '2800', 'DKK', '-7.0000', '0.13407999', 'EUR', '-0.9000'),
(92, '1311173400491872', '2013-06-14', '06:42:26', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-P7500', 'DK', '', '2800', 'DKK', '22.0000', '0.13407999', 'EUR', '2.9900'),
(93, '1302396699029668', '2013-06-16', '04:21:37', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'cdma_shadow', 'US', 'WA', '98102', 'USD', '3.0000', '0.74962997', 'EUR', '2.2400'),
(94, '1302396699029668', '2013-06-16', '04:21:37', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'cdma_shadow', 'US', 'WA', '98102', 'USD', '-1.0000', '0.74962997', 'EUR', '-0.6700'),
(95, '1364599761817765', '2013-06-16', '07:52:16', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9003', 'ES', '', '28010', 'EUR', '3.0000', '1.00000000', 'EUR', '2.9900'),
(96, '1364599761817765', '2013-06-16', '07:52:16', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9003', 'ES', '', '28010', 'EUR', '-1.0000', '1.00000000', 'EUR', '-0.9000'),
(97, '1309310880431307', '2013-06-18', '04:03:39', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'golden', 'DE', '', '14052', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(98, '1309310880431307', '2013-06-18', '04:03:39', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'golden', 'DE', '', '14052', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(99, '1317920131996629', '2013-06-18', '04:03:40', '', 'Google fee', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'golden', 'DE', '', '14052', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(100, '1317920131996629', '2013-06-18', '04:03:40', '', 'Charge', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'golden', 'DE', '', '14052', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(101, '1348518153483779', '2013-06-21', '02:38:41', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 't0ltevzw', 'US', 'CA', '92501', 'USD', '-1.0000', '0.75620002', 'EUR', '-0.6800'),
(102, '1348518153483779', '2013-06-21', '02:38:41', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 't0ltevzw', 'US', 'CA', '92501', 'USD', '3.0000', '0.75620002', 'EUR', '2.2600'),
(103, '1319760029957814', '2013-06-27', '05:52:15', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '66121', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(104, '1319760029957814', '2013-06-27', '05:52:15', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '66121', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(105, '1399679773020406', '2013-06-27', '10:33:46', '', 'Google fee', '', 'R8 - Eröffnung-Antwort und erstes Rebid FD BASIS', 'de.dicendum.bridgedoddle', 1, 'R8', 'tinnoes77_s9050', 'DE', '', '10625', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(106, '1399679773020406', '2013-06-27', '10:33:46', '', 'Charge', '', 'R8 - Eröffnung-Antwort und erstes Rebid FD BASIS', 'de.dicendum.bridgedoddle', 1, 'R8', 'tinnoes77_s9050', 'DE', '', '10625', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(107, '1300468025710109', '2013-07-01', '05:57:27', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-P6200', 'PT', '', '2775-237', 'EUR', '-0.9000', '1.00000000', 'EUR', '-0.9000'),
(108, '1300468025710109', '2013-07-01', '05:57:27', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-P6200', 'PT', '', '2775-237', 'EUR', '2.9900', '1.00000000', 'EUR', '2.9900'),
(109, '1397344544277359', '2013-07-06', '10:21:07', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(110, '1397344544277359', '2013-07-06', '10:21:07', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'p4notewifiww', 'DE', '', '41844', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(111, '1322089437370130', '2013-07-07', '12:37:08', '', 'Google fee', '', 'R10 - FD Basis – Zweites Gebot des Antwortenden', 'de.dicendum.bridgedoddle', 1, 'R10', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(112, '1322089437370130', '2013-07-07', '12:37:08', '', 'Charge', '', 'R10 - FD Basis – Zweites Gebot des Antwortenden', 'de.dicendum.bridgedoddle', 1, 'R10', 'p4notewifiww', 'DE', '', '41844', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(113, '1317523663037067', '2013-07-09', '12:05:17', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tilapia', 'US', 'CT', '06074', 'USD', '-0.9000', '0.77616000', 'EUR', '-0.7000'),
(114, '1317523663037067', '2013-07-09', '12:05:17', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tilapia', 'US', 'CT', '06074', 'USD', '2.9900', '0.77616000', 'EUR', '2.3200'),
(115, '1368566737811146', '2013-07-16', '12:43:15', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '12459', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(116, '1368566737811146', '2013-07-16', '12:43:15', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '12459', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(117, '1337811829342667', '2013-07-19', '07:11:08', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm0', 'DE', '', '47800', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(118, '1337811829342667', '2013-07-19', '07:11:08', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'm0', 'DE', '', '47800', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(119, '1328428377541815', '2013-07-19', '12:45:47', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tostab12AL', 'DE', '', '25899', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(120, '1328428377541815', '2013-07-19', '12:45:47', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'tostab12AL', 'DE', '', '25899', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(121, '1308650682200781', '2013-07-19', '01:00:00', '', 'Charge', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'tostab12AL', 'DE', '', '25899', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(122, '1308650682200781', '2013-07-19', '01:00:00', '', 'Google fee', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(123, '1344453237145293', '2013-07-19', '01:01:07', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(124, '1344453237145293', '2013-07-19', '01:01:07', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'tostab12AL', 'DE', '', '25899', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(125, '1397980634551447', '2013-07-19', '01:02:06', '', 'Charge', '', '10046 - Relaistransfer', 'de.dicendum.bridgedoddle', 1, '10046', 'tostab12AL', 'DE', '', '25899', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(126, '1397980634551447', '2013-07-19', '01:02:06', '', 'Google fee', '', '10046 - Relaistransfer', 'de.dicendum.bridgedoddle', 1, '10046', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(127, '1349850132994840', '2013-07-23', '02:03:29', '', 'Charge', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'B1-A71', 'DE', '', '10315', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(128, '1349850132994840', '2013-07-23', '02:03:29', '', 'Google fee', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'B1-A71', 'DE', '', '10315', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(129, '1326973525956294', '2013-07-23', '02:06:35', '', 'Charge', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'B1-A71', 'DE', '', '10315', 'EUR', '9.9900', '1.00000000', 'EUR', '9.9900'),
(130, '1326973525956294', '2013-07-23', '02:06:35', '', 'Google fee', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(131, '1316255904786414', '2013-07-29', '02:25:00', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '66121', 'EUR', '-1.5000', '1.00000000', 'EUR', '-1.5000'),
(132, '1316255904786414', '2013-07-29', '02:25:00', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '66121', 'EUR', '4.9900', '1.00000000', 'EUR', '4.9900'),
(133, '1367169143377369', '2013-08-04', '04:00:24', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'd2spr', 'US', 'CA', '94114', 'USD', '3.0000', '0.75273001', 'EUR', '2.2500'),
(134, '1367169143377369', '2013-08-04', '04:00:24', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'd2spr', 'US', 'CA', '94114', 'USD', '-1.0000', '0.75273001', 'EUR', '-0.6700'),
(135, '1346048278328958', '2013-08-18', '05:42:38', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'espresso10wifi', 'DE', '', '65549', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(136, '1346048278328958', '2013-08-18', '05:42:38', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'espresso10wifi', 'DE', '', '65549', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(137, '1307402014330575', '2013-09-14', '12:43:32', '', 'Google fee', '', '531 - FD 2012 – Zweites Gebot des NT-Eröffners', 'de.dicendum.bridgedoddle', 1, '531', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(138, '1307402014330575', '2013-09-14', '12:43:32', '', 'Charge', '', '531 - FD 2012 – Zweites Gebot des NT-Eröffners', 'de.dicendum.bridgedoddle', 1, '531', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(139, '1334060930858301', '2013-09-14', '05:11:14', '', 'Charge', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'p4notewifiww', 'DE', '', '41844', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(140, '1334060930858301', '2013-09-14', '05:11:14', '', 'Google fee', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(141, '1306893121062912', '2013-09-15', '06:35:08', '', 'Charge', '', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', 'de.dicendum.bridgedoddle', 1, '509', 'tostab12AL', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(142, '1306893121062912', '2013-09-15', '06:35:08', '', 'Google fee', '', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', 'de.dicendum.bridgedoddle', 1, '509', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(143, '1309387241469081', '2013-09-15', '06:36:11', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(144, '1309387241469081', '2013-09-15', '06:36:11', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'tostab12AL', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(145, '1378133080799029', '2013-09-15', '06:36:12', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(146, '1378133080799029', '2013-09-15', '06:36:12', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'tostab12AL', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(147, '1337314093659432', '2013-09-18', '06:46:51', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-S5830i', 'DE', '', '12103', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(148, '1337314093659432', '2013-09-18', '06:46:51', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-S5830i', 'DE', '', '12103', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(149, '1305067300702939', '2013-09-20', '07:04:27', '', 'Google fee', '', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', 'de.dicendum.bridgedoddle', 1, '508', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(150, '1305067300702939', '2013-09-20', '07:04:27', '', 'Charge', '', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', 'de.dicendum.bridgedoddle', 1, '508', 'p4notewifiww', 'DE', '', '41844', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(151, '1339261149444666', '2013-09-21', '12:13:52', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'jflte', 'DE', '', '82362', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(152, '1339261149444666', '2013-09-21', '12:13:52', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'jflte', 'DE', '', '82362', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(153, '1330234610398887', '2013-09-21', '12:25:53', '', 'Charge', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(154, '1330234610398887', '2013-09-21', '12:25:53', '', 'Google fee', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(155, '1303434359471965', '2013-09-21', '12:25:54', '', 'Charge', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'jflte', 'DE', '', '82362', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(156, '1303434359471965', '2013-09-21', '12:25:54', '', 'Google fee', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'jflte', 'DE', '', '82362', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(157, '1369341480817362', '2013-10-08', '06:25:07', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'santos10wifi', 'DE', '', '71384', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(158, '1369341480817362', '2013-10-08', '06:25:07', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'santos10wifi', 'DE', '', '71384', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(159, '1393721258440629', '2013-10-11', '07:10:33', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'mango', 'DE', '', '91126', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(160, '1393721258440629', '2013-10-11', '07:10:33', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'mango', 'DE', '', '91126', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(161, '1321679572134342', '2013-10-16', '01:02:26', '', 'Charge', '', '10021 - Michaels Cuebid - Zweifärbergegenreizung', 'de.dicendum.bridgedoddle', 1, '10021', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(162, '1321679572134342', '2013-10-16', '01:02:26', '', 'Google fee', '', '10021 - Michaels Cuebid - Zweifärbergegenreizung', 'de.dicendum.bridgedoddle', 1, '10021', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(163, '1341595320669918', '2013-10-16', '01:04:33', '', 'Charge', '', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT', 'de.dicendum.bridgedoddle', 1, 'R31', 'B1-A71', 'DE', '', '10315', 'EUR', '1.0000', '1.00000000', 'EUR', '0.9900'),
(164, '1341595320669918', '2013-10-16', '01:04:33', '', 'Google fee', '', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT', 'de.dicendum.bridgedoddle', 1, 'R31', 'B1-A71', 'DE', '', '10315', 'EUR', '0.0000', '1.00000000', 'EUR', '-0.3000'),
(165, '1383449010073211', '2013-10-16', '02:31:19', '', 'Google fee', '', '520 - FORUM D VERSUCHSGEBOTE - TRIAL BIDS Help sui', 'de.dicendum.bridgedoddle', 1, '520', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(166, '1383449010073211', '2013-10-16', '02:31:19', '', 'Charge', '', '520 - FORUM D VERSUCHSGEBOTE - TRIAL BIDS Help sui', 'de.dicendum.bridgedoddle', 1, '520', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(167, '1355016598036173', '2013-10-16', '02:35:24', '', 'Google fee', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(168, '1355016598036173', '2013-10-16', '02:35:24', '', 'Charge', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(169, '1308716727139537', '2013-10-22', '08:00:52', '', 'Charge', '', 'R4 - Reizung – Eröffnung und Antwort - Hand', 'de.dicendum.bridgedoddle', 1, 'R4', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(170, '1308716727139537', '2013-10-22', '08:00:52', '', 'Google fee', '', 'R4 - Reizung – Eröffnung und Antwort - Hand', 'de.dicendum.bridgedoddle', 1, 'R4', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(171, '1392697285598989', '2013-10-22', '08:03:55', '', 'Charge', '', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', 'de.dicendum.bridgedoddle', 1, 'R5', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(172, '1392697285598989', '2013-10-22', '08:03:55', '', 'Google fee', '', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM', 'de.dicendum.bridgedoddle', 1, 'R5', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(173, '1361221437157563', '2013-10-22', '08:04:57', '', 'Google fee', '', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –', 'de.dicendum.bridgedoddle', 1, 'R7', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(174, '1361221437157563', '2013-10-22', '08:04:57', '', 'Charge', '', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –', 'de.dicendum.bridgedoddle', 1, 'R7', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(175, '1329983836210049', '2013-10-22', '08:05:55', '', 'Charge', '', 'R8 - Eröffnung-Antwort und erstes Rebid FD BASIS', 'de.dicendum.bridgedoddle', 1, 'R8', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(176, '1329983836210049', '2013-10-22', '08:05:55', '', 'Google fee', '', 'R8 - Eröffnung-Antwort und erstes Rebid FD BASIS', 'de.dicendum.bridgedoddle', 1, 'R8', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(177, '1363870988301438', '2013-10-26', '09:24:55', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'S6000', 'DE', '', '91336', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(178, '1363870988301438', '2013-10-26', '09:24:55', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'S6000', 'DE', '', '91336', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(179, '1338820819198510', '2013-10-29', '08:29:20', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(180, '1338820819198510', '2013-10-29', '08:29:20', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(181, '1340273912791156', '2013-10-29', '08:32:04', '', 'Google fee', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(182, '1340273912791156', '2013-10-29', '08:32:04', '', 'Charge', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(183, '1370938078746869', '2013-10-29', '08:33:34', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(184, '1370938078746869', '2013-10-29', '08:33:34', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(185, '1341223834006370', '2013-10-29', '08:37:47', '', 'Charge', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(186, '1341223834006370', '2013-10-29', '08:37:47', '', 'Google fee', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(187, '1398342949994838', '2013-10-29', '08:41:42', '', 'Google fee', '', '511 Forum D 2012 - Die 2. Antwort des Responders -', 'de.dicendum.bridgedoddle', 1, '511', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(188, '1398342949994838', '2013-10-29', '08:41:42', '', 'Charge', '', '511 Forum D 2012 - Die 2. Antwort des Responders -', 'de.dicendum.bridgedoddle', 1, '511', 'LIFETAB_E10310', 'DE', '', '79189', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(189, '1370864338897915', '2013-10-29', '06:30:49', '', 'Google fee', '', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BAS', 'de.dicendum.bridgedoddle', 1, 'R9', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(190, '1370864338897915', '2013-10-29', '06:30:49', '', 'Charge', '', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BAS', 'de.dicendum.bridgedoddle', 1, 'R9', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(191, '1358682318264918', '2013-10-29', '06:43:19', '', 'Google fee', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(192, '1358682318264918', '2013-10-29', '06:43:19', '', 'Charge', '', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  B', 'de.dicendum.bridgedoddle', 1, 'R30', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(193, '1329196280303957', '2013-10-29', '06:45:24', '', 'Charge', '', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT', 'de.dicendum.bridgedoddle', 1, 'R31', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(194, '1329196280303957', '2013-10-29', '06:45:24', '', 'Google fee', '', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT', 'de.dicendum.bridgedoddle', 1, 'R31', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(195, '1368260258685008', '2013-10-30', '07:07:42', '', 'Google fee', '', '10031 - 4. Farbe forcing', 'de.dicendum.bridgedoddle', 1, '10031', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(196, '1368260258685008', '2013-10-30', '07:07:42', '', 'Charge', '', '10031 - 4. Farbe forcing', 'de.dicendum.bridgedoddle', 1, '10031', 'tostab12AL', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(197, '1335722449867491', '2013-10-30', '07:14:53', '', 'Google fee', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(198, '1335722449867491', '2013-10-30', '07:14:53', '', 'Charge', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'tostab12AL', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(199, '1372158077325063', '2013-10-30', '07:15:40', '', 'Charge', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'tostab12AL', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(200, '1372158077325063', '2013-10-30', '07:15:40', '', 'Google fee', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'tostab12AL', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(201, '1372914502672764', '2013-11-01', '11:37:28', '', 'Charge', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(202, '1372914502672764', '2013-11-01', '11:37:28', '', 'Google fee', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(203, '1315066668853432', '2013-11-01', '11:48:20', '', 'Google fee', '', '5M40 Forum D 2012 - Appetizer', 'de.dicendum.bridgedoddle', 1, '5M40', 'jflte', 'DE', '', '82362', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(204, '1315066668853432', '2013-11-01', '11:48:20', '', 'Charge', '', '5M40 Forum D 2012 - Appetizer', 'de.dicendum.bridgedoddle', 1, '5M40', 'jflte', 'DE', '', '82362', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(205, '1379772051642617', '2013-11-01', '11:48:33', '', 'Google fee', '', '701 - BETTER MINOR - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '701', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(206, '1379772051642617', '2013-11-01', '11:48:33', '', 'Charge', '', '701 - BETTER MINOR - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '701', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(207, '1322434220103288', '2013-11-01', '11:51:50', '', 'Google fee', '', '530 - Weiterreizung nach 1 NT-Eröffnung', 'de.dicendum.bridgedoddle', 1, '530', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(208, '1322434220103288', '2013-11-01', '11:51:50', '', 'Charge', '', '530 - Weiterreizung nach 1 NT-Eröffnung', 'de.dicendum.bridgedoddle', 1, '530', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(209, '1344329552072252', '2013-11-02', '07:38:47', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '10589', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(210, '1344329552072252', '2013-11-02', '07:38:47', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'GT-I9100', 'DE', '', '10589', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(211, '1393853445864558', '2013-11-02', '09:34:34', '', 'Charge', '', '10046 - Relaistransfer', 'de.dicendum.bridgedoddle', 1, '10046', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(212, '1393853445864558', '2013-11-02', '09:34:34', '', 'Google fee', '', '10046 - Relaistransfer', 'de.dicendum.bridgedoddle', 1, '10046', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(213, '1389777572258352', '2013-11-02', '09:35:33', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(214, '1389777572258352', '2013-11-02', '09:35:33', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(215, '1302018408664825', '2013-11-02', '09:36:21', '', 'Google fee', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(216, '1302018408664825', '2013-11-02', '09:36:21', '', 'Charge', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(217, '1320468364073519', '2013-11-02', '09:42:14', '', 'Google fee', '', '705 - BETTER MINOR-Reizung – EÖ und Antwort', 'de.dicendum.bridgedoddle', 1, '705', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(218, '1320468364073519', '2013-11-02', '09:42:14', '', 'Charge', '', '705 - BETTER MINOR-Reizung – EÖ und Antwort', 'de.dicendum.bridgedoddle', 1, '705', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(219, '1361971671691417', '2013-11-03', '05:52:39', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'ODYS', 'DE', '', '22850', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(220, '1361971671691417', '2013-11-03', '05:52:39', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'ODYS', 'DE', '', '22850', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(221, '1363111148869195', '2013-11-03', '06:05:02', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(222, '1363111148869195', '2013-11-03', '06:05:02', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(223, '1308165052939222', '2013-11-03', '06:06:54', '', 'Charge', '', '506 - Forum D 2012 - NT - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '506', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(224, '1308165052939222', '2013-11-03', '06:06:54', '', 'Google fee', '', '506 - Forum D 2012 - NT - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '506', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(225, '1373028568068879', '2013-11-05', '04:16:38', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '38518', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900');
INSERT INTO `playapps` (`id`, `description`, `date`, `time`, `tax`, `transaction`, `refund`, `title`, `productId`, `type`, `skuId`, `hardware`, `country`, `state`, `postal`, `bCurrency`, `bAmount`, `conversion`, `mCurrency`, `mAmount`) VALUES
(226, '1373028568068879', '2013-11-05', '04:16:38', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'golden', 'DE', '', '38518', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(227, '1380106349704881', '2013-11-06', '12:46:07', '', 'Google fee', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'hwu8510', 'DE', '', '33335', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(228, '1380106349704881', '2013-11-06', '12:46:07', '', 'Charge', '', 'Bridge Doddle', 'de.dicendum.bridgedoddle', 0, '', 'hwu8510', 'DE', '', '33335', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(229, '1308133311100557', '2013-11-08', '01:27:18', '', 'Charge', '', '10021 - Michaels Cuebid - Zweifärbergegenreizung', 'de.dicendum.bridgedoddle', 1, '10021', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(230, '1308133311100557', '2013-11-08', '01:27:18', '', 'Google fee', '', '10021 - Michaels Cuebid - Zweifärbergegenreizung', 'de.dicendum.bridgedoddle', 1, '10021', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(231, '1398134563192867', '2013-11-08', '01:28:35', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(232, '1398134563192867', '2013-11-08', '01:28:35', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(233, '1345761856004685', '2013-11-10', '10:33:40', '', 'Charge', '', '704 - BETTER MINOR - Eröffnungen in UF/OF und die ', 'de.dicendum.bridgedoddle', 1, '704', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(234, '1345761856004685', '2013-11-10', '10:33:40', '', 'Google fee', '', '704 - BETTER MINOR - Eröffnungen in UF/OF und die ', 'de.dicendum.bridgedoddle', 1, '704', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(235, '1341178184930844', '2013-11-10', '10:34:47', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(236, '1341178184930844', '2013-11-10', '10:34:47', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(237, '1395717908148291', '2013-11-10', '10:35:44', '', 'Charge', '', '708 - BETTER MINOR - Eröffnung-Antwort und erstes ', 'de.dicendum.bridgedoddle', 1, '708', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(238, '1395717908148291', '2013-11-10', '10:35:44', '', 'Google fee', '', '708 - BETTER MINOR - Eröffnung-Antwort und erstes ', 'de.dicendum.bridgedoddle', 1, '708', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(239, '1356179907863493', '2013-11-22', '03:33:56', '', 'Google fee', '', '530 - Weiterreizung nach 1 NT-Eröffnung', 'de.dicendum.bridgedoddle', 1, '530', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(240, '1356179907863493', '2013-11-22', '03:33:56', '', 'Charge', '', '530 - Weiterreizung nach 1 NT-Eröffnung', 'de.dicendum.bridgedoddle', 1, '530', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(241, '1345273054870639', '2013-11-22', '03:34:56', '', 'Charge', '', '10031 - 4. Farbe forcing', 'de.dicendum.bridgedoddle', 1, '10031', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(242, '1345273054870639', '2013-11-22', '03:34:56', '', 'Google fee', '', '10031 - 4. Farbe forcing', 'de.dicendum.bridgedoddle', 1, '10031', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(243, '1367971813846109', '2013-11-24', '09:35:06', '', 'Google fee', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'GT-N7000', 'DE', '', '81377', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(244, '1367971813846109', '2013-11-24', '09:35:06', '', 'Charge', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'GT-N7000', 'DE', '', '81377', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(245, '1363774479151472', '2013-11-26', '05:55:47', '', 'Google fee', '', '201 - SAYC Deutsch - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '201', 'santos10wifi', 'DE', '', '71384', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(246, '1363774479151472', '2013-11-26', '05:55:47', '', 'Charge', '', '201 - SAYC Deutsch - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '201', 'santos10wifi', 'DE', '', '71384', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(247, '1380937475783084', '2013-12-02', '07:10:01', '', 'Charge', '', '10021 - Michaels Cuebid - Zweifärbergegenreizung', 'de.dicendum.bridgedoddle', 1, '10021', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(248, '1380937475783084', '2013-12-02', '07:10:01', '', 'Google fee', '', '10021 - Michaels Cuebid - Zweifärbergegenreizung', 'de.dicendum.bridgedoddle', 1, '10021', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(249, '1357151617529895', '2013-12-02', '07:10:58', '', 'Google fee', '', 'A5 - Wörterbuch Englisch - Deutsch', 'de.dicendum.bridgedoddle', 1, 'A5', 'jflte', 'DE', '', '82362', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(250, '1357151617529895', '2013-12-02', '07:10:58', '', 'Charge', '', 'A5 - Wörterbuch Englisch - Deutsch', 'de.dicendum.bridgedoddle', 1, 'A5', 'jflte', 'DE', '', '82362', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(251, '1326218671891417', '2013-12-20', '12:23:30', '', 'Charge', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'jflte', 'DE', '', '82031', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(252, '1326218671891417', '2013-12-20', '12:23:30', '', 'Google fee', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'jflte', 'DE', '', '82031', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(253, '1395692264804245', '2013-12-21', '06:18:19', '', 'Charge', '', 'R14 -  Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, 'R14', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(254, '1395692264804245', '2013-12-21', '06:18:19', '', 'Google fee', '', 'R14 -  Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, 'R14', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(255, '1392837617008517', '2013-12-27', '05:04:17', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'jflte', 'DE', '', '82031', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(256, '1392837617008517', '2013-12-27', '05:04:17', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'jflte', 'DE', '', '82031', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(257, '1344300585897648', '2013-12-28', '10:39:24', '', 'Charge', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'LIFETAB_E7316', 'DE', '', '10247', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(258, '1344300585897648', '2013-12-28', '10:39:24', '', 'Google fee', '', '502 - Benjamin - Semi- und Partieforcing Eröffnung', 'de.dicendum.bridgedoddle', 1, '502', 'LIFETAB_E7316', 'DE', '', '10247', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(259, '1365237462277387', '2013-12-28', '04:44:06', '', 'Charge', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(260, '1365237462277387', '2013-12-28', '04:44:06', '', 'Google fee', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(261, '1307618541055698', '2013-12-28', '04:44:42', '', 'Google fee', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(262, '1307618541055698', '2013-12-28', '04:44:42', '', 'Charge', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(263, '1384760563462390', '2013-12-28', '04:45:34', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(264, '1384760563462390', '2013-12-28', '04:45:34', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(265, '1339278574562711', '2013-12-28', '04:45:42', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'mango', 'DE', '', '91126', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(266, '1339278574562711', '2013-12-28', '04:45:42', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'mango', 'DE', '', '91126', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(267, '1363850059869851', '2014-01-08', '04:14:46', '', 'Charge', '', '511 Forum D 2012 - Die 2. Antwort des Responders -', 'de.dicendum.bridgedoddle', 1, '511', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(268, '1363850059869851', '2014-01-08', '04:14:46', '', 'Google fee', '', '511 Forum D 2012 - Die 2. Antwort des Responders -', 'de.dicendum.bridgedoddle', 1, '511', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(269, '1310018519429286', '2014-01-08', '04:16:23', '', 'Google fee', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(270, '1310018519429286', '2014-01-08', '04:16:23', '', 'Charge', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(271, '1319507621562670', '2014-01-14', '06:32:03', '', 'Google fee', '', '10046 - Relaistransfer', 'de.dicendum.bridgedoddle', 1, '10046', 'ville', 'DE', '', '40699', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(272, '1319507621562670', '2014-01-14', '06:32:03', '', 'Charge', '', '10046 - Relaistransfer', 'de.dicendum.bridgedoddle', 1, '10046', 'ville', 'DE', '', '40699', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(273, '1300163679662574', '2014-01-14', '12:01:58', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'endeavoru', 'DE', '', '40699', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(274, '1300163679662574', '2014-01-14', '12:01:58', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'endeavoru', 'DE', '', '40699', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(275, '1358234734958040', '2014-01-28', '01:56:12', '', 'Google fee', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'm0', 'DE', '', '56068', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(276, '1358234734958040', '2014-01-28', '01:56:12', '', 'Charge', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'm0', 'DE', '', '56068', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(277, '1322588665515831', '2014-01-28', '03:39:55', '', 'Google fee', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'jflte', 'DE', '', '82031', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(278, '1322588665515831', '2014-01-28', '03:39:55', '', 'Charge', '', '10050 Informationskontra - Forum D (Basis und 2012', 'de.dicendum.bridgedoddle', 1, '10050', 'jflte', 'DE', '', '82031', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(279, '1319126720855823', '2014-01-31', '12:24:14', '', 'Google fee', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'ODYS', 'DE', '', '22850', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(280, '1319126720855823', '2014-01-31', '12:24:14', '', 'Charge', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'ODYS', 'DE', '', '22850', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(281, '1381725488811986', '2014-02-10', '09:07:41', '', 'Charge', '', '506 - Forum D 2012 - NT - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '506', 'jflte', 'DE', '', '82031', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(282, '1381725488811986', '2014-02-10', '09:07:41', '', 'Google fee', '', '506 - Forum D 2012 - NT - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '506', 'jflte', 'DE', '', '82031', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(283, '1331435156260702', '2014-02-12', '03:01:34', '', 'Charge', '', 'R1 - Die Eröffnungen Forum D - Basis', 'de.dicendum.bridgedoddle', 1, 'R1', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(284, '1331435156260702', '2014-02-12', '03:01:34', '', 'Google fee', '', 'R1 - Die Eröffnungen Forum D - Basis', 'de.dicendum.bridgedoddle', 1, 'R1', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(285, '1385652958204181', '2014-02-14', '10:43:02', '', 'Charge', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'jflte', 'DE', '', '82031', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(286, '1385652958204181', '2014-02-14', '10:43:02', '', 'Google fee', '', '10049 - Antworten auf Informationskontra', 'de.dicendum.bridgedoddle', 1, '10049', 'jflte', 'DE', '', '82031', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(287, '1369005580782045', '2014-02-18', '04:23:25', '', 'Charge', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'jflte', 'DE', '', '82031', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(288, '1369005580782045', '2014-02-18', '04:23:25', '', 'Google fee', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'jflte', 'DE', '', '82031', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(289, '1328811734940192', '2014-03-24', '02:13:57', '', 'Charge', '', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BAS', 'de.dicendum.bridgedoddle', 1, 'R9', 'golden', 'DE', '', '14052', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(290, '1328811734940192', '2014-03-24', '02:13:57', '', 'Google fee', '', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BAS', 'de.dicendum.bridgedoddle', 1, 'R9', 'golden', 'DE', '', '14052', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(291, '1303782085445846', '2014-04-03', '12:11:30', '', 'Charge', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'espresso10rf', 'DE', '', '10589', 'EUR', '5.0000', '1.00000000', 'EUR', '4.9900'),
(292, '1303782085445846', '2014-04-03', '12:11:30', '', 'Google fee', '', '20001 - Ausspiele für Anfaenger', 'de.dicendum.bridgedoddle', 1, '20001', 'espresso10rf', 'DE', '', '10589', 'EUR', '-2.0000', '1.00000000', 'EUR', '-1.5000'),
(293, '1358602138450027', '2014-04-03', '12:24:52', '', 'Charge', '', 'R14 -  Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, 'R14', 'espresso10rf', 'DE', '', '10589', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(294, '1358602138450027', '2014-04-03', '12:24:52', '', 'Google fee', '', 'R14 -  Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, 'R14', 'espresso10rf', 'DE', '', '10589', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(295, '1315370592884557', '2014-04-06', '12:30:32', '', 'Charge', '', 'R15 - 1. Wiedergebot nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, 'R15', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(296, '1315370592884557', '2014-04-06', '12:30:32', '', 'Google fee', '', 'R15 - 1. Wiedergebot nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, 'R15', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(297, '1355508721076351', '2014-04-12', '09:06:08', '', 'Charge', '', 'Testabo', 'de.dicendum.bridgedoddle', 1, 'ABOTEST', 'mako', 'DE', '', '10178', 'EUR', '1.0000', '1.00000000', 'EUR', '1.0000'),
(298, '1355508721076351', '2014-04-12', '09:06:08', '', 'Google fee', '', 'Testabo', 'de.dicendum.bridgedoddle', 1, 'ABOTEST', 'mako', 'DE', '', '10178', 'EUR', '0.0000', '1.00000000', 'EUR', '-0.3000'),
(299, '1385939098996909', '2014-04-24', '04:24:45', '', 'Charge', '', 'Testabo', 'de.dicendum.bridgedoddle', 1, 'ABOTEST', 'hwY300-0100', 'DE', '', '30163', 'EUR', '1.0000', '1.00000000', 'EUR', '1.0000'),
(300, '1385939098996909', '2014-04-24', '04:24:45', '', 'Google fee', '', 'Testabo', 'de.dicendum.bridgedoddle', 1, 'ABOTEST', 'hwY300-0100', 'DE', '', '30163', 'EUR', '0.0000', '1.00000000', 'EUR', '-0.3000'),
(301, '1310216070765680', '2014-04-29', '03:40:03', '', 'Charge', '', 'R18 - FD Basis – 2. Gebot des Antwortenden nach 1N', 'de.dicendum.bridgedoddle', 1, 'R18', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(302, '1310216070765680', '2014-04-29', '03:40:03', '', 'Google fee', '', 'R18 - FD Basis – 2. Gebot des Antwortenden nach 1N', 'de.dicendum.bridgedoddle', 1, 'R18', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(303, '1306546630225026', '2014-06-10', '05:53:44', '', 'Google fee', '', '20050 - Alleinspiel Spielplan I - W. Gromoeller', 'de.dicendum.bridgedoddle', 1, '20050', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(304, '1306546630225026', '2014-06-10', '05:53:44', '', 'Charge', '', '20050 - Alleinspiel Spielplan I - W. Gromoeller', 'de.dicendum.bridgedoddle', 1, '20050', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(305, '1318471774807289', '2014-06-10', '05:53:58', '', 'Google fee', '', '20015 - Spieltechnik - Farbbehandlung', 'de.dicendum.bridgedoddle', 1, '20015', 'B1-A71', 'DE', '', '10315', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(306, '1318471774807289', '2014-06-10', '05:53:58', '', 'Charge', '', '20015 - Spieltechnik - Farbbehandlung', 'de.dicendum.bridgedoddle', 1, '20015', 'B1-A71', 'DE', '', '10315', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(307, '1346381820068195', '2014-06-20', '07:28:51', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'lt023g', 'DE', '', '89231', 'EUR', '-30.0000', '1.00000000', 'EUR', '-29.7000'),
(308, '1346381820068195', '2014-06-20', '07:28:51', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'lt023g', 'DE', '', '89231', 'EUR', '99.0000', '1.00000000', 'EUR', '99.0000'),
(309, '1325401154506093', '2014-06-23', '02:50:46', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'GT-I9100G', 'DE', '', '10629', 'EUR', '-30.0000', '1.00000000', 'EUR', '-29.7000'),
(310, '1325401154506093', '2014-06-23', '02:50:46', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'GT-I9100G', 'DE', '', '10629', 'EUR', '99.0000', '1.00000000', 'EUR', '99.0000'),
(311, '1356397928624488', '2014-06-24', '02:46:57', '', 'Google fee', '', '20050 - Alleinspiel Spielplan I - W. Gromoeller', 'de.dicendum.bridgedoddle', 1, '20050', 'santos10wifi', 'DE', '', '79111', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(312, '1356397928624488', '2014-06-24', '02:46:57', '', 'Charge', '', '20050 - Alleinspiel Spielplan I - W. Gromoeller', 'de.dicendum.bridgedoddle', 1, '20050', 'santos10wifi', 'DE', '', '79111', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(313, '1320655551317375', '2014-08-01', '03:01:54', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'espresso10rf', 'DE', '', '10589', 'EUR', '-30.0000', '1.00000000', 'EUR', '-29.7000'),
(314, '1320655551317375', '2014-08-01', '03:01:54', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'espresso10rf', 'DE', '', '10589', 'EUR', '99.0000', '1.00000000', 'EUR', '99.0000'),
(315, '1398436956167399', '2014-08-13', '10:56:48', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'B1-A71', 'DE', '', '10315', 'EUR', '-30.0000', '1.00000000', 'EUR', '-29.7000'),
(316, '1398436956167399', '2014-08-13', '10:56:48', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'B1-A71', 'DE', '', '10315', 'EUR', '99.0000', '1.00000000', 'EUR', '99.0000'),
(317, '1351529393302856', '2014-09-13', '02:58:56', '', 'Google fee', '', '301 - SAYC - Engl - Openings', 'de.dicendum.bridgedoddle', 1, '301', 'MTK8389', 'CZ', '', '10000', 'CZK', '-25.0000', '0.03625600', 'EUR', '-0.8900'),
(318, '1351529393302856', '2014-09-13', '02:58:56', '', 'Charge', '', '301 - SAYC - Engl - Openings', 'de.dicendum.bridgedoddle', 1, '301', 'MTK8389', 'CZ', '', '10000', 'CZK', '82.0000', '0.03625600', 'EUR', '2.9800'),
(319, '1306231496402393', '2014-09-13', '03:00:23', '', 'Google fee', '', '304 - SAYC - ENG - First Answer to Minor/Major-Ope', 'de.dicendum.bridgedoddle', 1, '304', 'MTK8389', 'CZ', '', '10000', 'CZK', '-25.0000', '0.03625600', 'EUR', '-0.8900'),
(320, '1306231496402393', '2014-09-13', '03:00:23', '', 'Charge', '', '304 - SAYC - ENG - First Answer to Minor/Major-Ope', 'de.dicendum.bridgedoddle', 1, '304', 'MTK8389', 'CZ', '', '10000', 'CZK', '82.0000', '0.03625600', 'EUR', '2.9800'),
(321, '1372758338690705', '2014-09-17', '08:15:57', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'kylepro', 'DE', '', '10247', 'EUR', '-30.0000', '1.00000000', 'EUR', '-29.7000'),
(322, '1372758338690705', '2014-09-17', '08:15:57', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'kylepro', 'DE', '', '10247', 'EUR', '99.0000', '1.00000000', 'EUR', '99.0000'),
(323, '1353035612798180', '2014-09-28', '09:36:55', '', 'Google fee', '', '20050 - Alleinspiel Spielplan I - W. Gromoeller', 'de.dicendum.bridgedoddle', 1, '20050', 'santos10wifi', 'DE', '', '82467', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(324, '1353035612798180', '2014-09-28', '09:36:55', '', 'Charge', '', '20050 - Alleinspiel Spielplan I - W. Gromoeller', 'de.dicendum.bridgedoddle', 1, '20050', 'santos10wifi', 'DE', '', '82467', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(325, '1346216142053460', '2014-09-29', '10:03:32', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'santos10wifi', 'DE', '', '96138', 'EUR', '-15.0000', '1.00000000', 'EUR', '-14.7000'),
(326, '1346216142053460', '2014-09-29', '10:03:32', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'santos10wifi', 'DE', '', '96138', 'EUR', '49.0000', '1.00000000', 'EUR', '49.0000'),
(327, '1327890709083781', '2014-10-05', '05:40:23', '', 'Google fee', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'tostab12AL', 'DE', '', '25899', 'EUR', '-24.0000', '1.00000000', 'EUR', '-23.7000'),
(328, '1327890709083781', '2014-10-05', '05:40:23', '', 'Charge', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'tostab12AL', 'DE', '', '25899', 'EUR', '79.0000', '1.00000000', 'EUR', '79.0000'),
(329, '1333759300221766', '2014-10-06', '01:26:13', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-4.0000', '1.00000000', 'EUR', '-3.9000'),
(330, '1333759300221766', '2014-10-06', '01:26:13', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '13.0000', '1.00000000', 'EUR', '12.9900'),
(331, '1344171884628497', '2014-10-07', '06:41:49', '', 'Google fee', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'm0', 'DE', '', '13189', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(332, '1344171884628497', '2014-10-07', '06:41:49', '', 'Charge', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'm0', 'DE', '', '13189', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(333, '1343334075194033', '2014-10-18', '12:51:24', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'skate', 'DE', '', '68167', 'EUR', '-4.0000', '1.00000000', 'EUR', '-3.9000'),
(334, '1343334075194033', '2014-10-18', '12:51:24', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'skate', 'DE', '', '68167', 'EUR', '13.0000', '1.00000000', 'EUR', '12.9900'),
(335, '1313745908342522', '2014-10-30', '01:55:56', '', 'Google fee', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'jflte', 'DE', '', '14195', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(336, '1313745908342522', '2014-10-30', '01:55:56', '', 'Charge', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'jflte', 'DE', '', '14195', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(337, '1333759300221766..0', '2014-11-06', '06:41:05', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-4.0000', '1.00000000', 'EUR', '-3.9000'),
(338, '1333759300221766..0', '2014-11-06', '06:41:05', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '13.0000', '1.00000000', 'EUR', '12.9900'),
(339, '1376235637175765', '2014-11-11', '02:25:27', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'santos10wifi', 'DE', '', '79111', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(340, '1376235637175765', '2014-11-11', '02:25:27', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'santos10wifi', 'DE', '', '79111', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(341, '1339887749921703', '2014-11-11', '02:28:40', '', 'Google fee', '', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', 'de.dicendum.bridgedoddle', 1, '508', 'santos10wifi', 'DE', '', '79111', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(342, '1339887749921703', '2014-11-11', '02:28:40', '', 'Charge', '', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', 'de.dicendum.bridgedoddle', 1, '508', 'santos10wifi', 'DE', '', '79111', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(343, '1358220699115876', '2014-11-11', '02:31:19', '', 'Google fee', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'santos10wifi', 'DE', '', '79111', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(344, '1358220699115876', '2014-11-11', '02:31:19', '', 'Charge', '', '510 Forum D 2012 - Die 2. Antwort des Responders', 'de.dicendum.bridgedoddle', 1, '510', 'santos10wifi', 'DE', '', '79111', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(345, '1353070143044544', '2014-11-14', '04:30:52', '', 'Google fee', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'santos10lte', 'DE', '', '79249', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(346, '1353070143044544', '2014-11-14', '04:30:52', '', 'Charge', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'santos10lte', 'DE', '', '79249', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(347, '1365550550570672', '2014-11-14', '04:32:16', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'santos10lte', 'DE', '', '79249', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(348, '1365550550570672', '2014-11-14', '04:32:16', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'santos10lte', 'DE', '', '79249', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(349, '1330568305345430', '2014-11-25', '05:39:30', '', 'Google fee', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'p4noterf', 'DE', '', '19000', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(350, '1330568305345430', '2014-11-25', '05:39:30', '', 'Charge', '', '512 Gegenreizung - Hand', 'de.dicendum.bridgedoddle', 1, '512', 'p4noterf', 'DE', '', '19000', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(351, '1333759300221766..1', '2014-12-06', '06:39:01', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-4.0000', '1.00000000', 'EUR', '-3.9000'),
(352, '1333759300221766..1', '2014-12-06', '06:39:01', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '13.0000', '1.00000000', 'EUR', '12.9900'),
(353, '1323137235373940', '2014-12-16', '05:20:39', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tilapia', 'DE', '', '44799', 'EUR', '-4.0000', '1.00000000', 'EUR', '-3.9000'),
(354, '1323137235373940', '2014-12-16', '05:20:39', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tilapia', 'DE', '', '44799', 'EUR', '13.0000', '1.00000000', 'EUR', '12.9900'),
(355, '1345899970942578', '2014-12-22', '04:35:43', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-4.0000', '1.00000000', 'EUR', '-3.9000'),
(356, '1345899970942578', '2014-12-22', '04:35:43', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '13.0000', '1.00000000', 'EUR', '12.9900'),
(357, '1397990430601225', '2014-12-22', '07:42:13', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'matissewifi', 'DE', '', '79299', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(358, '1397990430601225', '2014-12-22', '07:42:13', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'matissewifi', 'DE', '', '79299', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(359, '1370993947254372', '2014-12-29', '05:47:36', '', 'Google fee', '', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'GT-P1000', 'GB', '', 'CV326PA', 'GBP', '0.0000', '1.27600002', 'EUR', '-0.3200'),
(360, '1370993947254372', '2014-12-29', '05:47:36', '', 'Charge', '', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'GT-P1000', 'GB', '', 'CV326PA', 'GBP', '1.0000', '1.27600002', 'EUR', '1.0700'),
(361, '1333759300221766..2', '2015-01-06', '06:38:41', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(362, '1333759300221766..2', '2015-01-06', '06:38:41', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(363, '1374190283754283', '2015-01-18', '05:00:04', '', 'Google fee', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'tilapia', 'DE', '', '44799', 'EUR', '-20.0000', '1.00000000', 'EUR', '-19.9200'),
(364, '1374190283754283', '2015-01-18', '05:00:04', '', 'Charge', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'tilapia', 'DE', '', '44799', 'EUR', '66.0000', '1.00000000', 'EUR', '66.3900'),
(365, '1345462819401394', '2015-01-18', '05:03:35', '', 'Google fee', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'golden', 'DE', '', '38518', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.5200'),
(366, '1345462819401394', '2015-01-18', '05:03:35', '', 'Charge', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'golden', 'DE', '', '38518', 'EUR', '8.0000', '1.00000000', 'EUR', '8.3900'),
(367, '1373960279211341', '2015-01-18', '12:23:39', '', 'Google fee', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'm0', 'DE', '', '79117', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.5200'),
(368, '1373960279211341', '2015-01-18', '12:23:39', '', 'Charge', '', '0501 - Forum D 2012 - Eröffnungen', 'de.dicendum.bridgedoddle', 1, '501', 'm0', 'DE', '', '79117', 'EUR', '8.0000', '1.00000000', 'EUR', '8.3900'),
(369, '1345899970942578..0', '2015-01-22', '10:48:24', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(370, '1345899970942578..0', '2015-01-22', '10:48:24', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(371, '1364542832359700', '2015-01-30', '10:29:58', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'matissewifi', 'DE', '', '29664', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(372, '1364542832359700', '2015-01-30', '10:29:58', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'matissewifi', 'DE', '', '29664', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(373, '1305939146804414', '2015-02-02', '01:52:13', '', 'Google fee', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'jflte', 'DE', '', '82031', 'EUR', '-20.0000', '1.00000000', 'EUR', '-19.9200'),
(374, '1305939146804414', '2015-02-02', '01:52:13', '', 'Charge', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'jflte', 'DE', '', '82031', 'EUR', '66.0000', '1.00000000', 'EUR', '66.3900'),
(375, '1373685172600356', '2015-02-03', '09:05:05', '', 'Google fee', '', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebun', 'de.dicendum.bridgedoddle', 1, '417', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.7700'),
(376, '1373685172600356', '2015-02-03', '09:05:05', '', 'Charge', '', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebun', 'de.dicendum.bridgedoddle', 1, '417', 'p4notewifiww', 'DE', '', '41844', 'EUR', '9.0000', '1.00000000', 'EUR', '9.2400'),
(377, '1391071053336646', '2015-02-03', '09:10:31', '', 'Google fee', '', '448 - FD Plus 2015 - Oberfarbfit nach Zwischenreiz', 'de.dicendum.bridgedoddle', 1, '448', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.7700'),
(378, '1391071053336646', '2015-02-03', '09:10:31', '', 'Charge', '', '448 - FD Plus 2015 - Oberfarbfit nach Zwischenreiz', 'de.dicendum.bridgedoddle', 1, '448', 'p4notewifiww', 'DE', '', '41844', 'EUR', '9.0000', '1.00000000', 'EUR', '9.2400'),
(379, '1398632656108575', '2015-02-03', '09:11:55', '', 'Google fee', '', '449 - FD Plus 2015 - Unterfarbfit nach Zwischenrei', 'de.dicendum.bridgedoddle', 1, '449', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.7700'),
(380, '1398632656108575', '2015-02-03', '09:11:55', '', 'Charge', '', '449 - FD Plus 2015 - Unterfarbfit nach Zwischenrei', 'de.dicendum.bridgedoddle', 1, '449', 'p4notewifiww', 'DE', '', '41844', 'EUR', '9.0000', '1.00000000', 'EUR', '9.2400'),
(381, '1304644370734645', '2015-02-11', '05:32:26', '', 'Google fee', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'm0', 'DE', '', '79117', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.5200'),
(382, '1304644370734645', '2015-02-11', '05:32:26', '', 'Charge', '', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antwo', 'de.dicendum.bridgedoddle', 1, '504', 'm0', 'DE', '', '79117', 'EUR', '8.0000', '1.00000000', 'EUR', '8.3900'),
(383, '1388020828805696', '2015-02-14', '02:15:50', '', 'Google fee', '', '513APTZ - Info-X und Antworten auf Info-X - FD 201', 'de.dicendum.bridgedoddle', 1, '513APTZ', 'matissewifi', 'DE', '', '79299', 'EUR', '-1.0000', '1.00000000', 'EUR', '-1.0100'),
(384, '1388020828805696', '2015-02-14', '02:15:50', '', 'Charge', '', '513APTZ - Info-X und Antworten auf Info-X - FD 201', 'de.dicendum.bridgedoddle', 1, '513APTZ', 'matissewifi', 'DE', '', '79299', 'EUR', '3.0000', '1.00000000', 'EUR', '3.3500'),
(385, '1323026852721832', '2015-02-20', '10:50:26', '', 'Google fee', '', '20020 - Farbbehandlung 1', 'de.dicendum.bridgedoddle', 1, '20020', 'MT11i', 'DE', '', '31737', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.7700'),
(386, '1323026852721832', '2015-02-20', '10:50:26', '', 'Charge', '', '20020 - Farbbehandlung 1', 'de.dicendum.bridgedoddle', 1, '20020', 'MT11i', 'DE', '', '31737', 'EUR', '9.0000', '1.00000000', 'EUR', '9.2400'),
(387, '1345899970942578..1', '2015-02-22', '10:46:59', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(388, '1345899970942578..1', '2015-02-22', '10:46:59', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(389, '1373484474166965', '2015-02-24', '03:54:09', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.88472003', 'EUR', '-4.7600'),
(390, '1373484474166965', '2015-02-24', '03:54:09', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.88472003', 'EUR', '15.8700'),
(391, '1376067423854550', '2015-02-25', '06:59:02', '', 'Google fee', '', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', 'de.dicendum.bridgedoddle', 1, '508', 'matissewifi', 'DE', '', '79280', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(392, '1376067423854550', '2015-02-25', '06:59:02', '', 'Charge', '', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid', 'de.dicendum.bridgedoddle', 1, '508', 'matissewifi', 'DE', '', '79280', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(393, '1364542832359700..0', '2015-02-28', '04:40:26', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'matissewifi', 'DE', '', '29664', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(394, '1364542832359700..0', '2015-02-28', '04:40:26', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'matissewifi', 'DE', '', '29664', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(395, '1345899970942578..2', '2015-03-22', '11:47:44', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(396, '1345899970942578..2', '2015-03-22', '11:47:44', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(397, '1368526328318321', '2015-03-23', '01:47:54', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(398, '1368526328318321', '2015-03-23', '01:47:54', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(399, '1373484474166965..0', '2015-03-24', '11:06:36', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.91701001', 'EUR', '-4.9300'),
(400, '1373484474166965..0', '2015-03-24', '11:06:36', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.91701001', 'EUR', '16.4500'),
(401, '1345899970942578..3', '2015-04-22', '11:47:34', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(402, '1345899970942578..3', '2015-04-22', '11:47:34', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(403, '1379661648588989', '2015-04-23', '01:29:50', '', 'Google fee', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'grouper', 'DE', '', '13595', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.7700'),
(404, '1379661648588989', '2015-04-23', '01:29:50', '', 'Charge', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'grouper', 'DE', '', '13595', 'EUR', '9.0000', '1.00000000', 'EUR', '9.2400'),
(405, '1368526328318321..0', '2015-04-23', '08:01:13', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(406, '1368526328318321..0', '2015-04-23', '08:01:13', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(407, '1373484474166965..1', '2015-04-24', '11:05:36', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.91953999', 'EUR', '-4.9500'),
(408, '1373484474166965..1', '2015-04-24', '11:05:36', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.91953999', 'EUR', '16.5000'),
(409, '1394666039539783', '2015-05-19', '05:24:24', '', 'Google fee', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'jfvelte', 'DE', '', '14052', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.5200'),
(410, '1394666039539783', '2015-05-19', '05:24:24', '', 'Charge', '', '10001 RKCB Ass-Frage Deutsch', 'de.dicendum.bridgedoddle', 1, '10001', 'jfvelte', 'DE', '', '14052', 'EUR', '8.0000', '1.00000000', 'EUR', '8.3900'),
(411, '1345899970942578..4', '2015-05-22', '11:47:42', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(412, '1345899970942578..4', '2015-05-22', '11:47:42', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(413, '1368526328318321..1', '2015-05-23', '08:01:40', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(414, '1368526328318321..1', '2015-05-23', '08:01:40', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'serranolte', 'DE', '', '14109', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(415, '1373484474166965..2', '2015-05-24', '11:07:02', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.90842998', 'EUR', '-4.8900'),
(416, '1373484474166965..2', '2015-05-24', '11:07:02', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.90842998', 'EUR', '16.3000'),
(417, '1352925232090929', '2015-05-29', '06:31:42', '', 'Google fee', '', '20101 - Spielstiche zählen', 'de.dicendum.bridgedoddle', 1, '20101', 'D5503', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(418, '1352925232090929', '2015-05-29', '06:31:42', '', 'Charge', '', '20101 - Spielstiche zählen', 'de.dicendum.bridgedoddle', 1, '20101', 'D5503', 'DE', '', '21244', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(419, '1338447304464417', '2015-05-29', '06:32:12', '', 'Google fee', '', '10082 - Ogust - Weiterreizung nach weak two in ♡ o', 'de.dicendum.bridgedoddle', 1, '10082', 'D5503', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(420, '1338447304464417', '2015-05-29', '06:32:12', '', 'Charge', '', '10082 - Ogust - Weiterreizung nach weak two in ♡ o', 'de.dicendum.bridgedoddle', 1, '10082', 'D5503', 'DE', '', '21244', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(421, '1363354400006787', '2015-05-29', '06:41:47', '', 'Google fee', '', '512APTZ - Gegenreizung inklusive Informationskontr', 'de.dicendum.bridgedoddle', 1, '512APTZ', 'D5503', 'DE', '', '21244', 'EUR', '-1.0000', '1.00000000', 'EUR', '-1.0100'),
(422, '1363354400006787', '2015-05-29', '06:41:47', '', 'Charge', '', '512APTZ - Gegenreizung inklusive Informationskontr', 'de.dicendum.bridgedoddle', 1, '512APTZ', 'D5503', 'DE', '', '21244', 'EUR', '3.0000', '1.00000000', 'EUR', '3.3500'),
(423, '1382570620882560', '2015-05-29', '06:45:55', '', 'Google fee', '', '20052 - Alleinspiel – Assumptions 1 - W.Gromöller', 'de.dicendum.bridgedoddle', 1, '20052', 'D5503', 'DE', '', '21244', 'EUR', '-5.0000', '1.00000000', 'EUR', '-4.9900'),
(424, '1382570620882560', '2015-05-29', '06:45:55', '', 'Charge', '', '20052 - Alleinspiel – Assumptions 1 - W.Gromöller', 'de.dicendum.bridgedoddle', 1, '20052', 'D5503', 'DE', '', '21244', 'EUR', '17.0000', '1.00000000', 'EUR', '16.6200'),
(425, '1313752908557497', '2015-05-29', '07:54:02', '', 'Google fee', '', '542 - Gegenreizung auf Weak Twos', 'de.dicendum.bridgedoddle', 1, '542', 'D5503', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.5200'),
(426, '1313752908557497', '2015-05-29', '07:54:02', '', 'Charge', '', '542 - Gegenreizung auf Weak Twos', 'de.dicendum.bridgedoddle', 1, '542', 'D5503', 'DE', '', '21244', 'EUR', '8.0000', '1.00000000', 'EUR', '8.3900'),
(427, '1380370911224884', '2015-06-07', '10:29:43', '', 'Google fee', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'matissewifi', 'DE', '', '29664', 'EUR', '-20.0000', '1.00000000', 'EUR', '-19.9200'),
(428, '1380370911224884', '2015-06-07', '10:29:43', '', 'Charge', '', 'Jahresabo', 'de.dicendum.bridgedoddle', 1, 'ABO2', 'matissewifi', 'DE', '', '29664', 'EUR', '66.0000', '1.00000000', 'EUR', '66.3900'),
(429, '1397600536884917', '2015-06-17', '12:11:16', '', 'Google fee', '', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'GT-I8160', 'GB', 'MIDDLESEX', 'HA89UE', 'GBP', '0.0000', '1.39670002', 'EUR', '-0.2900'),
(430, '1397600536884917', '2015-06-17', '12:11:16', '', 'Charge', '', '1400 - ACOL (incl. weak twos) - Start set', 'de.dicendum.bridgedoddle', 1, '1400', 'GT-I8160', 'GB', 'MIDDLESEX', 'HA89UE', 'GBP', '1.0000', '1.39670002', 'EUR', '0.9800'),
(431, '1370436989163592', '2015-06-18', '07:39:16', '', 'Google fee', '', 'Permanent Flatrate', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'GT-I8160', 'GB', 'MIDDLESEX', 'HA89UE', 'GBP', '0.0000', '1.39590001', 'EUR', '-0.3500'),
(432, '1370436989163592', '2015-06-18', '07:39:16', '', 'Charge', '', 'Permanent Flatrate', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'GT-I8160', 'GB', 'MIDDLESEX', 'HA89UE', 'GBP', '1.0000', '1.39590001', 'EUR', '1.1600'),
(433, '1341967410741686', '2015-06-20', '03:38:39', '', 'Google fee', '', 'G2 - Abrechnung - Berechnung der Anschrift', 'de.dicendum.bridgedoddle', 1, 'G2', 'D5503', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(434, '1341967410741686', '2015-06-20', '03:38:39', '', 'Charge', '', 'G2 - Abrechnung - Berechnung der Anschrift', 'de.dicendum.bridgedoddle', 1, 'G2', 'D5503', 'DE', '', '21244', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(435, '1345899970942578..5', '2015-06-22', '11:46:41', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(436, '1345899970942578..5', '2015-06-22', '11:46:41', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(437, '1361471752935954', '2015-06-23', '08:04:51', '', 'Google fee', '', '286 - Eröffnungen in dritter Hand', 'de.dicendum.bridgedoddle', 1, '286', 'D5503', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.3000'),
(438, '1361471752935954', '2015-06-23', '08:04:51', '', 'Charge', '', '286 - Eröffnungen in dritter Hand', 'de.dicendum.bridgedoddle', 1, '286', 'D5503', 'DE', '', '21244', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9900'),
(439, '1373484474166965..3', '2015-06-24', '11:05:58', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.89468998', 'EUR', '-4.8100'),
(440, '1373484474166965..3', '2015-06-24', '11:05:58', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.89468998', 'EUR', '16.0500'),
(441, '1385917252220859', '2015-07-06', '12:04:43', '', 'Google fee', '', '10002 - RKCB (Roman KeyCard Blackwood) 1430', 'de.dicendum.bridgedoddle', 1, '10002', 'chagallwifi', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.7700'),
(442, '1385917252220859', '2015-07-06', '12:04:43', '', 'Charge', '', '10002 - RKCB (Roman KeyCard Blackwood) 1430', 'de.dicendum.bridgedoddle', 1, '10002', 'chagallwifi', 'DE', '', '25899', 'EUR', '9.0000', '1.00000000', 'EUR', '9.2400'),
(443, '1338866123774698', '2015-07-07', '12:43:01', '', 'Google fee', '', '542 - Gegenreizung auf Weak Twos', 'de.dicendum.bridgedoddle', 1, '542', 'chagallwifi', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-2.5200'),
(444, '1338866123774698', '2015-07-07', '12:43:01', '', 'Charge', '', '542 - Gegenreizung auf Weak Twos', 'de.dicendum.bridgedoddle', 1, '542', 'chagallwifi', 'DE', '', '25899', 'EUR', '8.0000', '1.00000000', 'EUR', '8.3900'),
(445, '1392961955588331', '2015-07-18', '07:34:43', '', 'Google fee', '', '20020 - Farbbehandlung 1', 'de.dicendum.bridgedoddle', 1, '20020', 'm0', 'CH', '', '4054', 'CHF', '-3.0000', '0.96008998', 'EUR', '-3.3300'),
(446, '1392961955588331', '2015-07-18', '07:34:43', '', 'Charge', '', '20020 - Farbbehandlung 1', 'de.dicendum.bridgedoddle', 1, '20020', 'm0', 'CH', '', '4054', 'CHF', '12.0000', '0.96008998', 'EUR', '11.1000');
INSERT INTO `playapps` (`id`, `description`, `date`, `time`, `tax`, `transaction`, `refund`, `title`, `productId`, `type`, `skuId`, `hardware`, `country`, `state`, `postal`, `bCurrency`, `bAmount`, `conversion`, `mCurrency`, `mAmount`) VALUES
(447, '1353340745701876', '2015-07-18', '07:38:49', '', 'Google fee', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'm0', 'CH', '', '4054', 'CHF', '-3.0000', '0.96008998', 'EUR', '-3.3400'),
(448, '1353340745701876', '2015-07-18', '07:38:49', '', 'Charge', '', 'M1 - Der Anfang (Minibridge I)', 'de.dicendum.bridgedoddle', 1, 'M1', 'm0', 'CH', '', '4054', 'CHF', '12.0000', '0.96008998', 'EUR', '11.1400'),
(449, '1345899970942578..6', '2015-07-22', '11:46:37', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(450, '1345899970942578..6', '2015-07-22', '11:46:37', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(451, '1373484474166965..4', '2015-07-24', '11:08:04', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.91108000', 'EUR', '-4.9000'),
(452, '1373484474166965..4', '2015-07-24', '11:08:04', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.91108000', 'EUR', '16.3400'),
(453, '1381-0804-9300-32006', '2015-08-07', '05:27:32', '', 'Google fee', '', '430 Forum D PLUS - Weiterreizung nach NT -M. Gromo', 'de.dicendum.bridgedoddle', 1, '430', 'ja3g', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(454, '1381-0804-9300-32006', '2015-08-07', '05:27:32', '', 'Charge', '', '430 Forum D PLUS - Weiterreizung nach NT -M. Gromo', 'de.dicendum.bridgedoddle', 1, '430', 'ja3g', 'DE', '', '21244', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(455, '1384-3762-9668-00354', '2015-08-10', '06:35:39', '', 'Google fee', '', '507 - Forum D 2012_NT_Eröffnungen und Antworten', 'de.dicendum.bridgedoddle', 1, '507', 'ja3g', 'DE', '', '21244', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(456, '1384-3762-9668-00354', '2015-08-10', '06:35:39', '', 'Charge', '', '507 - Forum D 2012_NT_Eröffnungen und Antworten', 'de.dicendum.bridgedoddle', 1, '507', 'ja3g', 'DE', '', '21244', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(457, '1345899970942578..7', '2015-08-22', '11:49:05', '', 'Google fee', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.2800'),
(458, '1345899970942578..7', '2015-08-22', '11:49:05', '', 'Charge', '', 'Monatsabo', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'tolino7', 'DE', '', '82008', 'EUR', '11.0000', '1.00000000', 'EUR', '10.9200'),
(459, '1373484474166965..5', '2015-08-24', '11:07:22', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.0000', '0.86370999', 'EUR', '-4.6500'),
(460, '1373484474166965..5', '2015-08-24', '11:07:22', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '18.0000', '0.86370999', 'EUR', '15.4900'),
(461, '1322-8653-5997-78214', '2015-08-25', '01:17:59', '', 'Google fee', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'chagallwifi', 'DE', '', '25899', 'EUR', '-3.0000', '1.00000000', 'EUR', '-3.0000'),
(462, '1322-8653-5997-78214', '2015-08-25', '01:17:59', '', 'Charge', '', '514 Antwort nach Gegenreizung', 'de.dicendum.bridgedoddle', 1, '514', 'chagallwifi', 'DE', '', '25899', 'EUR', '10.0000', '1.00000000', 'EUR', '9.9900'),
(463, '1350-1139-7476-22180', '2015-08-27', '08:19:45', '', 'Google fee', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'hwp7', 'DE', '', '21244', 'EUR', '0.0000', '1.00000000', 'EUR', '-0.2500'),
(464, '1350-1139-7476-22180', '2015-08-27', '08:19:45', '', 'Charge', '', 'All inclusive Flat', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'hwp7', 'DE', '', '21244', 'EUR', '1.0000', '1.00000000', 'EUR', '0.8400'),
(465, '1303-2081-1545-64446', '2015-09-04', '06:47:16', '', 'Google fee', '', '441 - Forum D Plus 2015 - Inverted Minors', 'de.dicendum.bridgedoddle', 1, '441', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-2.7700', '1.00000000', 'EUR', '-2.7700'),
(466, '1303-2081-1545-64446', '2015-09-04', '06:47:16', '', 'Charge', '', '441 - Forum D Plus 2015 - Inverted Minors', 'de.dicendum.bridgedoddle', 1, '441', 'p4notewifiww', 'DE', '', '41844', 'EUR', '9.2400', '1.00000000', 'EUR', '9.2400'),
(467, '1368-6300-2012-98497', '2015-09-14', '11:22:50', '', 'Google fee', '', 'Permanent Flatrate', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'golden', 'DE', '', '14473', 'EUR', '-0.2500', '1.00000000', 'EUR', '-0.2500'),
(468, '1368-6300-2012-98497', '2015-09-14', '11:22:50', '', 'Charge', '', 'Permanent Flatrate', 'de.dicendum.bridgedoddle', 1, 'ALLINC', 'golden', 'DE', '', '14473', 'EUR', '0.8300', '1.00000000', 'EUR', '0.8300'),
(469, '1307-2981-9107-93245', '2015-09-16', '04:52:38', '', 'Google fee', '', '451 - Forum D Plus 2015 - SpiralScan', 'de.dicendum.bridgedoddle', 1, '451', 'p4notewifiww', 'DE', '', '41844', 'EUR', '-2.7700', '1.00000000', 'EUR', '-2.7700'),
(470, '1307-2981-9107-93245', '2015-09-16', '04:52:38', '', 'Charge', '', '451 - Forum D Plus 2015 - SpiralScan', 'de.dicendum.bridgedoddle', 1, '451', 'p4notewifiww', 'DE', '', '41844', 'EUR', '9.2400', '1.00000000', 'EUR', '9.2400'),
(471, '1373484474166965..6', '2015-09-24', '11:08:22', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.3800', '0.88865000', 'EUR', '-4.7800'),
(472, '1373484474166965..6', '2015-09-24', '11:08:22', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '17.9400', '0.88865000', 'EUR', '15.9400'),
(473, '1373484474166965..7', '2015-10-24', '11:07:26', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.3800', '0.90810000', 'EUR', '-4.8900'),
(474, '1373484474166965..7', '2015-10-24', '11:07:26', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '17.9400', '0.90810000', 'EUR', '16.2900'),
(475, '1364-8576-0460-64830', '2015-11-07', '03:57:24', '', 'Google fee', '', '419 - Forum D Plus 2015 - Neue Unterfarbe forcing', 'de.dicendum.bridgedoddle', 1, '419', 'chagallwifi', 'DE', '', '25899', 'EUR', '-2.7700', '1.00000000', 'EUR', '-2.7700'),
(476, '1364-8576-0460-64830', '2015-11-07', '03:57:24', '', 'Charge', '', '419 - Forum D Plus 2015 - Neue Unterfarbe forcing', 'de.dicendum.bridgedoddle', 1, '419', 'chagallwifi', 'DE', '', '25899', 'EUR', '9.2400', '1.00000000', 'EUR', '9.2400'),
(477, '1347-6776-4365-03006', '2015-11-09', '06:45:35', '', 'Google fee', '', '10002 - RKCB (Roman KeyCard Blackwood) 1430', 'de.dicendum.bridgedoddle', 1, '10002', 'ks01lte', 'DE', '', '79299', 'EUR', '-2.7700', '1.00000000', 'EUR', '-2.7700'),
(478, '1347-6776-4365-03006', '2015-11-09', '06:45:35', '', 'Charge', '', '10002 - RKCB (Roman KeyCard Blackwood) 1430', 'de.dicendum.bridgedoddle', 1, '10002', 'ks01lte', 'DE', '', '79299', 'EUR', '9.2400', '1.00000000', 'EUR', '9.2400'),
(479, '1388-0042-6480-63752', '2015-11-09', '10:02:50', '', 'Google fee', '', '10002 - RKCB (Roman KeyCard Blackwood) 1430', 'de.dicendum.bridgedoddle', 1, '10002', 'matissewifi', 'DE', '', '79280', 'EUR', '-2.7700', '1.00000000', 'EUR', '-2.7700'),
(480, '1388-0042-6480-63752', '2015-11-09', '10:02:50', '', 'Charge', '', '10002 - RKCB (Roman KeyCard Blackwood) 1430', 'de.dicendum.bridgedoddle', 1, '10002', 'matissewifi', 'DE', '', '79280', 'EUR', '9.2400', '1.00000000', 'EUR', '9.2400'),
(481, '1373484474166965..8', '2015-11-24', '10:06:56', '', 'Google fee', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '-5.3800', '0.93879000', 'EUR', '-5.0500'),
(482, '1373484474166965..8', '2015-11-24', '10:06:56', '', 'Charge', '', '1 month subscription', 'de.dicendum.bridgedoddle', 1, 'ABO1', 'jflteatt', 'US', 'MN', '55343', 'USD', '17.9400', '0.93879000', 'EUR', '16.8400'),
(483, 'GPA.1391-1805-2351-19553..13,\"Apr 8, 2017\",6:37:34', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(484, 'GPA.1391-1805-2351-19553..13,\"Apr 8, 2017\",6:37:34', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(485, 'GPA.1357-6946-6897-98208..15,\"Apr 9, 2017\",3:48:43', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(486, 'GPA.1357-6946-6897-98208..15,\"Apr 9, 2017\",3:48:43', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(487, 'GPA.3339-6497-4766-55884,\"Apr 10, 2017\",10:51:45 P', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(488, 'GPA.3339-6497-4766-55884,\"Apr 10, 2017\",10:51:45 P', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(489, 'GPA.3364-7735-3504-00959,\"Apr 21, 2017\",5:50:23 AM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(490, 'GPA.3364-7735-3504-00959,\"Apr 21, 2017\",5:50:23 AM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(491, 'GPA.3302-6061-2451-55292,\"Apr 22, 2017\",2:17:44 PM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(492, 'GPA.3302-6061-2451-55292,\"Apr 22, 2017\",2:17:44 PM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(493, 'GPA.3345-5268-8480-93778,\"Apr 24, 2017\",2:13:22 PM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(494, 'GPA.3345-5268-8480-93778,\"Apr 24, 2017\",2:13:22 PM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(495, 'GPA.3336-9360-3003-57875,\"Apr 28, 2017\",9:19:48 AM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000'),
(496, 'GPA.3336-9360-3003-57875,\"Apr 28, 2017\",9:19:48 AM', '1970-01-01', '00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '0.0000', '0.00000000', '', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `preis`
--

CREATE TABLE `preis` (
  `preisId` int(11) NOT NULL,
  `preisName` text NOT NULL,
  `item1` float NOT NULL,
  `item2` float NOT NULL,
  `item3` float NOT NULL,
  `item4` float NOT NULL,
  `item5` float NOT NULL,
  `item6` float NOT NULL,
  `item7` float NOT NULL,
  `item8` float NOT NULL,
  `item9` float NOT NULL,
  `item10` float NOT NULL,
  `item11` float NOT NULL,
  `item12` float NOT NULL,
  `item13` float NOT NULL,
  `item14` float NOT NULL,
  `item15` float NOT NULL,
  `item16` float NOT NULL,
  `item17` float NOT NULL,
  `item18` float NOT NULL,
  `item19` float NOT NULL,
  `item20` float NOT NULL,
  `item21` float NOT NULL,
  `item22` float NOT NULL,
  `item23` float NOT NULL,
  `item24` float NOT NULL,
  `item25` float NOT NULL,
  `item26` float NOT NULL,
  `item27` float NOT NULL,
  `item28` float NOT NULL,
  `item29` float NOT NULL,
  `item30` float NOT NULL,
  `item31` float NOT NULL,
  `item32` float NOT NULL,
  `item33` float NOT NULL,
  `item_34` float NOT NULL,
  `item_35` float NOT NULL,
  `item_36` float NOT NULL,
  `item_37` float NOT NULL,
  `item_38` float NOT NULL,
  `item_39` float NOT NULL,
  `item_40` float NOT NULL,
  `item_41` float NOT NULL,
  `item_42` float NOT NULL,
  `item_43` float NOT NULL,
  `item_44` float NOT NULL,
  `item_45` float NOT NULL,
  `item_46` float NOT NULL,
  `item_47` float NOT NULL,
  `item_48` float NOT NULL,
  `item_49` float NOT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `preis`
--

INSERT INTO `preis` (`preisId`, `preisName`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`, `item9`, `item10`, `item11`, `item12`, `item13`, `item14`, `item15`, `item16`, `item17`, `item18`, `item19`, `item20`, `item21`, `item22`, `item23`, `item24`, `item25`, `item26`, `item27`, `item28`, `item29`, `item30`, `item31`, `item32`, `item33`, `item_34`, `item_35`, `item_36`, `item_37`, `item_38`, `item_39`, `item_40`, `item_41`, `item_42`, `item_43`, `item_44`, `item_45`, `item_46`, `item_47`, `item_48`, `item_49`, `stat`) VALUES
(1, 'Normale', 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 17, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 1),
(2, 'Verein', 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 17, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 1),
(3, 'IP', 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 17, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 1),
(4, 'MS', 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 17, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 1),
(5, 'Frei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(49, 'test', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 1),
(50, 'Zwölf', 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 17, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 1),
(51, 'Greg3', 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 17, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0),
(52, 'Sponsor', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 17, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `ID` int(11) NOT NULL,
  `VerkaeuferBestellungNr` varchar(50) DEFAULT NULL,
  `Bestelldatum` varchar(50) DEFAULT NULL,
  `WaehrungDerTransaktion` varchar(50) DEFAULT NULL,
  `Bestellbetrag` decimal(10,4) DEFAULT NULL,
  `InRechnungGestellterBetrag` decimal(10,4) DEFAULT NULL,
  `FinanziellerBestellstatus` varchar(50) DEFAULT NULL,
  `StatusDerBestellabwicklung` varchar(50) DEFAULT NULL,
  `LinkZurBestellung` tinytext,
  `SteuernInsgesamt` decimal(10,4) DEFAULT NULL,
  `VersandkostenInsgesamt` decimal(10,4) DEFAULT NULL,
  `ZurueckerstatteterBetrag` decimal(10,4) DEFAULT NULL,
  `ZurueckgebuchterBetrag` decimal(10,4) DEFAULT NULL,
  `SchutzVorRueckbuchungen` varchar(50) DEFAULT NULL,
  `Versandmethode` tinytext,
  `EMailMarketing` tinytext,
  `EMailAdresse` tinytext,
  `Name` tinytext,
  `AdresseZeile1` tinytext,
  `AdresseZeile2` tinytext,
  `Stadt` tinytext,
  `Bundesstaat` tinytext,
  `Postleitzahl` varchar(50) DEFAULT NULL,
  `Land` varchar(50) DEFAULT NULL,
  `Telefonnummer` varchar(50) DEFAULT NULL,
  `TrackingDaten` tinytext,
  `Artikelnummer` tinytext,
  `Bezeichnung` tinytext,
  `Beschreibung` tinytext,
  `Preis` decimal(10,4) DEFAULT NULL,
  `Menge` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `skuId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`ID`, `VerkaeuferBestellungNr`, `Bestelldatum`, `WaehrungDerTransaktion`, `Bestellbetrag`, `InRechnungGestellterBetrag`, `FinanziellerBestellstatus`, `StatusDerBestellabwicklung`, `LinkZurBestellung`, `SteuernInsgesamt`, `VersandkostenInsgesamt`, `ZurueckerstatteterBetrag`, `ZurueckgebuchterBetrag`, `SchutzVorRueckbuchungen`, `Versandmethode`, `EMailMarketing`, `EMailAdresse`, `Name`, `AdresseZeile1`, `AdresseZeile2`, `Stadt`, `Bundesstaat`, `Postleitzahl`, `Land`, `Telefonnummer`, `TrackingDaten`, `Artikelnummer`, `Bezeichnung`, `Beschreibung`, `Preis`, `Menge`, `date`, `skuId`) VALUES
(1, '12999763169054705758.1358794434062050', '07.05.13 01:25', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1358794434062050', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-05-07', '501'),
(2, '12999763169054705758.1333775187235273', '13.05.13 04:21', 'EUR', '0.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333775187235273', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:1400', '1400 - ACOL (incl. weak twos) - Start set (Bridge Doddle)', '1400 - ACOL (incl. weak twos) - Start set', '0.9900', 1, '2013-05-13', '1400'),
(3, '12999763169054705758.1313747192887840', '13.05.13 13:17', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1313747192887840', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:2209', '2209 ACOL (Benji) - Erstes Rebid - Diagramm - Deutsch (Bridge Doddle)', '2209 ACOL (Benji) - Erstes Rebid - Diagramm - Deutsch\n', '9.9900', 1, '2013-05-13', '2209'),
(4, '12999763169054705758.1342937695802913', '15.05.13 03:34', 'EUR', '0.0000', '0.9900', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1342937695802913', '0.0000', '0.0000', '0.9900', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:1400', '1400 - ACOL (incl. weak twos) - Start set (Bridge Doddle)', '1400 - ACOL (incl. weak twos) - Start set', '0.9900', 1, '2013-05-15', '1400'),
(5, '12999763169054705758.1398846232169709', '15.05.13 03:42', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398846232169709', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:1405', '1405 - ACOL (incl. weak twos) - First Respond - Bidding (Bridge Doddle)', '1405 - ACOL (incl. weak twos) - First Respond - Bidding\n', '9.9900', 1, '2013-05-15', '1405'),
(6, '12999763169054705758.1376773419796491', '15.05.13 04:28', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1376773419796491', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:201', '201 - SAYC Deutsch - Eröffnungen (Bridge Doddle)', '201 - SAYC Deutsch - Eröffnungen\n', '9.9900', 1, '2013-05-15', '201'),
(7, '12999763169054705758.1312404746982010', '17.05.13 09:19', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1312404746982010', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-17', ''),
(8, '12999763169054705758.1317223399455561', '17.05.13 09:23', 'EUR', '0.5300', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1317223399455561', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:2008', 'Test: 2008 ACOL (schwache 2er) - Erstes Rebid - Hand -Deutsch (Bridge Doddle)', '2008 ACOL (schwache 2er) - Erstes Rebid - Hand - Deutsch\n', '0.5300', 1, '2013-05-17', '2008'),
(9, '12999763169054705758.1356729684985038', '17.05.13 14:58', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1356729684985038', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10625', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-17', ''),
(10, '12999763169054705758.1366999486074903', '18.05.13 02:55', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1366999486074903', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(11, '12999763169054705758.1384321875334824', '18.05.13 02:56', 'EUR', '0.5300', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1384321875334824', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:2008', 'Test: 2008 ACOL (schwache 2er) - Erstes Rebid - Hand -Deutsch (Bridge Doddle)', '2008 ACOL (schwache 2er) - Erstes Rebid - Hand - Deutsch\n', '0.5300', 1, '2013-05-18', '2008'),
(12, '12999763169054705758.1352262420576182', '18.05.13 02:59', 'EUR', '0.5300', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1352262420576182', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:2009', 'Test: 2009 ACOL (schwache 2er) - Erstes Rebid - Diagramm - DE (Bridge Doddle)', '2009 ACOL (schwache 2er) - Erstes Rebid - Diagramm - Deutsch\n', '0.5300', 1, '2013-05-18', '2009'),
(13, '12999763169054705758.1398805215263436', '18.05.13 03:04', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398805215263436', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '66115', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(14, '12999763169054705758.1309012332184679', '18.05.13 11:54', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1309012332184679', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(15, '12999763169054705758.1365238604866218', '18.05.13 11:55', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1365238604866218', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(16, '12999763169054705758.1333496912805094', '18.05.13 11:55', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333496912805094', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(17, '12999763169054705758.1323335860599563', '18.05.13 11:56', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1323335860599563', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(18, '12999763169054705758.1301764743205261', '18.05.13 11:57', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1301764743205261', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(19, '12999763169054705758.1363664103104131', '18.05.13 12:17', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363664103104131', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-18', ''),
(20, '12999763169054705758.1389681999528388', '18.05.13 14:20', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1389681999528388', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10625', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512', '512 Gegenreizung - Hand (Bridge Doddle)', '512 Gegenreizung - Hand\n', '9.9900', 1, '2013-05-18', '512'),
(21, '12999763169054705758.1354951526153045', '19.05.13 11:36', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1354951526153045', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-19', ''),
(22, '12999763169054705758.1300631818393131', '20.05.13 04:04', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1300631818393131', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30177', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-20', ''),
(23, '12999763169054705758.1374469827223463', '20.05.13 06:07', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1374469827223463', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82131', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-20', ''),
(24, '12999763169054705758.1326351892526271', '21.05.13 08:44', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1326351892526271', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-21', ''),
(25, '12999763169054705758.1350222848228690', '21.05.13 08:45', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1350222848228690', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', 'Test: 0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-05-21', '501'),
(26, '12999763169054705758.1333980693797274', '22.05.13 00:48', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333980693797274', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-22', ''),
(27, '12999763169054705758.1363218795171114', '22.05.13 00:51', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363218795171114', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', 'Test: 10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2013-05-22', '10001'),
(28, '12999763169054705758.1311355479678619', '22.05.13 00:53', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1311355479678619', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', 'Test: 0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-05-22', '501'),
(29, '12999763169054705758.1334936526455650', '22.05.13 02:41', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1334936526455650', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-22', ''),
(30, '12999763169054705758.1399661635399578', '22.05.13 02:42', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1399661635399578', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', 'Test: 10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-05-22', '10050'),
(31, '12999763169054705758.1315730034596026', '22.05.13 03:30', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1315730034596026', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22559', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-22', ''),
(32, '12999763169054705758.1354275645817915', '22.05.13 03:51', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1354275645817915', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:2', 'Bridge Doddle', '', '4.9900', 1, '2013-05-22', ''),
(33, '12999763169054705758.1325594593828720', '22.05.13 03:53', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1325594593828720', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:2008', 'Test: 2008 ACOL (schwache 2er) - Erstes Rebid - Hand -Deutsch (Bridge Doddle)', '2008 ACOL (schwache 2er) - Erstes Rebid - Hand - Deutsch\n', '9.9900', 1, '2013-05-22', '2008'),
(34, '12999763169054705758.1397341710464608', '22.05.13 03:55', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1397341710464608', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:2104', 'Test: 2104 Acol (2erEÖ stark) - Antworten auf Farberöffnungen (Bridge Doddle)', '2104 Acol (2er EÖ stark) - Antworten auf Farberöffnungen - Deutsch\n', '9.9900', 1, '2013-05-22', '2104'),
(35, '12999763169054705758.1343684113482681', '22.05.13 03:58', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1343684113482681', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', 'Test: 10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2013-05-22', '10001'),
(36, '12999763169054705758.1357996315141519', '22.05.13 11:09', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1357996315141519', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512', 'Test: 512 Gegenreizung - Hand (Bridge Doddle)', '512 Gegenreizung - Hand\n', '9.9900', 1, '2013-05-22', '512'),
(37, '12999763169054705758.1327964695921333', '23.05.13 04:15', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1327964695921333', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '44388', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:3', 'Bridge Doddle', '', '4.9900', 1, '2013-05-23', ''),
(38, '12999763169054705758.1335075922185004', '23.05.13 06:48', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1335075922185004', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14052', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:3', 'Bridge Doddle', '', '4.9900', 1, '2013-05-23', ''),
(39, '12999763169054705758.1388340584659571', '26.05.13 07:01', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1388340584659571', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82152', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:3', 'Bridge Doddle', '', '4.9900', 1, '2013-05-26', ''),
(40, '12999763169054705758.1398553040733663', '26.05.13 08:15', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398553040733663', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '97688', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:3', 'Bridge Doddle', '', '4.9900', 1, '2013-05-26', ''),
(41, '12999763169054705758.1322759041800980', '28.05.13 02:22', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1322759041800980', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:3', 'Bridge Doddle', '', '4.9900', 1, '2013-05-28', ''),
(42, '12999763169054705758.1314390776759936', '28.05.13 09:39', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1314390776759936', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '80999', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:3', 'Bridge Doddle', '', '4.9900', 1, '2013-05-28', ''),
(43, '12999763169054705758.1370456715442690', '29.05.13 06:58', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1370456715442690', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-05-29', '10049'),
(44, '12999763169054705758.1378755477830454', '29.05.13 06:59', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1378755477830454', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-05-29', '10050'),
(45, '12999763169054705758.1398842800465939', '29.05.13 07:01', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398842800465939', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r30', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  BASIS (Bridge Doddle)', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS\n', '9.9900', 1, '2013-05-29', 'R30'),
(46, '12999763169054705758.1335363147170355', '29.05.13 07:02', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1335363147170355', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510', '510 Forum D 2012 - Die 2. Antwort des Responders (Bridge Doddle)', '510 Forum D 2012 - Die 2. Antwort des Responders\n', '9.9900', 1, '2013-05-29', '510'),
(47, '12999763169054705758.1364998529055817', '29.05.13 07:02', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1364998529055817', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', '10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2013-05-29', '10001'),
(48, '12999763169054705758.1384164996737615', '29.05.13 07:03', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1384164996737615', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:511', '511 Forum D 2012 - Die 2. Antwort des Responders - Diag (Bridge Doddle)', '511 Forum D 2012 - Die 2. Antwort des Responders - Diagramm\n', '9.9900', 1, '2013-05-29', '511'),
(49, '12999763169054705758.1355342882063907', '29.05.13 10:35', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1355342882063907', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r7', 'R7 - NT-Eröffnungen und Antwort Forum D Basis – (Bridge Doddle)', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –\n', '9.9900', 1, '2013-05-29', 'R7'),
(50, '12999763169054705758.1331747793552570', '29.05.13 10:36', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1331747793552570', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r8', 'R8 - Eröffnung-Antwort und erstes Rebid FD Basis (Bridge Doddle)', 'R8 - Eröffnung-Antwort und erstes Rebid\n', '9.9900', 1, '2013-05-29', 'R8'),
(51, '12999763169054705758.1304120840662667', '29.05.13 10:36', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1304120840662667', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r9', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BASIS (Bridge Doddle)', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM\n', '9.9900', 1, '2013-05-29', 'R9'),
(52, '12999763169054705758.1341604817995473', '29.05.13 10:37', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341604817995473', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r6', 'R6 - NT-Eröffnungen Forum D BASIS (Bridge Doddle)', 'R6 - NT-Eröffnungen Forum D BASIS\n', '9.9900', 1, '2013-05-29', 'R6'),
(53, '12999763169054705758.1313207826204699', '30.05.13 04:20', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1313207826204699', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30916', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:4', 'Bridge Doddle', '', '4.9900', 1, '2013-05-30', ''),
(54, '12999763169054705758.1302803599354753', '30.05.13 07:00', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1302803599354753', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '53332', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:4', 'Bridge Doddle', '', '4.9900', 1, '2013-05-30', ''),
(55, '12999763169054705758.1390723753447821', '04.06.13 04:16', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1390723753447821', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', 'Test: 10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-06-04', '10049'),
(56, '12999763169054705758.1326974478319310', '04.06.13 04:17', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1326974478319310', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510', 'Test: 510 Forum D 2012 - Die 2. Antwort des Responders (Bridge Doddle)', '510 Forum D 2012 - Die 2. Antwort des Responders\n', '9.9900', 1, '2013-06-04', '510'),
(57, '12999763169054705758.1355301195977518', '04.06.13 06:55', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1355301195977518', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '81675', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-04', ''),
(58, '12999763169054705758.1385479332602881', '04.06.13 07:56', 'EUR', '0.5900', '0.5900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1385479332602881', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r10', 'R10 - FD Basis – Zweites Gebot des Antwortenden (Bridge Doddle)', 'R10 - FD Basis – Zweites Gebot des Antwortenden', '0.5900', 1, '2013-06-04', 'R10'),
(59, '12999763169054705758.1377942986142748', '04.06.13 07:57', 'EUR', '0.5900', '0.5900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1377942986142748', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r11', 'R11  - FD Basis – Zweites Gebot des Antwortenden (Bridge Doddle)', 'R10 - FD Basis – Zweites Gebot des Antwortenden', '0.5900', 1, '2013-06-04', 'R10'),
(60, '12999763169054705758.1334719358927404', '04.06.13 09:46', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1334719358927404', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14052', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-06-04', '10050'),
(61, '12999763169054705758.1337193956620315', '05.06.13 07:02', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1337193956620315', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r4', 'R4 - Reizung – Eröffnung und Antwort - Hand (Bridge Doddle)', 'R4 - Reizung – Eröffnung und Antwort - Hand\n', '9.9900', 1, '2013-06-05', 'R4'),
(62, '12999763169054705758.1309699552248128', '05.06.13 07:03', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1309699552248128', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r5', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM (Bridge Doddle)', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM\n', '9.9900', 1, '2013-06-05', 'R5'),
(63, '12999763169054705758.1315183487294868', '05.06.13 21:23', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1315183487294868', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '81675', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:201', '201 - SAYC Deutsch - Eröffnungen (Bridge Doddle)', '201 - SAYC Deutsch - Eröffnungen\n', '9.9900', 1, '2013-06-05', '201'),
(64, '12999763169054705758.1365752141558132', '06.06.13 02:29', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1365752141558132', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22559', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-06', ''),
(65, '12999763169054705758.1349598569449147', '06.06.13 07:01', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1349598569449147', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '67655', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-06', ''),
(66, '12999763169054705758.1335106873586972', '07.06.13 00:10', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1335106873586972', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:201', 'Test: 201 - SAYC Deutsch - Eröffnungen (Bridge Doddle)', '201 - SAYC Deutsch - Eröffnungen\n', '9.9900', 1, '2013-06-07', '201'),
(67, '12999763169054705758.1303686341374523', '08.06.13 12:47', 'USD', '2.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1303686341374523', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '78239', 'US', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-08', ''),
(68, '12999763169054705758.1354125309270772', '08.06.13 13:20', 'USD', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1354125309270772', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '78239', 'US', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-08', ''),
(69, '12999763169054705758.1395795529055091', '10.06.13 14:55', 'EUR', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1395795529055091', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22300', 'FR', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-10', ''),
(70, '12999763169054705758.1310460294821672', '11.06.13 21:47', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1310460294821672', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '81675', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:530', '530 - Weiterreizung nach 1 NT-Eröffnung (Bridge Doddle)', '530 - Weiterreizung nach 1 NT-Eröffnung\n', '9.9900', 1, '2013-06-11', '530'),
(71, '12999763169054705758.1377994753303449', '12.06.13 02:54', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1377994753303449', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '45131', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-12', ''),
(72, '12999763169054705758.1353909978018461', '12.06.13 11:23', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1353909978018461', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25938', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-12', ''),
(73, '12999763169054705758.1340807267973808', '12.06.13 13:00', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1340807267973808', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30926', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-12', ''),
(74, '12999763169054705758.1355962870876489', '12.06.13 13:11', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1355962870876489', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30926', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', '10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2013-06-12', '10001'),
(75, '12999763169054705758.1372854908024375', '14.06.13 06:45', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1372854908024375', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '23701', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-14', ''),
(76, '12999763169054705758.1311173400491872', '14.06.13 12:39', 'DKK', '22.2900', '22.2900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1311173400491872', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '2800', 'DK', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '22.2900', 1, '2013-06-14', ''),
(77, '12999763169054705758.1302396699029668', '15.06.13 22:20', 'USD', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1302396699029668', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '98102', 'US', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-15', ''),
(78, '12999763169054705758.1364599761817765', '16.06.13 13:48', 'EUR', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1364599761817765', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '28010', 'ES', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-16', ''),
(79, '12999763169054705758.1309310880431307', '18.06.13 09:55', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1309310880431307', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14052', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-06-18', '10049'),
(80, '12999763169054705758.1317920131996629', '18.06.13 09:56', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1317920131996629', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14052', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r30', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  BASIS (Bridge Doddle)', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS\n', '9.9900', 1, '2013-06-18', 'R30'),
(81, '12999763169054705758.1348518153483779', '20.06.13 20:36', 'USD', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1348518153483779', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', 'CA', '92501', 'US', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-20', ''),
(82, '12999763169054705758.1319760029957814', '26.06.13 23:48', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1319760029957814', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '66121', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-06-26', ''),
(83, '12999763169054705758.1399679773020406', '27.06.13 16:32', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1399679773020406', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10625', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r8', 'R8 - Eröffnung-Antwort und erstes Rebid FD Basis (Bridge Doddle)', 'R8 - Eröffnung-Antwort und erstes Rebid\n', '9.9900', 1, '2013-06-27', 'R8'),
(84, '12999763169054705758.1300468025710109', '30.06.13 23:56', 'EUR', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1300468025710109', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '2775-237', 'PT', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-06-30', ''),
(85, '12999763169054705758.1397344544277359', '05.07.13 10:44', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1397344544277359', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-07-05', ''),
(86, '12999763169054705758.1322089437370130', '05.07.13 11:32', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1322089437370130', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r10', 'R10 - FD Basis – Zweites Gebot des Antwortenden (Bridge Doddle)', 'R10 - FD Basis – Zweites Gebot des Antwortenden', '9.9900', 1, '2013-07-05', 'R10'),
(87, '12999763169054705758.1317523663037067', '08.07.13 05:40', 'USD', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1317523663037067', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '06074', 'US', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-07-08', ''),
(88, '12999763169054705758.1368566737811146', '16.07.13 06:41', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368566737811146', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '12459', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-07-16', ''),
(89, '12999763169054705758.1337811829342667', '19.07.13 01:09', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1337811829342667', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '47800', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-07-19', ''),
(90, '12999763169054705758.1328428377541815', '19.07.13 06:44', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1328428377541815', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-07-19', ''),
(91, '12999763169054705758.1308650682200781', '19.07.13 06:58', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1308650682200781', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-07-19', '501');
INSERT INTO `purchaseorder` (`ID`, `VerkaeuferBestellungNr`, `Bestelldatum`, `WaehrungDerTransaktion`, `Bestellbetrag`, `InRechnungGestellterBetrag`, `FinanziellerBestellstatus`, `StatusDerBestellabwicklung`, `LinkZurBestellung`, `SteuernInsgesamt`, `VersandkostenInsgesamt`, `ZurueckerstatteterBetrag`, `ZurueckgebuchterBetrag`, `SchutzVorRueckbuchungen`, `Versandmethode`, `EMailMarketing`, `EMailAdresse`, `Name`, `AdresseZeile1`, `AdresseZeile2`, `Stadt`, `Bundesstaat`, `Postleitzahl`, `Land`, `Telefonnummer`, `TrackingDaten`, `Artikelnummer`, `Bezeichnung`, `Beschreibung`, `Preis`, `Menge`, `date`, `skuId`) VALUES
(92, '12999763169054705758.1344453237145293', '19.07.13 07:00', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1344453237145293', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2013-07-19', '504'),
(93, '12999763169054705758.1397980634551447', '19.07.13 07:00', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1397980634551447', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2013-07-19', '10046'),
(94, '12999763169054705758.1349850132994840', '23.07.13 08:02', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1349850132994840', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20001', '20001 - Ausspiele für Anfaenger (Bridge Doddle)', '20001 - Ausspiele für Anfaenger', '4.9900', 1, '2013-07-23', '20001'),
(95, '12999763169054705758.1326973525956294', '23.07.13 08:05', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1326973525956294', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512', '512 Gegenreizung - Hand (Bridge Doddle)', '512 Gegenreizung - Hand\n', '9.9900', 1, '2013-07-23', '512'),
(96, '12999763169054705758.1317783092312470', '25.07.13 14:22', 'EUR', '4.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1317783092312470', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20001', 'Test: 20001 - Ausspiele für Anfaenger (Bridge Doddle)', '20001 - Ausspiele für Anfaenger', '4.9900', 1, '2013-07-25', '20001'),
(97, '12999763169054705758.1316255904786414', '29.07.13 08:24', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1316255904786414', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '66121', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-07-29', ''),
(98, '12999763169054705758.1367169143377369', '03.08.13 21:59', 'USD', '2.9900', '2.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1367169143377369', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '94114', 'US', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '2.9900', 1, '2013-08-03', ''),
(99, '12999763169054705758.1346048278328958', '18.08.13 11:41', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1346048278328958', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '65549', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-08-18', ''),
(100, '12999763169054705758.1307402014330575', '14.09.13 06:42', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1307402014330575', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:531', '531 - FD 2012 – Zweites Gebot des NT-Eröffners (Bridge Doddle)', '531 - FD 2012 – Zweites Gebot des NT-Eröffners', '9.9900', 1, '2013-09-14', '531'),
(101, '12999763169054705758.1334060930858301', '14.09.13 11:11', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1334060930858301', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r30', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  BASIS (Bridge Doddle)', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS\n', '9.9900', 1, '2013-09-14', 'R30'),
(102, '12999763169054705758.1306893121062912', '15.09.13 12:34', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1306893121062912', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:509', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm (Bridge Doddle)', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', '9.9900', 1, '2013-09-15', '509'),
(103, '12999763169054705758.1309387241469081', '15.09.13 12:35', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1309387241469081', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-09-15', '10050'),
(104, '12999763169054705758.1378133080799029', '15.09.13 12:35', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1378133080799029', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-09-15', '10049'),
(105, '12999763169054705758.1337314093659432', '18.09.13 12:46', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1337314093659432', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '12103', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-09-18', ''),
(106, '12999763169054705758.1305067300702939', '20.09.13 13:04', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1305067300702939', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:508', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid Hand (Bridge Doddle)', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid HAND', '9.9900', 1, '2013-09-20', '508'),
(107, '12999763169054705758.1339261149444666', '21.09.13 06:13', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1339261149444666', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-09-21', ''),
(108, '12999763169054705758.1330234610398887', '21.09.13 06:24', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1330234610398887', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', '10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2013-09-21', '10001'),
(109, '12999763169054705758.1303434359471965', '21.09.13 06:25', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1303434359471965', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20001', '20001 - Ausspiele für Anfaenger (Bridge Doddle)', '20001 - Ausspiele für Anfaenger', '4.9900', 1, '2013-09-21', '20001'),
(110, '12999763169054705758.1369341480817362', '08.10.13 00:24', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1369341480817362', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '71384', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-10-08', ''),
(111, '12999763169054705758.1393721258440629', '11.10.13 13:09', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1393721258440629', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-10-11', ''),
(112, '12999763169054705758.1321679572134342', '16.10.13 07:01', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1321679572134342', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10021', '10021 - Michaels Cuebid - Zweifärbergegenreizung (Bridge Doddle)', '10021 - Michaels Cuebid - Zweifärbergegenreizung', '9.9900', 1, '2013-10-16', '10021'),
(113, '12999763169054705758.1341595320669918', '16.10.13 07:04', 'EUR', '0.9900', '0.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341595320669918', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r31', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT (Bridge Doddle)', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT', '0.9900', 1, '2013-10-16', 'R31'),
(114, '12999763169054705758.1383449010073211', '16.10.13 08:30', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1383449010073211', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:520', '520 - Forum D Versuchsgebote - Trial Bids (Bridge Doddle)', '520 - Forum D Versuchsgebote - Trial Bids', '9.9900', 1, '2013-10-16', '520'),
(115, '12999763169054705758.1355016598036173', '16.10.13 08:35', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1355016598036173', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:502', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	 (Bridge Doddle)', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	', '9.9900', 1, '2013-10-16', '502'),
(116, '12999763169054705758.1308716727139537', '22.10.13 14:00', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1308716727139537', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r4', 'R4 - Reizung – Eröffnung und Antwort - Hand (Bridge Doddle)', 'R4 - Reizung – Eröffnung und Antwort - Hand\n', '9.9900', 1, '2013-10-22', 'R4'),
(117, '12999763169054705758.1392697285598989', '22.10.13 14:02', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1392697285598989', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r5', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM (Bridge Doddle)', 'R5 - Reizung – EÖ und Antwort - DIAGRAMM\n', '9.9900', 1, '2013-10-22', 'R5'),
(118, '12999763169054705758.1361221437157563', '22.10.13 14:04', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1361221437157563', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r7', 'R7 - NT-Eröffnungen und Antwort Forum D Basis – (Bridge Doddle)', 'R7 - NT-Eröffnungen und Antwort Forum D Basis –\n', '9.9900', 1, '2013-10-22', 'R7'),
(119, '12999763169054705758.1329983836210049', '22.10.13 14:05', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1329983836210049', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r8', 'R8 - Eröffnung-Antwort und erstes Rebid FD Basis (Bridge Doddle)', 'R8 - Eröffnung-Antwort und erstes Rebid\n', '9.9900', 1, '2013-10-22', 'R8'),
(120, '12999763169054705758.1363870988301438', '26.10.13 03:23', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363870988301438', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91336', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-10-26', ''),
(121, '12999763169054705758.1338820819198510', '29.10.13 02:28', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1338820819198510', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79189', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-10-29', ''),
(122, '12999763169054705758.1340273912791156', '29.10.13 02:30', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1340273912791156', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79189', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-10-29', '501'),
(123, '12999763169054705758.1370938078746869', '29.10.13 02:32', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1370938078746869', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79189', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2013-10-29', '504'),
(124, '12999763169054705758.1341223834006370', '29.10.13 02:36', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341223834006370', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79189', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510', '510 Forum D 2012 - Die 2. Antwort des Responders (Bridge Doddle)', '510 Forum D 2012 - Die 2. Antwort des Responders\n', '9.9900', 1, '2013-10-29', '510'),
(125, '12999763169054705758.1398342949994838', '29.10.13 02:40', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398342949994838', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79189', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:511', '511 Forum D 2012 - Die 2. Antwort des Responders - Diag (Bridge Doddle)', '511 Forum D 2012 - Die 2. Antwort des Responders - Diagramm\n', '9.9900', 1, '2013-10-29', '511'),
(126, '12999763169054705758.1370864338897915', '29.10.13 12:29', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1370864338897915', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r9', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BASIS (Bridge Doddle)', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM\n', '9.9900', 1, '2013-10-29', 'R9'),
(127, '12999763169054705758.1358682318264918', '29.10.13 12:42', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1358682318264918', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r30', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18)  BASIS (Bridge Doddle)', 'R30 - Weiterreizung nach 1 NT-Eröffnung (16-18) Forum D BASIS\n', '9.9900', 1, '2013-10-29', 'R30'),
(128, '12999763169054705758.1329196280303957', '29.10.13 12:44', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1329196280303957', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r31', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT (Bridge Doddle)', 'R31 - FD Basis - Wiedergebot des Eröffners nach NT', '9.9900', 1, '2013-10-29', 'R31'),
(129, '12999763169054705758.1368260258685008', '30.10.13 13:05', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368260258685008', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10031', '10031 - 4. Farbe forcing (Bridge Doddle)', '10031 - 4. Farbe forcing', '9.9900', 1, '2013-10-30', '10031'),
(130, '12999763169054705758.1359573883569488', '30.10.13 13:13', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1359573883569488', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:502', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	 (Bridge Doddle)', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	', '9.9900', 1, '2013-10-30', '502'),
(131, '12999763169054705758.1335722449867491', '30.10.13 13:13', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1335722449867491', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:502', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	 (Bridge Doddle)', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	', '9.9900', 1, '2013-10-30', '502'),
(132, '12999763169054705758.1372158077325063', '30.10.13 13:14', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1372158077325063', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', '10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2013-10-30', '10001'),
(133, '12999763169054705758.1372914502672764', '01.11.13 05:36', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1372914502672764', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:502', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	 (Bridge Doddle)', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	', '9.9900', 1, '2013-11-01', '502'),
(134, '12999763169054705758.1379772051642617', '01.11.13 05:37', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1379772051642617', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:701', '701 - BETTER MINOR - Eröffnungen (Bridge Doddle)', '701 - BETTER MINOR - Eröffnungen\n', '9.9900', 1, '2013-11-01', '701'),
(135, '12999763169054705758.1315066668853432', '01.11.13 05:39', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1315066668853432', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:5m40', '5M40 Forum D 2012 - Appetizer (Bridge Doddle)', '5M40 Forum D 2012 - Appetizer', '4.9900', 1, '2013-11-01', '5M40'),
(136, '12999763169054705758.1322434220103288', '01.11.13 05:41', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1322434220103288', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:530', '530 - Weiterreizung nach 1 NT-Eröffnung (Bridge Doddle)', '530 - Weiterreizung nach 1 NT-Eröffnung\n', '9.9900', 1, '2013-11-01', '530'),
(137, '12999763169054705758.1344329552072252', '02.11.13 13:37', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1344329552072252', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10589', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-11-02', ''),
(138, '12999763169054705758.1393853445864558', '02.11.13 15:33', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1393853445864558', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2013-11-02', '10046'),
(139, '12999763169054705758.1389777572258352', '02.11.13 15:34', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1389777572258352', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-11-02', '10049'),
(140, '12999763169054705758.1302018408664825', '02.11.13 15:35', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1302018408664825', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512', '512 Gegenreizung - Hand (Bridge Doddle)', '512 Gegenreizung - Hand\n', '9.9900', 1, '2013-11-02', '512'),
(141, '12999763169054705758.1320468364073519', '02.11.13 15:40', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1320468364073519', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:705', '705 - BETTER MINOR-Reizung – EÖ und Antwort (Bridge Doddle)', '705 - BETTER MINOR-Reizung – EÖ und Antwort\n', '9.9900', 1, '2013-11-02', '705'),
(142, '12999763169054705758.1361971671691417', '03.11.13 00:52', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1361971671691417', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-11-03', ''),
(143, '12999763169054705758.1363111148869195', '03.11.13 01:03', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363111148869195', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-11-03', '10050'),
(144, '12999763169054705758.1308165052939222', '03.11.13 01:05', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1308165052939222', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:506', '506 - Forum D 2012 - NT - Eröffnungen (Bridge Doddle)', '506 - Forum D 2012 - NT - Eröffnungen\n', '9.9900', 1, '2013-11-03', '506'),
(145, '12999763169054705758.1373028568068879', '05.11.13 10:15', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373028568068879', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '38518', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-11-05', ''),
(146, '12999763169054705758.1380106349704881', '06.11.13 06:44', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1380106349704881', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '33335', 'DE', '', '', 'v2:de.dicendum.bridgedoddle:1:5', 'Bridge Doddle', '', '4.9900', 1, '2013-11-06', ''),
(147, '12999763169054705758.1308133311100557', '08.11.13 07:26', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1308133311100557', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10021', '10021 - Michaels Cuebid - Zweifärbergegenreizung (Bridge Doddle)', '10021 - Michaels Cuebid - Zweifärbergegenreizung', '9.9900', 1, '2013-11-08', '10021'),
(148, '12999763169054705758.1398134563192867', '08.11.13 07:26', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398134563192867', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-11-08', '10049'),
(149, '12999763169054705758.1345761856004685', '10.11.13 04:32', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345761856004685', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:704', '704 - BETTER MINOR - Eröffnungen in UF/OF und die Antwo (Bridge Doddle)', '704 - BETTER MINOR - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2013-11-10', '704'),
(150, '12999763169054705758.1341178184930844', '10.11.13 04:33', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341178184930844', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-11-10', '10050'),
(151, '12999763169054705758.1395717908148291', '10.11.13 04:34', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1395717908148291', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:708', '708 - BETTER MINOR - Eröffnung-Antwort und erstes Rebid (Bridge Doddle)', '708 - BETTER MINOR - Eröffnung-Antwort und erstes Rebid\n', '9.9900', 1, '2013-11-10', '708'),
(152, '12999763169054705758.1382020809087524', '22.11.13 03:16', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1382020809087524', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:509', 'Test: 509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm (Bridge Doddle)', '509_FORUM_D_2012_Eröffnung_Antwort_Rebid_Diagramm', '9.9900', 1, '2013-11-22', '509'),
(153, '12999763169054705758.1356179907863493', '22.11.13 09:33', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1356179907863493', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:530', '530 - Weiterreizung nach 1 NT-Eröffnung (Bridge Doddle)', '530 - Weiterreizung nach 1 NT-Eröffnung\n', '9.9900', 1, '2013-11-22', '530'),
(154, '12999763169054705758.1345273054870639', '22.11.13 09:33', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345273054870639', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10031', '10031 - 4. Farbe forcing (Bridge Doddle)', '10031 - 4. Farbe forcing', '9.9900', 1, '2013-11-22', '10031'),
(155, '12999763169054705758.1367971813846109', '24.11.13 03:33', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1367971813846109', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '81377', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-11-24', '501'),
(156, '12999763169054705758.1363774479151472', '26.11.13 11:54', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363774479151472', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '71384', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:201', '201 - SAYC Deutsch - Eröffnungen (Bridge Doddle)', '201 - SAYC Deutsch - Eröffnungen\n', '9.9900', 1, '2013-11-26', '201'),
(157, '12999763169054705758.1395074814133570', '27.11.13 11:59', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1395074814133570', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:511', 'Test: 511 Forum D 2012 - Die 2. Antwort des Responders - Diag (Bridge Doddle)', '511 Forum D 2012 - Die 2. Antwort des Responders - Diagramm\n', '9.9900', 1, '2013-11-27', '511'),
(158, '12999763169054705758.1380937475783084', '02.12.13 13:08', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1380937475783084', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10021', '10021 - Michaels Cuebid - Zweifärbergegenreizung (Bridge Doddle)', '10021 - Michaels Cuebid - Zweifärbergegenreizung', '9.9900', 1, '2013-12-02', '10021'),
(159, '12999763169054705758.1357151617529895', '02.12.13 13:09', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1357151617529895', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82362', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:a5', 'A5 - Wörterbuch Englisch - Deutsch (Bridge Doddle)', 'A5 - Wörterbuch Englisch - Deutsch', '9.9900', 1, '2013-12-02', 'A5'),
(160, '12999763169054705758.1326218671891417', '20.12.13 06:21', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1326218671891417', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2013-12-20', '501'),
(161, '12999763169054705758.1395692264804245', '21.12.13 12:16', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1395692264804245', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r14', 'R14 -  Antwort nach Gegenreizung (Bridge Doddle)', 'R14 -  Antwort nach Gegenreizung', '9.9900', 1, '2013-12-21', 'R14'),
(162, '12999763169054705758.1382555909562473', '24.12.13 02:10', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1382555909562473', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:514', 'Test: 514 Antwort nach Gegenreizung (Bridge Doddle)', '514 Antwort nach Gegenreizung', '9.9900', 1, '2013-12-24', '514'),
(163, '12999763169054705758.1392837617008517', '27.12.13 11:02', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1392837617008517', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2013-12-27', '504'),
(164, '12999763169054705758.1344300585897648', '28.12.13 04:38', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1344300585897648', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10247', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:502', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	 (Bridge Doddle)', '502 - Benjamin - Semi- und Partieforcing Eröffnungen	', '9.9900', 1, '2013-12-28', '502'),
(165, '12999763169054705758.1365237462277387', '28.12.13 10:42', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1365237462277387', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512', '512 Gegenreizung - Hand (Bridge Doddle)', '512 Gegenreizung - Hand\n', '9.9900', 1, '2013-12-28', '512'),
(166, '12999763169054705758.1307618541055698', '28.12.13 10:43', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1307618541055698', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:514', '514 Antwort nach Gegenreizung (Bridge Doddle)', '514 Antwort nach Gegenreizung', '9.9900', 1, '2013-12-28', '514'),
(167, '12999763169054705758.1339278574562711', '28.12.13 10:44', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1339278574562711', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2013-12-28', '10049'),
(168, '12999763169054705758.1384760563462390', '28.12.13 10:44', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1384760563462390', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '91126', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2013-12-28', '10050'),
(169, '12999763169054705758.1363850059869851', '08.01.14 10:13', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363850059869851', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:511', '511 Forum D 2012 - Die 2. Antwort des Responders - Diag (Bridge Doddle)', '511 Forum D 2012 - Die 2. Antwort des Responders - Diagramm\n', '9.9900', 1, '2014-01-08', '511'),
(170, '12999763169054705758.1310018519429286', '08.01.14 10:15', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1310018519429286', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510', '510 Forum D 2012 - Die 2. Antwort des Responders (Bridge Doddle)', '510 Forum D 2012 - Die 2. Antwort des Responders\n', '9.9900', 1, '2014-01-08', '510'),
(171, '12999763169054705758.1335951228388995', '13.01.14 07:46', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1335951228388995', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046'),
(172, '12999763169054705758.1305614157264242', '13.01.14 07:46', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1305614157264242', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046'),
(173, '12999763169054705758.1311153359901989', '13.01.14 07:47', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1311153359901989', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046'),
(174, '12999763169054705758.1345411731213087', '13.01.14 07:48', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345411731213087', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046'),
(175, '12999763169054705758.1309856148046715', '13.01.14 07:48', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1309856148046715', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046'),
(176, '12999763169054705758.1321491354772777', '13.01.14 07:49', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1321491354772777', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046'),
(177, '12999763169054705758.1349960248051963', '13.01.14 07:49', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1349960248051963', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-13', '10046');
INSERT INTO `purchaseorder` (`ID`, `VerkaeuferBestellungNr`, `Bestelldatum`, `WaehrungDerTransaktion`, `Bestellbetrag`, `InRechnungGestellterBetrag`, `FinanziellerBestellstatus`, `StatusDerBestellabwicklung`, `LinkZurBestellung`, `SteuernInsgesamt`, `VersandkostenInsgesamt`, `ZurueckerstatteterBetrag`, `ZurueckgebuchterBetrag`, `SchutzVorRueckbuchungen`, `Versandmethode`, `EMailMarketing`, `EMailAdresse`, `Name`, `AdresseZeile1`, `AdresseZeile2`, `Stadt`, `Bundesstaat`, `Postleitzahl`, `Land`, `Telefonnummer`, `TrackingDaten`, `Artikelnummer`, `Bezeichnung`, `Beschreibung`, `Preis`, `Menge`, `date`, `skuId`) VALUES
(178, '12999763169054705758.1382571231784395', '13.01.14 07:51', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1382571231784395', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10021', '10021 - Michaels Cuebid - Zweifärbergegenreizung (Bridge Doddle)', '10021 - Michaels Cuebid - Zweifärbergegenreizung', '9.9900', 1, '2014-01-13', '10021'),
(179, '12999763169054705758.1319507621562670', '14.01.14 00:30', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1319507621562670', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10046', '10046 - Relaistransfer (Bridge Doddle)', '10046 - Relaistransfer', '9.9900', 1, '2014-01-14', '10046'),
(180, '12999763169054705758.1300163679662574', '14.01.14 06:01', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1300163679662574', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '40699', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2014-01-14', '504'),
(181, '12999763169054705758.1358234734958040', '28.01.14 07:54', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1358234734958040', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '56068', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:514', '514 Antwort nach Gegenreizung (Bridge Doddle)', '514 Antwort nach Gegenreizung', '9.9900', 1, '2014-01-28', '514'),
(182, '12999763169054705758.1322588665515831', '28.01.14 09:39', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1322588665515831', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10050', '10050 - Informationskontra - Forum D (Basis und 2012) (Bridge Doddle)', '10050 Informationskontra - Forum D (Basis und 2012)', '9.9900', 1, '2014-01-28', '10050'),
(183, '12999763169054705758.1319126720855823', '31.01.14 06:23', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1319126720855823', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '22850', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:514', '514 Antwort nach Gegenreizung (Bridge Doddle)', '514 Antwort nach Gegenreizung', '9.9900', 1, '2014-01-31', '514'),
(184, '12999763169054705758.1381725488811986', '10.02.14 15:07', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1381725488811986', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:506', '506 - Forum D 2012 - NT - Eröffnungen (Bridge Doddle)', '506 - Forum D 2012 - NT - Eröffnungen\n', '9.9900', 1, '2014-02-10', '506'),
(185, '12999763169054705758.1331435156260702', '12.02.14 08:59', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1331435156260702', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r1', 'R1 - Die Eröffnungen Forum D - Basis (Bridge Doddle)', 'R1 - Die Eröffnungen Forum D - Basis\n', '9.9900', 1, '2014-02-12', 'R1'),
(186, '12999763169054705758.1385652958204181', '14.02.14 04:41', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1385652958204181', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10049', '10049 - Antworten auf Informationskontra (Bridge Doddle)', '10049 - Antworten auf Informationskontra\n', '9.9900', 1, '2014-02-14', '10049'),
(187, '12999763169054705758.1369005580782045', '17.02.14 22:22', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1369005580782045', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20001', '20001 - Ausspiele für Anfaenger (Bridge Doddle)', '20001 - Ausspiele für Anfaenger', '4.9900', 1, '2014-02-17', '20001'),
(188, '12999763169054705758.1328811734940192', '24.03.14 08:12', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1328811734940192', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14052', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r9', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM FD BASIS (Bridge Doddle)', 'R9 - EÖ-Antwort und erstes Rebid - DIAGRAMM\n', '9.9900', 1, '2014-03-24', 'R9'),
(189, '12999763169054705758.1303782085445846', '02.04.14 18:10', 'EUR', '4.9900', '4.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1303782085445846', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10589', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20001', '20001 - Ausspiele für Anfaenger (Bridge Doddle)', '20001 - Ausspiele für Anfaenger', '4.9900', 1, '2014-04-02', '20001'),
(190, '12999763169054705758.1358602138450027', '02.04.14 18:23', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1358602138450027', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10589', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r14', 'R14 -  Antwort nach Gegenreizung (Bridge Doddle)', 'R14 -  Antwort nach Gegenreizung', '9.9900', 1, '2014-04-02', 'R14'),
(191, '12999763169054705758.1315370592884557', '06.04.14 06:29', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1315370592884557', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r15', 'R15 - 1. Rebid nach Gegenreizung GERMAN (Bridge Doddle)', 'R15 - 1. Rebid nach Gegenreizung GERMAN', '9.9900', 1, '2014-04-06', 'R15'),
(192, '12999763169054705758.1355508721076351', '12.04.14 09:06', 'EUR', '1.0000', '1.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1355508721076351', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abotest', 'Testabo (Bridge Doddle)', 'Nicht verkäuflich', '1.0000', 1, '2014-04-12', 'Nicht verkäuflich'),
(193, '12999763169054705758.1313690006361926', '12.04.14 14:45', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1313690006361926', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10178', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', 'Test: 0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2014-04-12', '501'),
(194, '12999763169054705758.1301631229606085', '24.04.14 04:23', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1301631229606085', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', 'Test: 10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2014-04-24', '10001'),
(195, '12999763169054705758.1385939098996909', '24.04.14 04:24', 'EUR', '1.0000', '1.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1385939098996909', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abotest', 'Testabo (Bridge Doddle)', 'Nicht verkäuflich', '1.0000', 1, '2014-04-24', 'Nicht verkäuflich'),
(196, '12999763169054705758.1310216070765680', '29.04.14 09:39', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1310216070765680', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:r18', 'R18 - FD Basis – 2. Gebot des Antwortenden nach 1NT (Bridge Doddle)', 'R18 - FD Basis – 2. Gebot des Antwortenden nach 1NT', '9.9900', 1, '2014-04-29', 'R18'),
(197, '12999763169054705758.1389909738512848', '01.05.14 01:47', 'EUR', '1.5000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1389909738512848', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '30163', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Test: Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '1.5000', 1, '2014-05-01', 'Free download of all current and future card sets'),
(198, '12999763169054705758.1362155134228985', '03.06.14 07:59', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1362155134228985', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20050', '20050 - Alleinspiel Spielplan I - W. Gromoeller (Bridge Doddle)', '20050 - Alleinspiel Spielplan I - W. Gromoeller', '9.9900', 1, '2014-06-03', '20050'),
(199, '12999763169054705758.1369673200167692', '10.06.14 07:45', 'EUR', '3.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1369673200167692', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510aptz', '510APTZ - 2. Gebot des Antwortenden –Hand+Diag FD 2012 (Bridge Doddle)', '510APTZ - 2. Gebot des Antwortenden –Hand+Diag FD 2012', '3.9900', 1, '2014-06-10', '510APTZ'),
(200, '12999763169054705758.1391740283200242', '10.06.14 07:45', 'EUR', '3.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1391740283200242', '0.0000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510aptz', '510APTZ - 2. Gebot des Antwortenden –Hand+Diag FD 2012 (Bridge Doddle)', '510APTZ - 2. Gebot des Antwortenden –Hand+Diag FD 2012', '3.9900', 1, '2014-06-10', '510APTZ'),
(201, '12999763169054705758.1306546630225026', '10.06.14 11:52', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1306546630225026', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20050', '20050 - Alleinspiel Spielplan I - W. Gromoeller (Bridge Doddle)', '20050 - Alleinspiel Spielplan I - W. Gromoeller', '9.9900', 1, '2014-06-10', '20050'),
(202, '12999763169054705758.1318471774807289', '10.06.14 11:53', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1318471774807289', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20015', '20015 - Spieltechnik - Farbbehandlung (Bridge Doddle)', '20015 - Spieltechnik - Farbbehandlung', '9.9900', 1, '2014-06-10', '20015'),
(203, '12999763169054705758.1346381820068195', '20.06.14 13:28', 'EUR', '99.0000', '99.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1346381820068195', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '89231', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2014-06-20', 'Free download of all current and future card sets'),
(204, '12999763169054705758.1325401154506093', '23.06.14 08:50', 'EUR', '99.0000', '99.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1325401154506093', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10629', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2014-06-23', 'Free download of all current and future card sets'),
(205, '12999763169054705758.1356397928624488', '24.06.14 08:45', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1356397928624488', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79111', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20050', '20050 - Alleinspiel Spielplan I - W. Gromoeller (Bridge Doddle)', '20050 - Alleinspiel Spielplan I - W. Gromoeller', '9.9900', 1, '2014-06-24', '20050'),
(206, '12999763169054705758.1320655551317375', '01.08.14 09:00', 'EUR', '99.0000', '99.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1320655551317375', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10589', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2014-08-01', 'Free download of all current and future card sets'),
(207, '12999763169054705758.1398436956167399', '13.08.14 04:55', 'EUR', '99.0000', '99.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398436956167399', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10315', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2014-08-13', 'Free download of all current and future card sets'),
(208, '12999763169054705758.1351529393302856', '13.09.14 08:57', 'CZK', '82.1100', '82.1100', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1351529393302856', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10000', 'CZ', '', '', 'inapp:de.dicendum.bridgedoddle:301', '301 - SAYC - Engl - Openings (Bridge Doddle)', '301 - SAYC - Engl - Openings\n', '82.1100', 1, '2014-09-13', '301'),
(209, '12999763169054705758.1306231496402393', '13.09.14 08:58', 'CZK', '82.1100', '82.1100', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1306231496402393', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10000', 'CZ', '', '', 'inapp:de.dicendum.bridgedoddle:304', '304 - SAYC - ENG - First Answer to Minor/Major-Openings (Bridge Doddle)', '304 - SAYC - Engl - First Answer to Minor-/Major-Openings\n', '82.1100', 1, '2014-09-13', '304'),
(210, '12999763169054705758.1372758338690705', '17.09.14 02:14', 'EUR', '99.0000', '99.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1372758338690705', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '10247', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2014-09-17', 'Free download of all current and future card sets'),
(211, '12999763169054705758.1353035612798180', '28.09.14 03:35', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1353035612798180', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82467', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20050', '20050 - Alleinspiel Spielplan I - W. Gromoeller (Bridge Doddle)', '20050 - Alleinspiel Spielplan I - W. Gromoeller', '9.9900', 1, '2014-09-28', '20050'),
(212, '12999763169054705758.1346216142053460', '29.09.14 04:02', 'EUR', '49.0000', '49.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1346216142053460', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '96138', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '49.0000', 1, '2014-09-29', 'Free download of all current and future card sets'),
(213, '12999763169054705758.1327890709083781', '05.10.14 05:40', 'EUR', '79.0000', '79.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1327890709083781', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo2', '1 year subscription (Bridge Doddle)', 'Free access to all card sets for one year', '79.0000', 1, '2014-10-05', 'Free access to all card sets for one year'),
(214, '12999763169054705758.1333759300221766', '06.10.14 13:26', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333759300221766', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2014-10-06', 'Get access to all card sets for one month'),
(215, '12999763169054705758.1344171884628497', '07.10.14 00:40', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1344171884628497', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '13189', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:m1', 'M1 - Der Anfang (Minibridge I) (Bridge Doddle)', 'M1 - Der Anfang (Minibridge I)\n', '9.9900', 1, '2014-10-07', 'M1'),
(216, '12999763169054705758.1343334075194033', '18.10.14 00:51', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1343334075194033', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '68167', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2014-10-18', 'Get access to all card sets for one month'),
(217, '12999763169054705758.1313745908342522', '30.10.14 07:54', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1313745908342522', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14195', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:m1', 'M1 - Der Anfang (Minibridge I) (Bridge Doddle)', 'M1 - Der Anfang (Minibridge I)\n', '9.9900', 1, '2014-10-30', 'M1'),
(218, '12999763169054705758.1333759300221766..0', '06.11.14 12:26', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333759300221766..0', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2014-11-06', 'Get access to all card sets for one month'),
(219, '12999763169054705758.1376235637175765', '11.11.14 08:23', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1376235637175765', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79111', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2014-11-11', '504'),
(220, '12999763169054705758.1339887749921703', '11.11.14 08:27', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1339887749921703', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79111', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:508', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid Hand (Bridge Doddle)', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid HAND', '9.9900', 1, '2014-11-11', '508'),
(221, '12999763169054705758.1358220699115876', '11.11.14 08:29', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1358220699115876', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79111', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:510', '510 Forum D 2012 - Die 2. Antwort des Responders (Bridge Doddle)', '510 Forum D 2012 - Die 2. Antwort des Responders\n', '9.9900', 1, '2014-11-11', '510'),
(222, '12999763169054705758.1353070143044544', '14.11.14 10:29', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1353070143044544', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79249', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2014-11-14', '501'),
(223, '12999763169054705758.1365550550570672', '14.11.14 10:30', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1365550550570672', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79249', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2014-11-14', '504'),
(224, '12999763169054705758.1330568305345430', '24.11.14 23:38', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1330568305345430', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '19000', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512', '512 Gegenreizung - Hand (Bridge Doddle)', '512 Gegenreizung - Hand\n', '9.9900', 1, '2014-11-24', '512'),
(225, '12999763169054705758.1333759300221766..1', '06.12.14 12:26', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333759300221766..1', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2014-12-06', 'Get access to all card sets for one month'),
(226, '12999763169054705758.1323137235373940', '16.12.14 05:20', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1323137235373940', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '44799', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2014-12-16', 'Get access to all card sets for one month'),
(227, '12999763169054705758.1345899970942578', '22.12.14 04:35', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2014-12-22', 'Get access to all card sets for one month'),
(228, '12999763169054705758.1397990430601225', '22.12.14 13:41', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1397990430601225', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79299', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2014-12-22', '504'),
(229, '12999763169054705758.1370993947254372', '29.12.14 11:46', 'GBP', '0.8400', '0.8400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1370993947254372', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', 'CV326PA', 'GB', '', '', 'inapp:de.dicendum.bridgedoddle:1400', '1400 - ACOL (incl. weak twos) - Start set (Bridge Doddle)', '1400 - ACOL (incl. weak twos) - Start set', '0.8400', 1, '2014-12-29', '1400'),
(230, '12999763169054705758.1333759300221766..2', '06.01.15 12:26', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333759300221766..2', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-01-06', 'Get access to all card sets for one month'),
(231, '12999763169054705758.1345462819401394', '17.01.15 23:02', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345462819401394', '1.6000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '38518', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', '10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2015-01-17', '10001'),
(232, '12999763169054705758.1374190283754283', '18.01.15 04:59', 'EUR', '79.0000', '79.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1374190283754283', '12.6100', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '44799', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo2', '1 year subscription (Bridge Doddle)', 'Free access to all card sets for one year', '79.0000', 1, '2015-01-18', 'Free access to all card sets for one year'),
(233, '12999763169054705758.1373960279211341', '18.01.15 06:22', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373960279211341', '1.6000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79117', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2015-01-18', '501'),
(234, '12999763169054705758.1345899970942578..0', '22.01.15 04:35', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..0', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-01-22', 'Get access to all card sets for one month'),
(235, '12999763169054705758.1364542832359700', '30.01.15 10:29', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1364542832359700', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '29664', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-01-30', 'Get access to all card sets for one month'),
(236, '12999763169054705758.1368000071312819', '01.02.15 11:52', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368000071312819', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(237, '12999763169054705758.1317007293225264', '01.02.15 11:53', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1317007293225264', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(238, '12999763169054705758.1368726111971531', '01.02.15 11:54', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368726111971531', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(239, '12999763169054705758.1341494682240950', '01.02.15 11:58', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341494682240950', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(240, '12999763169054705758.1337181749727409', '01.02.15 11:58', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1337181749727409', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(241, '12999763169054705758.1388723911169665', '01.02.15 12:00', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1388723911169665', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(242, '12999763169054705758.1369852168437710', '01.02.15 12:00', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1369852168437710', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(243, '12999763169054705758.1382254025706811', '01.02.15 12:00', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1382254025706811', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(244, '12999763169054705758.1380350518641307', '01.02.15 12:02', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1380350518641307', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(245, '12999763169054705758.1363216915973209', '01.02.15 12:09', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363216915973209', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(246, '12999763169054705758.1364022804508457', '01.02.15 12:11', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1364022804508457', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(247, '12999763169054705758.1398531217697050', '01.02.15 12:27', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398531217697050', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(248, '12999763169054705758.1354752553773308', '01.02.15 12:40', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1354752553773308', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(249, '12999763169054705758.1319166598738669', '01.02.15 12:51', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1319166598738669', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(250, '12999763169054705758.1349453183833022', '01.02.15 12:51', 'EUR', '99.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1349453183833022', '15.8100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '99.0000', 1, '2015-02-01', 'Free download of all current and future card sets'),
(251, '12999763169054705758.1369379198805577', '01.02.15 14:51', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1369379198805577', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-02-01', 'Get access to all card sets for one month'),
(252, '12999763169054705758.1316063586921320', '01.02.15 14:51', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1316063586921320', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-02-01', 'Get access to all card sets for one month'),
(253, '12999763169054705758.1305939146804414', '02.02.15 13:52', 'EUR', '79.0000', '79.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1305939146804414', '12.6100', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82031', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo2', '1 year subscription (Bridge Doddle)', 'Free access to all card sets for one year', '79.0000', 1, '2015-02-02', 'Free access to all card sets for one year'),
(254, '12999763169054705758.1373685172600356', '03.02.15 15:03', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373685172600356', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:417', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen (Bridge Doddle)', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', '10.9900', 1, '2015-02-03', '417'),
(255, '12999763169054705758.1391071053336646', '03.02.15 15:09', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1391071053336646', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:448', '448 - FD Plus 2015 - Oberfarbfit nach Zwischenreizung (Bridge Doddle)', '448 - Forum D Plus 2015 - Oberfarbfit nach Zwischenreizung', '10.9900', 1, '2015-02-03', '448'),
(256, '12999763169054705758.1398632656108575', '03.02.15 15:10', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1398632656108575', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:449', '449 - FD Plus 2015 - Unterfarbfit nach Zwischenreizung (Bridge Doddle)', '449 - Forum D Plus 2015 - Unterfarbfit nach Zwischenreizung', '10.9900', 1, '2015-02-03', '449'),
(257, '12999763169054705758.1333759300221766..3', '06.02.15 12:26', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1333759300221766..3', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-02-06', 'Get access to all card sets for one month'),
(258, '12999763169054705758.1304644370734645', '11.02.15 11:31', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1304644370734645', '1.6000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79117', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-02-11', '504'),
(259, '12999763169054705758.1388020828805696', '14.02.15 08:14', 'EUR', '3.9900', '3.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1388020828805696', '0.6400', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79299', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:513aptz', '513APTZ - Info-X und Antworten auf Info-X - FD 2012 (Bridge Doddle)', '513APTZ - Info-X und Antworten auf Info-X - FD 2012', '3.9900', 1, '2015-02-14', '513APTZ');
INSERT INTO `purchaseorder` (`ID`, `VerkaeuferBestellungNr`, `Bestelldatum`, `WaehrungDerTransaktion`, `Bestellbetrag`, `InRechnungGestellterBetrag`, `FinanziellerBestellstatus`, `StatusDerBestellabwicklung`, `LinkZurBestellung`, `SteuernInsgesamt`, `VersandkostenInsgesamt`, `ZurueckerstatteterBetrag`, `ZurueckgebuchterBetrag`, `SchutzVorRueckbuchungen`, `Versandmethode`, `EMailMarketing`, `EMailAdresse`, `Name`, `AdresseZeile1`, `AdresseZeile2`, `Stadt`, `Bundesstaat`, `Postleitzahl`, `Land`, `Telefonnummer`, `TrackingDaten`, `Artikelnummer`, `Bezeichnung`, `Beschreibung`, `Preis`, `Menge`, `date`, `skuId`) VALUES
(260, '12999763169054705758.1323026852721832', '20.02.15 04:49', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1323026852721832', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '31737', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20020', '20020 - Beherrsche die Farben 1 - R. Rohowsky (Bridge Doddle)', '20020 - Farbbehandlung 1', '10.9900', 1, '2015-02-20', '20020'),
(261, '12999763169054705758.1345899970942578..1', '22.02.15 04:35', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..1', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-02-22', 'Get access to all card sets for one month'),
(262, '12999763169054705758.1373484474166965', '24.02.15 03:54', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-02-24', 'Get access to all card sets for one month'),
(263, '12999763169054705758.1376067423854550', '25.02.15 00:57', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1376067423854550', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79280', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:508', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid Hand (Bridge Doddle)', '508_FORUM_D_2012-Eröffnung_Antwort_Rebid HAND', '11.8900', 1, '2015-02-25', '508'),
(264, '12999763169054705758.1364542832359700..0', '28.02.15 10:25', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1364542832359700..0', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '29664', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-02-28', 'Get access to all card sets for one month'),
(265, '12999763169054705758.1339356536909921', '16.03.15 11:55', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1339356536909921', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20002', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4. (Bridge Doddle)', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', '10.9900', 1, '2015-03-16', '20002'),
(266, '12999763169054705758.1397959668964751', '16.03.15 11:55', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1397959668964751', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20002', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4. (Bridge Doddle)', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', '10.9900', 1, '2015-03-16', '20002'),
(267, '12999763169054705758.1348488990551080', '16.03.15 11:56', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1348488990551080', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20002', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4. (Bridge Doddle)', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', '10.9900', 1, '2015-03-16', '20002'),
(268, '12999763169054705758.1396569034692610', '16.03.15 11:56', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1396569034692610', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20002', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4. (Bridge Doddle)', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', '10.9900', 1, '2015-03-16', '20002'),
(269, '12999763169054705758.1374060050494739', '16.03.15 11:57', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1374060050494739', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20002', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4. (Bridge Doddle)', '20002 - Ausspiele für Anfänger/Fortgeschrittene 2./4.', '10.9900', 1, '2015-03-16', '20002'),
(270, '12999763169054705758.1345899970942578..2', '22.03.15 05:35', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..2', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-03-22', 'Get access to all card sets for one month'),
(271, '12999763169054705758.1383712876992178', '23.03.15 13:45', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1383712876992178', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-03-23', 'Get access to all card sets for one month'),
(272, '12999763169054705758.1304821214423350', '23.03.15 13:46', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1304821214423350', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-03-23', 'Get access to all card sets for one month'),
(273, '12999763169054705758.1341613711282889', '23.03.15 13:47', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341613711282889', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-03-23', 'Get access to all card sets for one month'),
(274, '12999763169054705758.1368526328318321', '23.03.15 13:47', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368526328318321', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-03-23', 'Get access to all card sets for one month'),
(275, '12999763169054705758.1373484474166965..0', '24.03.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..0', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-03-24', 'Get access to all card sets for one month'),
(276, '12999763169054705758.1364542832359700..1', '28.03.15 11:25', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1364542832359700..1', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '29664', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-03-28', 'Get access to all card sets for one month'),
(277, '12999763169054705758.1317600909808851', '05.04.15 13:14', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1317600909808851', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(278, '12999763169054705758.1360574879373874', '05.04.15 13:15', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1360574879373874', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(279, '12999763169054705758.1353640627320209', '05.04.15 13:20', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1353640627320209', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(280, '12999763169054705758.1386389439297624', '05.04.15 13:33', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1386389439297624', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(281, '12999763169054705758.1378457194799993', '05.04.15 13:41', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1378457194799993', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(282, '12999763169054705758.1378313380307824', '05.04.15 13:45', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1378313380307824', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(283, '12999763169054705758.1383346944745631', '05.04.15 13:51', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1383346944745631', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-05', '504'),
(284, '12999763169054705758.1380784801351526', '05.04.15 14:53', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1380784801351526', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2015-04-05', '501'),
(285, '12999763169054705758.1355398317655072', '05.04.15 14:54', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1355398317655072', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0501', '0501 - Forum D 2012 - Eröffnungen (Bridge Doddle)', '0501 - Forum D 2012 - Eröffnungen', '9.9900', 1, '2015-04-05', '501'),
(286, '12999763169054705758.1382183940584552', '05.04.15 14:57', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1382183940584552', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:417', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen (Bridge Doddle)', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', '10.9900', 1, '2015-04-05', '417'),
(287, '12999763169054705758.1391161774927468', '05.04.15 14:58', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1391161774927468', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:417', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen (Bridge Doddle)', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', '10.9900', 1, '2015-04-05', '417'),
(288, '12999763169054705758.1371794845109537', '05.04.15 14:59', 'EUR', '10.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1371794845109537', '1.7500', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:417', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen (Bridge Doddle)', '417 - Forum D Plus 2015 - Verzögerte Oberfarbhebungen', '10.9900', 1, '2015-04-05', '417'),
(289, '12999763169054705758.1318873075436439', '10.04.15 03:52', 'EUR', '9.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1318873075436439', '1.6000', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '99425', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:0504', '0504 - Forum D 2012 Eröffnungen in UF/OF und Antworten (Bridge Doddle)', '0504 - Forum D 2012 - Eröffnungen in UF/OF und die Antworten\n', '9.9900', 1, '2015-04-10', '504'),
(290, '12999763169054705758.1345899970942578..3', '22.04.15 05:35', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..3', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-04-22', 'Get access to all card sets for one month'),
(291, '12999763169054705758.1379661648588989', '23.04.15 07:28', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1379661648588989', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '13595', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:m1', 'M1 - Der Anfang (Minibridge I) (Bridge Doddle)', 'M1 - Der Anfang (Minibridge I)\n', '10.9900', 1, '2015-04-23', 'M1'),
(292, '12999763169054705758.1368526328318321..0', '23.04.15 13:48', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368526328318321..0', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-04-23', 'Get access to all card sets for one month'),
(293, '12999763169054705758.1373484474166965..1', '24.04.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..1', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-04-24', 'Get access to all card sets for one month'),
(294, '12999763169054705758.1394666039539783', '19.05.15 11:23', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1394666039539783', '1.6000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14052', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10001', '10001 - RKCB Ass-Frage Deutsch (Bridge Doddle)', '10001 RKCB Ass-Frage Deutsch', '9.9900', 1, '2015-05-19', '10001'),
(295, '12999763169054705758.1345899970942578..4', '22.05.15 05:34', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..4', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-05-22', 'Get access to all card sets for one month'),
(296, '12999763169054705758.1368526328318321..1', '23.05.15 13:48', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368526328318321..1', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-05-23', 'Get access to all card sets for one month'),
(297, '12999763169054705758.1373484474166965..2', '24.05.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..2', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-05-24', 'Get access to all card sets for one month'),
(298, '12999763169054705758.1352925232090929', '29.05.15 12:29', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1352925232090929', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20101', '20101 - Spielstiche zählen (Bridge Doddle)', '20101 - Spielstiche zählen', '11.8900', 1, '2015-05-29', '20101'),
(299, '12999763169054705758.1338447304464417', '29.05.15 12:30', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1338447304464417', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10082', '10082 - Ogust - Weiterreizung nach weak two in ♡ oder ♤ (Bridge Doddle)', '10082 - Ogust - Weiterreizung nach weak two in ♡ oder ♤', '11.8900', 1, '2015-05-29', '10082'),
(300, '12999763169054705758.1363354400006787', '29.05.15 12:41', 'EUR', '3.9900', '3.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1363354400006787', '0.6400', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:512aptz', '512APTZ - Gegenreizung inklusive Informationskontra (Bridge Doddle)', '512APTZ - Gegenreizung inklusive Informationskontra', '3.9900', 1, '2015-05-29', '512APTZ'),
(301, '12999763169054705758.1382570620882560', '29.05.15 12:44', 'EUR', '19.7800', '19.7800', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1382570620882560', '3.1600', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:20052', '20052 - Alleinspiel – Assumptions 1 - W.Gromöller (Bridge Doddle)', '20052 - Alleinspiel – Assumptions 1 - W.Gromöller', '19.7800', 1, '2015-05-29', '20052'),
(302, '12999763169054705758.1313752908557497', '29.05.15 13:52', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1313752908557497', '1.6000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:542', '542 - Gegenreizung auf Weak Twos (Bridge Doddle)', '542 - Gegenreizung auf Weak Twos', '9.9900', 1, '2015-05-29', '542'),
(303, '12999763169054705758.1381456576103561', '07.06.15 10:22', 'EUR', '79.0000', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1381456576103561', '12.6100', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '29664', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo2', '1 year subscription (Bridge Doddle)', 'Free access to all card sets for one year', '79.0000', 1, '2015-06-07', 'Free access to all card sets for one year'),
(304, '12999763169054705758.1380370911224884', '07.06.15 10:29', 'EUR', '79.0000', '79.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1380370911224884', '12.6100', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '29664', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo2', '1 year subscription (Bridge Doddle)', 'Free access to all card sets for one year', '79.0000', 1, '2015-06-07', 'Free access to all card sets for one year'),
(305, '12999763169054705758.1397600536884917', '17.06.15 06:10', 'GBP', '0.8400', '0.8400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1397600536884917', '0.1400', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', 'MIDDLESEX', 'HA89UE', 'GB', '', '', 'inapp:de.dicendum.bridgedoddle:1400', '1400 - ACOL (incl. weak twos) - Start set (Bridge Doddle)', '1400 - ACOL (incl. weak twos) - Start set', '0.8400', 1, '2015-06-17', '1400'),
(306, '12999763169054705758.1370436989163592', '18.06.15 01:37', 'GBP', '1.0000', '1.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1370436989163592', '0.1700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', 'MIDDLESEX', 'HA89UE', 'GB', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '1.0000', 1, '2015-06-18', 'Free download of all current and future card sets'),
(307, '12999763169054705758.1341967410741686', '20.06.15 09:37', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1341967410741686', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:g2', 'G2 - Abrechnung - Berechnung der Anschrift (Bridge Doddle)', 'G2 - Abrechnung - Berechnung der Anschrift', '11.8900', 1, '2015-06-20', 'G2'),
(308, '12999763169054705758.1345899970942578..5', '22.06.15 05:34', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..5', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-06-22', 'Get access to all card sets for one month'),
(309, '12999763169054705758.1361471752935954', '23.06.15 02:03', 'EUR', '13.0800', '13.0800', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1361471752935954', '2.0900', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:286', '286 - Eröffnungen in dritter Hand (Bridge Doddle)', '286 - Eröffnungen in dritter Hand', '13.0800', 1, '2015-06-23', '286'),
(310, '12999763169054705758.1368526328318321..2', '23.06.15 13:48', 'EUR', '12.9900', '0.0000', 'CANCELLED', 'WILL_NOT_DELIVER', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1368526328318321..2', '2.0700', '0.0000', '0.0000', '0.0000', 'false', '', '', '', '', '', '', '', '', '14109', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-06-23', 'Get access to all card sets for one month'),
(311, '12999763169054705758.1373484474166965..3', '24.06.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..3', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-06-24', 'Get access to all card sets for one month'),
(312, '12999763169054705758.1385917252220859', '06.07.15 06:03', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1385917252220859', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10002', '10002 - RKCB (Roman KeyCard Blackwood) 1430 (Bridge Doddle)', '10002 - RKCB (Roman KeyCard Blackwood) 1430', '10.9900', 1, '2015-07-06', '10002'),
(313, '12999763169054705758.1338866123774698', '07.07.15 06:41', 'EUR', '9.9900', '9.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1338866123774698', '1.6000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:542', '542 - Gegenreizung auf Weak Twos (Bridge Doddle)', '542 - Gegenreizung auf Weak Twos', '9.9900', 1, '2015-07-07', '542'),
(314, '12999763169054705758.1392961955588331', '18.07.15 13:33', 'CHF', '11.5600', '11.5600', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1392961955588331', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '4054', 'CH', '', '', 'inapp:de.dicendum.bridgedoddle:20020', '20020 - Beherrsche die Farben 1 - R. Rohowsky (Bridge Doddle)', '20020 - Farbbehandlung 1', '11.5600', 1, '2015-07-18', '20020'),
(315, '12999763169054705758.1353340745701876', '18.07.15 13:37', 'CHF', '11.6000', '11.6000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1353340745701876', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '4054', 'CH', '', '', 'inapp:de.dicendum.bridgedoddle:m1', 'M1 - Der Anfang (Minibridge I) (Bridge Doddle)', 'M1 - Der Anfang (Minibridge I)\n', '11.6000', 1, '2015-07-18', 'M1'),
(316, '12999763169054705758.1345899970942578..6', '22.07.15 05:34', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..6', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-07-22', 'Get access to all card sets for one month'),
(317, '12999763169054705758.1373484474166965..4', '24.07.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..4', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-07-24', 'Get access to all card sets for one month'),
(318, 'GPA.1381-0804-9300-32006', '07.08.15 11:25', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1381-0804-9300-32006', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:430', '430 Forum D PLUS - Weiterreizung nach NT -M. Gromoeller (Bridge Doddle)', '430 Forum D PLUS - Weiterreizung nach NT - M. Gromoeller\n', '11.8900', 1, '2015-08-07', '430'),
(319, 'GPA.1384-3762-9668-00354', '10.08.15 12:33', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1384-3762-9668-00354', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:507', '507 - Forum D 2012_NT_Eröffnungen und Antworten (Bridge Doddle)', '507 - Forum D 2012_NT_Eröffnungen und Antworten\n', '11.8900', 1, '2015-08-10', '507 - Forum D 2012'),
(320, '12999763169054705758.1345899970942578..7', '22.08.15 05:35', 'EUR', '12.9900', '12.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1345899970942578..7', '2.0700', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '82008', 'DE', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '12.9900', 1, '2015-08-22', 'Get access to all card sets for one month'),
(321, '12999763169054705758.1373484474166965..5', '24.08.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..5', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-08-24', 'Get access to all card sets for one month'),
(322, '12999763169054705758.1322-8653-5997-78214', '25.08.15 07:15', 'EUR', '11.8900', '11.8900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1322-8653-5997-78214', '1.9000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:514', '514 Antwort nach Gegenreizung (Bridge Doddle)', '514 Antwort nach Gegenreizung', '11.8900', 1, '2015-08-25', '514'),
(323, 'GPA.1350-1139-7476-22180', '27.08.15 02:19', 'EUR', '1.0000', '1.0000', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1350-1139-7476-22180', '0.1600', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '21244', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '1.0000', 1, '2015-08-27', 'Free download of all current and future card sets'),
(324, '12999763169054705758.1303-2081-1545-64446', '04.09.15 12:45', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1303-2081-1545-64446', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:441', '441 - Forum D Plus 2015 - Inverted Minors (Bridge Doddle)', '441 - Forum D Plus 2015 - Inverted Minors', '10.9900', 1, '2015-09-04', '441'),
(325, 'GPA.1368-6300-2012-98497', '14.09.15 05:21', 'EUR', '0.9900', '0.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1368-6300-2012-98497', '0.1600', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '14473', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:allinc', 'Permanent Flatrate (Bridge Doddle)', 'Free download of all current and future card sets', '0.9900', 1, '2015-09-14', 'Free download of all current and future card sets'),
(326, '12999763169054705758.1307-2981-9107-93245', '16.09.15 10:50', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1307-2981-9107-93245', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '41844', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:451', '451 - Forum D Plus 2015 - SpiralScan (Bridge Doddle)', '451 - Forum D Plus 2015 - SpiralScan', '10.9900', 1, '2015-09-16', '451'),
(327, '12999763169054705758.1373484474166965..6', '24.09.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..6', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-09-24', 'Get access to all card sets for one month'),
(328, '12999763169054705758.1373484474166965..7', '24.10.15 04:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..7', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-10-24', 'Get access to all card sets for one month'),
(329, 'GPA.1364-8576-0460-64830', '07.11.15 09:56', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1364-8576-0460-64830', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '25899', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:419', '419 - Forum D Plus 2015 - Neue Unterfarbe forcing (Bridge Doddle)', '419 - Forum D Plus 2015 - Neue Unterfarbe forcing', '10.9900', 1, '2015-11-07', '419'),
(330, 'GPA.1347-6776-4365-03006', '09.11.15 00:43', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1347-6776-4365-03006', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79299', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10002', '10002 - RKCB (Roman KeyCard Blackwood) 1430 (Bridge Doddle)', '10002 - RKCB (Roman KeyCard Blackwood) 1430', '10.9900', 1, '2015-11-09', '10002'),
(331, 'GPA.1388-0042-6480-63752', '09.11.15 04:01', 'EUR', '10.9900', '10.9900', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/GPA.1388-0042-6480-63752', '1.7500', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '79280', 'DE', '', '', 'inapp:de.dicendum.bridgedoddle:10002', '10002 - RKCB (Roman KeyCard Blackwood) 1430 (Bridge Doddle)', '10002 - RKCB (Roman KeyCard Blackwood) 1430', '10.9900', 1, '2015-11-09', '10002'),
(332, '12999763169054705758.1373484474166965..8', '24.11.15 03:53', 'USD', '17.9400', '17.9400', 'CHARGED', 'DELIVERED', 'https://wallet.google.com/merchant/pages/u/0/bcid-CSJaGPALQpeQNxQjvE36gQ/oid-fe93JjxBS2u$d1LUotCwgQ/cid-18152483994331763562/purchaseorderdetails/12999763169054705758.1373484474166965..8', '0.0000', '0.0000', '0.0000', '0.0000', 'true', '', '', '', '', '', '', '', '', '55343', 'US', '', '', 'subs:de.dicendum.bridgedoddle:abo1', '1 month subscription (Bridge Doddle)', 'Get access to all card sets for one month', '17.9400', 1, '2015-11-24', 'Get access to all card sets for one month');

-- --------------------------------------------------------

--
-- Table structure for table `rechnung`
--

CREATE TABLE `rechnung` (
  `bId` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `from` date NOT NULL,
  `to` date NOT NULL,
  `datum` date NOT NULL,
  `rl1` int(11) NOT NULL DEFAULT '1',
  `rl2` int(11) NOT NULL DEFAULT '1',
  `kId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rechnung`
--

INSERT INTO `rechnung` (`bId`, `stat`, `from`, `to`, `datum`, `rl1`, `rl2`, `kId`) VALUES
(1043, 1, '2013-01-01', '2015-12-31', '2015-12-09', 1, 1, 10),
(1044, 1, '2015-12-01', '2015-12-31', '2015-12-09', 1, 1, 14),
(1045, 1, '0000-00-00', '0000-00-00', '2016-10-27', 1, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `saetzeautoren`
--

CREATE TABLE `saetzeautoren` (
  `autorenName` varchar(50) NOT NULL,
  `translatorName` varchar(50) NOT NULL DEFAULT '',
  `satzName` tinytext NOT NULL,
  `satzCode` varchar(50) NOT NULL,
  `satzId` int(11) NOT NULL,
  `atId` int(11) NOT NULL,
  `trId` int(11) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saetzeautoren`
--

INSERT INTO `saetzeautoren` (`autorenName`, `translatorName`, `satzName`, `satzCode`, `satzId`, `atId`, `trId`, `fromDate`, `toDate`) VALUES
('Alv', 'Alv', '201 SAYC - Eröffnungen', '201', 479, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '204 SAYC - Eröffnung und Antwort', '204', 480, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', '205 - SAYC - Farberöffnung und Antwort', '205', 481, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Alv', '', '206', 482, 10, 10, '2014-01-04', '2100-01-01'),
('Alv', 'Alv', '', '209', 483, 10, 10, '2014-01-05', '2100-01-01'),
('Alv', 'Alv', '210 - SAYC -– Zweites Gebot des Antwortenden - Hand', '210', 484, 10, 10, '2014-01-06', '2100-01-01'),
('Braun', 'Braun', '', '236', 485, 11, 11, '2014-12-15', '2100-01-01'),
('Braun', 'Braun', '', '238', 486, 11, 11, '2014-12-19', '2100-01-01'),
('Braun', 'Braun', '', '286', 487, 11, 11, '2015-02-26', '2100-01-01'),
('Braun', 'Braun', '', '287', 488, 11, 11, '2015-03-21', '2100-01-01'),
('Braun', 'Braun', '', '288', 489, 11, 11, '2015-03-21', '2100-01-01'),
('Alv', 'Alv', '300 - SAYC English - Startset', '300', 490, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '301 - SAYC English - Opening - Hand', '301', 491, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Braun', '302 Benjamin -– Strong opening at the 2nd level', '302', 492, 10, 11, '2014-11-24', '2100-01-01'),
('Alv', 'Alv', '304 - SAYC - Opening and response - Hands', '304', 493, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '305 - SAYC English - Opening and response - diagram', '305', 494, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Braun', 'SAYC - NT Openings', '306', 495, 10, 11, '2015-02-26', '2100-01-01'),
('Alv', 'Alv', '308 - SAYC - First rebid - Hand', '308', 496, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '309 - SAYC English - First rebid - diagram', '309', 497, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Braun', 'SAYC', '310', 498, 10, 11, '2015-02-26', '2100-01-01'),
('Alv', 'Braun', '312 - Overcalls', '312', 499, 10, 11, '2014-11-11', '2100-01-01'),
('Alv', 'Braun', '313 Takeout Double', '313', 500, 10, 11, '2014-11-12', '2100-01-01'),
('Alv', 'Braun', '314 - Response after interference', '314', 501, 10, 11, '2014-11-13', '2100-01-01'),
('Alv', 'Braun', '315 - opener rebid after opp 1level overcall', '315', 502, 10, 11, '2014-12-11', '2100-01-01'),
('Braun', 'Braun', '', '319', 503, 11, 11, '1977-07-02', '2100-01-01'),
('Roth', 'Braun', '', '321', 504, 12, 11, '2014-12-14', '2100-01-01'),
('Meckel', 'Braun', '322 - Short Suit Trialbids', '322', 505, 13, 11, '2014-11-24', '2100-01-01'),
('Kasimir', 'Braun', '326 - 4th suit forcing', '326', 506, 14, 11, '2014-12-13', '2100-01-01'),
('Braun', 'Braun', '', '334', 507, 11, 11, '2014-12-14', '2100-01-01'),
('Braun', 'Braun', '', '336', 508, 11, 11, '2014-12-15', '2100-01-01'),
('Braun', 'Braun', '', '338', 509, 11, 11, '2014-12-16', '2100-01-01'),
('Roth', 'Braun', '340 - Inverted Minors', '340', 510, 12, 11, '2014-11-24', '2100-01-01'),
('Meckel', 'Braun', '342 - Overcalls after a weak two', '342', 511, 13, 11, '2014-12-10', '2100-01-01'),
('Linde', 'Braun', '', '344', 512, 15, 11, '2015-02-16', '2100-01-01'),
('Linde', 'Braun', '', '351', 513, 15, 11, '2015-02-17', '2100-01-01'),
('Braun', 'Braun', '', '352', 514, 11, 11, '2015-02-16', '2100-01-01'),
('Braun', 'Braun', '', '353', 515, 11, 11, '2015-02-17', '2100-01-01'),
('Braun', 'Braun', '', '357', 516, 11, 11, '2015-02-18', '2100-01-01'),
('Roth', 'Braun', '360 - Jacoby 2NT', '360', 517, 12, 11, '2014-12-13', '2100-01-01'),
('Alv', 'Braun', '', '365', 518, 10, 11, '2015-02-15', '2100-01-01'),
('Alv', 'Braun', '', '371', 519, 10, 11, '2015-02-16', '2100-01-01'),
('Braun', 'Braun', '', '386', 520, 11, 11, '2015-02-26', '2100-01-01'),
('Braun', 'Braun', '', '387', 521, 11, 11, '2015-03-29', '2100-01-01'),
('Braun', 'Braun', '', '388', 522, 11, 11, '2015-03-30', '2100-01-01'),
('Braun', 'Braun', '', '417', 523, 11, 11, '2015-01-28', '2100-01-01'),
('Braun', 'Braun', '', '419', 524, 11, 11, '2015-01-19', '2100-01-01'),
('M. Gromöller', 'M. Gromöller', '430 Forum D PLUS - Weiterreizung nach NT - Michael Gromöller', '430', 525, 16, 16, '2013-04-06', '2100-01-01'),
('Braun', 'Braun', '', '432', 526, 11, 11, '2014-12-21', '2100-01-01'),
('Braun', 'Braun', '', '433', 527, 11, 11, '2015-01-19', '2100-01-01'),
('Braun', 'Braun', '', '434', 528, 11, 11, '2015-02-08', '2100-01-01'),
('Linde', 'Linde', '', '435', 529, 15, 15, '2015-01-17', '2100-01-01'),
('Braun', 'Braun', '', '436', 530, 11, 11, '2014-12-14', '2100-01-01'),
('Braun', 'Braun', '', '439', 531, 11, 11, '2014-12-15', '2100-01-01'),
('Roth', 'Roth', '440 Inverted Minors', '440', 532, 12, 12, '2014-11-24', '2100-01-01'),
('Roth', 'Roth', '', '441', 533, 12, 12, '2015-04-14', '2100-01-01'),
('Linde', 'Linde', '', '444', 534, 15, 15, '2015-01-30', '2100-01-01'),
('Braun', 'Braun', '', '448', 535, 11, 11, '2015-01-19', '2100-01-01'),
('Braun', 'Braun', '', '449', 536, 11, 11, '2015-01-19', '2100-01-01'),
('Linde', 'Linde', '', '451', 537, 15, 15, '2015-01-30', '2100-01-01'),
('Braun', 'Braun', '', '452', 538, 11, 11, '2015-03-06', '2100-01-01'),
('Braun', 'Braun', '', '453', 539, 11, 11, '2015-01-28', '2100-01-01'),
('Braun', 'Braun', '', '454', 540, 11, 11, '2015-01-19', '2100-01-01'),
('Boldt', 'Boldt', '', '460', 541, 19, 19, '2015-01-29', '2100-01-01'),
('Braun', 'Braun', '', '461', 542, 11, 11, '2015-01-19', '2100-01-01'),
('Braun', 'Braun', '', '462', 543, 11, 11, '2015-01-20', '2100-01-01'),
('Braun', 'Braun', '', '463', 544, 11, 11, '2015-03-06', '2100-01-01'),
('Alv', 'Alv', 'Multi', '471', 545, 10, 10, '2014-01-01', '2100-01-01'),
('Braun', 'Braun', '', '472', 546, 11, 11, '2015-01-26', '2100-01-01'),
('Roth', 'Roth', '', '481', 547, 12, 12, '2015-02-02', '2100-01-01'),
('Meckel', 'Meckel', '', '491', 548, 13, 13, '2015-02-02', '2100-01-01'),
('Alv', 'Alv', '501 Forum D 2012 - Eröffnungen', '501', 549, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '502 - Benjamin - Semi- und Partieforcing Eröffnungen', '502', 550, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', '504 - Forum D 2012  - Farberöffnungen und Antworten', '504', 551, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Alv', '505 - FORUM D 2012 - Reizung – EÖ und Antwort', '505', 552, 10, 10, '2014-01-04', '2100-01-01'),
('Alv', 'Alv', '506 - Forum D 2012 - NT-Eröffnungen', '506', 553, 10, 10, '2014-01-05', '2100-01-01'),
('Alv', 'Alv', '507 - Forum D 2012  - NT-Eröffnungen und Antwort', '507', 554, 10, 10, '2014-01-06', '2100-01-01'),
('Alv', 'Alv', '508 - FORUM D 2012 - Eröffnung-Antwort und erstes Rebid', '508', 555, 10, 10, '2014-01-07', '2100-01-01'),
('Alv', 'Alv', '509 - FORUM D 2012  - Eröffnung-Antwort-Erstes Rebid - Diagramm', '509', 556, 10, 10, '2014-01-08', '2100-01-01'),
('Alv', 'Alv', '510 Forum D 2012 -. Die zweite Antwort des Responders - Hand', '510', 557, 10, 10, '2014-01-09', '2100-01-01'),
('Alv', 'Alv', '511 Forum D 2012 - Das zweite Gebot des Antwortenden - Diagramm', '511', 558, 10, 10, '2014-01-10', '2100-01-01'),
('Alv', 'Alv', '512 - Gegenreizung - Hand', '512', 559, 10, 10, '2014-01-11', '2100-01-01'),
('Alv', 'Alv', '514 - Antwort nach Zwischenreizung auf 1er-Stufe', '514', 560, 10, 10, '2014-01-12', '2100-01-01'),
('Alv', 'Alv', '515 - Wiedergebot des Eröffners nach Zwischenreizung des Gegners auf 1er-Stufe', '515', 561, 10, 10, '2014-01-13', '2100-01-01'),
('Alv', 'Alv', '518 Zweite Ansage des Antwortenden nach 1NT-Eröffnung', '518', 562, 10, 10, '2014-01-14', '2100-01-01'),
('Roth', 'Roth', '520 - Help Suit Trial Bid', '520', 563, 12, 12, '2013-09-12', '2100-01-01'),
('Meckel', 'Meckel', '521 - Long Suit Trial Bids', '521', 564, 13, 13, '2014-12-14', '2100-01-01'),
('Meckel', 'Meckel', '522 - Short Suit Trial Bids', '522', 565, 13, 13, '2014-11-24', '2100-01-01'),
('Gro', 'Gro', '530 - Weiterreizung nach 1NT', '530', 566, 16, 16, '2013-04-06', '2100-01-01'),
('Roth', 'Roth', '531 - FD 2012 – Zweites Gebot des NT-Eröffners', '531', 567, 12, 12, '2013-09-11', '2100-01-01'),
('Linde', 'Linde', '541 - Negativ Kontra 1erStufe', '541', 568, 15, 15, '2014-08-15', '2100-01-01'),
('Meckel', 'Meckel', '542 - Gegenreizung nach Weak Twos', '542', 569, 13, 13, '2014-12-10', '2100-01-01'),
('Linde', 'Linde', '', '545', 570, 15, 15, '2015-05-14', '2100-01-01'),
('Braun', 'Braun', '546 - Support-Kontra und –Rekontra', '546', 571, 11, 11, '2014-10-21', '2100-01-01'),
('Braun', 'Braun', 'Landy', '551', 572, 11, 11, '2015-10-01', '2100-01-01'),
('Braun', 'Braun', '', '552', 573, 11, 11, '2015-01-05', '2100-01-01'),
('Roth', 'Roth', '554 - Gegenreizung gegen 1NT - DONT', '554', 574, 12, 12, '2014-10-21', '2100-01-01'),
('Braun', 'Braun', '', '557', 575, 11, 11, '2015-03-15', '2100-01-01'),
('Braun', 'Braun', 'Lionel', '558', 576, 11, 11, '2015-09-28', '2100-01-01'),
('Braun', 'Braun', 'Astro', '559', 577, 11, 11, '2015-10-15', '2100-01-01'),
('Linde', 'Linde', '', '560', 578, 15, 15, '2015-06-14', '2100-01-01'),
('Alv', 'Alv', '701 - Better Minor  - Eröffnungen', '701', 579, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '704 - Better Minor - Farberöffnung und die Antworten - Hand', '704', 580, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', '705 - BETTER MINOR  - Reizung – EÖ und Antwort', '705', 581, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Alv', '708 - Better Minor - Eröffnung-Antwort-Erstes Rebid', '708', 582, 10, 10, '2014-01-04', '2100-01-01'),
('Alv', 'Alv', '709 - Better Minor  - Farberöffnung - Antwort - Erstes Rebid - Diagramm', '709', 583, 10, 10, '2014-01-05', '2100-01-01'),
('Alv', 'Alv', '801 - Better Minor - Opening', '801', 584, 10, 10, '2014-01-06', '2100-01-01'),
('Alv', 'Alv', '804 Better Minor - engl - Opening and response_HAND', '804', 585, 10, 10, '2014-01-07', '2100-01-01'),
('Alv', 'Braun', '805 Better Minor - engl - Opening and response_diagram', '805', 586, 10, 11, '2015-05-22', '2100-01-01'),
('Alv', 'Alv', '1101 - 2over1 - Eroeffnungen', '1101', 587, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '1104 - 2over1 - Antworten auf Eroeffnungen - Hand', '1104', 588, 10, 10, '2014-01-02', '2100-01-01'),
('Braun', 'Braun', '2over1', '1108', 589, 11, 11, '2015-09-27', '2100-01-01'),
('Braun', 'Braun', '2over1', '1109', 590, 11, 11, '2015-09-27', '2100-01-01'),
('Braun', 'Braun', '2over1', '1110', 591, 11, 11, '2015-09-17', '2100-01-01'),
('Braun', 'Braun', '2over1', '1111', 592, 11, 11, '2015-09-18', '2100-01-01'),
('Alv', 'Braun', '1201 - 2over1 openings', '1201', 593, 10, 11, '2014-12-13', '2100-01-01'),
('Alv', 'Braun', '1204 2over1 -– Opening bids and responses', '1204', 594, 10, 11, '2014-11-24', '2100-01-01'),
('Braun', 'Maaß', '2over1', '1205', 595, 11, 21, '1977-07-02', '2100-01-01'),
('Alv', 'Alv', 'Precision', '1301', 596, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', 'Precision', '1302', 597, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', 'Precision', '1304', 598, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Alv', '1400 ACOL - Startset', '1400', 599, 10, 10, '2014-01-04', '2100-01-01'),
('Alv', 'Alv', '1401 ACOL (weak two) - opening bids', '1401', 600, 10, 10, '2014-01-05', '2100-01-01'),
('Alv', 'Alv', '1404 ACOL (weak two\'s) - opening bids of one of a suit and response - hand', '1404', 601, 10, 10, '2014-01-06', '2100-01-01'),
('Alv', 'Alv', '1405 ACOL (weak two\'s) - opening bids of one of a suit and response - diagram', '1405', 602, 10, 10, '2014-01-07', '2100-01-01'),
('Alv', 'Alv', '1408 ACOL (weak twos) - First rebid - Hand', '1408', 603, 10, 10, '2014-01-08', '2100-01-01'),
('Alv', 'Alv', '1409 ACOL (weak twos) - First rebid - diagram', '1409', 604, 10, 10, '2014-01-09', '2100-01-01'),
('Alv', 'Alv', '1501 ACOL strong twos - opening bids  - hand', '1501', 605, 10, 10, '2014-01-10', '2100-01-01'),
('Alv', 'Alv', '1504 ACOL strong twos - Opening and response', '1504', 606, 10, 10, '2014-01-11', '2100-01-01'),
('Alv', 'Alv', '1505 ACOL strong twos - Opening and response - diagram', '1505', 607, 10, 10, '2014-01-12', '2100-01-01'),
('Alv', 'Alv', '1508 ACOL strong twos - opening_response_rebid - hand', '1508', 608, 10, 10, '2014-01-13', '2100-01-01'),
('Alv', 'Alv', '1509 ACOL (strong twos) - opening_response_rebid - diagram', '1509', 609, 10, 10, '2014-01-14', '2100-01-01'),
('Alv', 'Alv', '1601 ACOL Benji - opening bids  - hand', '1601', 610, 10, 10, '2014-01-15', '2100-01-01'),
('Alv', 'Alv', '1604 ACOL - Benji-Opening and response', '1604', 611, 10, 10, '2014-01-16', '2100-01-01'),
('Alv', 'Alv', '1605 ACOL Benji - Opening and response - diagram', '1605', 612, 10, 10, '2014-01-17', '2100-01-01'),
('Alv', 'Alv', '1608 ACOL Benji – - Opening_response_rebid - hand', '1608', 613, 10, 10, '2014-01-18', '2100-01-01'),
('Alv', 'Alv', '1609 ACOL Benji – - Opening_response_rebid - diagram', '1609', 614, 10, 10, '2014-01-19', '2100-01-01'),
('Alv', 'Alv', '2008 Acol (2er EÖ weak two) - ERSTES REBID - Hand', '2008', 615, 10, 10, '2014-01-20', '2100-01-01'),
('Alv', 'Alv', '2009 Acol (2er EÖ weak two) - ERSTES REBID - Diagramm', '2009', 616, 10, 10, '2014-01-21', '2100-01-01'),
('Alv', 'Alv', '2101 ACOL (2er EÖ stark) - Eröffnungen', '2101', 617, 10, 10, '2014-01-22', '2100-01-01'),
('Alv', 'Alv', '2104 Acol (2er EÖ stark) - Antworten auf Farberöffnungen - Deutsch', '2104', 618, 10, 10, '2014-01-23', '2100-01-01'),
('Alv', 'Alv', '2108 Acol (2er EÖ stark) - ERSTES REBID - Hand', '2108', 619, 10, 10, '2014-01-24', '2100-01-01'),
('Alv', 'Alv', '2109 Acol (2er EÖ stark) - ERSTES REBID - Diagramm', '2109', 620, 10, 10, '2014-01-25', '2100-01-01'),
('Alv', 'Alv', '2208 Acol (Benji) - ERSTES REBID - Hand', '2208', 621, 10, 10, '2014-01-26', '2100-01-01'),
('Alv', 'Alv', '2209 Acol (Benji) - ERSTES REBID - Diagramm', '2209', 622, 10, 10, '2014-01-27', '2100-01-01'),
('Alv', 'Silva', '3016 SAYC  Aberturas', '3016', 623, 10, 24, '2014-04-15', '2100-01-01'),
('Alv', 'Silva', '3046 SAYC – Aberturas e respostas', '3046', 624, 10, 24, '2014-04-16', '2100-01-01'),
('Alv', 'Tavlan', '3047 SAYC –Açılış ve 1. cevap elleri', '3047', 625, 10, 54, '2014-04-09', '2100-01-01'),
('Alv', 'Silva', '3056 SAYC diagrama de aberturas e respostas', '3056', 626, 10, 24, '2013-07-16', '2100-01-01'),
('Alv', 'Tavlan', '3057 SAYC Açılışlar ve cevaplar_diagram', '3057', 627, 10, 54, '2013-10-10', '2100-01-01'),
('Alv', 'Silva', '3086 SAYC Segunda voz do abridor', '3086', 628, 10, 24, '2013-08-19', '2100-01-01'),
('Alv', 'Tavlan', '3087 SAYC – Açanın 1. rebidi', '3087', 629, 10, 54, '2014-05-15', '2100-01-01'),
('Alv', 'Silva', '3096 SAYC Segunda voz_diagrama', '3096', 630, 10, 24, '2013-08-19', '2100-01-01'),
('Alv', 'Alv', 'Forum Alv', '3301', 631, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', 'Forum Alv', '3304', 632, 10, 10, '2014-01-02', '2100-01-01'),
('Dirksen', 'Dirksen', '4001 - Biedermeijer groen - Openingen', '4001', 633, 18, 18, '2014-03-02', '2100-01-01'),
('Dirksen', 'Dirksen', '4004 - Biedermeijer groen - Antwoord Opening', '4004', 634, 18, 18, '2014-03-03', '2100-01-01'),
('Dirksen', 'Dirksen', '4005 - Biedermeijer groen - Antwoord Opening - vragen', '4005', 635, 18, 18, '2014-03-04', '2100-01-01'),
('Dirksen', 'Dirksen', '4006 - Biedermeijer groen - Antwoord 1SA/2SA Opening', '4006', 636, 18, 18, '2014-03-05', '2100-01-01'),
('Dirksen', 'Dirksen', '4007 - Biedermeijer groen - Antwoord 1SA/2SA Opening - Vragen', '4007', 637, 18, 18, '2014-03-06', '2100-01-01'),
('Dirksen', 'Dirksen', '4008 - Biedermeijer groen - Rebid Openaar', '4008', 638, 18, 18, '2014-03-07', '2100-01-01'),
('Dirksen', 'Dirksen', '4009 - Biedermeijer groen - Rebid Openaar - Vragen', '4009', 639, 18, 18, '2014-03-08', '2100-01-01'),
('Alv', 'Alv', '10001 - RKCB 3041 Ass-Frage - Deutsch', '10001', 640, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '', '10002', 641, 10, 10, '2014-01-02', '2100-01-01'),
('Roth', 'Roth', '10004 - DOPI-ROPI', '10004', 642, 12, 12, '2014-10-22', '2100-01-01'),
('Roth', 'Roth', '10006 - Splinter', '10006', 643, 12, 12, '2014-11-17', '2100-01-01'),
('Roth', 'Roth', 'Gerber', '10008', 644, 12, 12, '2014-12-06', '2100-01-01'),
('Roth', 'Roth', 'Exclusion KC', '10009', 645, 12, 12, '2014-12-10', '2100-01-01'),
('Roth', 'Roth', 'Schlemm - diverses', '10010', 646, 12, 12, '2014-12-11', '2100-01-01'),
('Braun', 'Braun', 'Komp Reizung', '10015', 647, 11, 11, '2015-09-28', '2100-01-01'),
('Alv', 'Alv', '10021 - Michaels Cuebid - Zweifärbergegenreizung', '10021', 648, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '', '10022', 649, 10, 10, '2014-01-02', '2100-01-01'),
('Braun', 'Braun', 'Michaels Präzis', '10024', 650, 11, 11, '2015-09-28', '2100-01-01'),
('Kasimir', 'Kasimir', '10031 - 4. Farbe forcing', '10031', 651, 14, 14, '2013-08-15', '2100-01-01'),
('Roth', 'Roth', '10041 - Puppet Stayman', '10041', 652, 12, 12, '2014-07-20', '2100-01-01'),
('Boldt', 'Boldt', '10046 - Relaistransfer', '10046', 653, 19, 19, '2013-04-18', '2100-01-01'),
('Braun', 'Braun', 'Magister', '10047', 654, 11, 11, '2015-09-25', '2100-01-01'),
('Braun', 'Braun', '2wayCB', '10048', 655, 11, 11, '2015-09-25', '2100-01-01'),
('Alv', 'Alv', '10049 - Antworten auf Informationskontra', '10049', 656, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '10050 Informationskontra - Forum D (Basis und 2012)', '10050', 657, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', '10051 RKCB English', '10051', 658, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Braun', '', '10052', 659, 10, 11, '2015-02-26', '2100-01-01'),
('Roth', 'Roth', '10060 Jacoby 2NT nach 1 in OF', '10060', 660, 12, 12, '2013-09-26', '2100-01-01'),
('Alv', 'Alv', '10065 Bergen Hebungen', '10065', 661, 10, 10, '2014-01-01', '2100-01-01'),
('Braun', 'Braun', '', '10069', 662, 11, 11, '2015-03-08', '2100-01-01'),
('Roth', 'Roth', '10070 - Kontras Allgemein', '10070', 663, 12, 12, '2014-07-04', '2100-01-01'),
('Alv', 'Braun', '10071 - Michaels Cuebid', '10071', 664, 10, 11, '2014-11-11', '2100-01-01'),
('Meckel', 'Meckel', '', '10082', 665, 13, 13, '2015-03-21', '2100-01-01'),
('FZ', 'FZ', '', '10085', 666, 55, 55, '2015-09-18', '2100-01-01'),
('Braun', 'Braun', 'Fryklund', '10087', 667, 11, 11, '2015-09-28', '2100-01-01'),
('Braun', 'Braun', '2wayCB_en', '10098', 668, 11, 11, '2015-10-15', '2100-01-01'),
('Alv', 'Braun', '10099 - Responding to a takeout double', '10099', 669, 10, 11, '2014-11-11', '2100-01-01'),
('Boldt', 'Braun', '', '10161', 670, 19, 11, '2015-02-15', '2100-01-01'),
('Braun', 'Braun', '', '10169', 671, 11, 11, '2015-05-22', '2100-01-01'),
('Alv', 'Alv', '20001 - Ausspiele für Anfaenger', '20001', 672, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '', '20002', 673, 10, 10, '2014-01-02', '2100-01-01'),
('Roth', 'Roth', '20015 - Spieltechnik - Farbbehandlung', '20015', 674, 12, 12, '2015-02-15', '2100-01-01'),
('Rohowsky', 'Rohowsky', '20020 - Beherrsche die Farben 1 - Roland Rohowsky', '20020', 675, 23, 23, '2015-04-14', '2100-01-01'),
('Rohowsky', 'Rohowsky', '20021 - Beherrsche die Farben 2 - Roland Rohowsky', '20021', 676, 23, 23, '2015-04-15', '2100-01-01'),
('Rohowsky', 'Rohowsky', '20022 - Beherrsche die Farben 3 - Roland Rohowsky', '20022', 677, 23, 23, '2015-04-16', '2100-01-01'),
('Rohowsky', 'Rohowsky', '20023 - Beherrsche die Farben 4 - Roland Rohowsky', '20023', 678, 23, 23, '2015-04-17', '2100-01-01'),
('Rohowsky', 'Rohowsky', '20030 - Alleinspiel Spielplan - R. Rohowsky', '20030', 679, 23, 23, '2015-05-11', '2100-01-01'),
('W. Gromöller', 'W. Gromöller', '20050 - Alleinspiel Spielplan I - W. Gromoeller', '20050', 680, 22, 22, '2014-05-24', '2100-01-01'),
('W. Gromöller', 'W. Gromöller', '20051 - Alleinspiel Spielplan II - W. Gromoeller', '20051', 681, 22, 22, '2014-05-25', '2100-01-01'),
('W. Gromöller', 'W. Gromöller', 'Assumption', '20052', 682, 22, 22, '2014-09-20', '2100-01-01'),
('Rohowsky', 'Braun', '20070 - Suit Combinations 1', '20070', 683, 23, 11, '2014-11-24', '2100-01-01'),
('Rohowsky', 'Braun', '20071 - Suit Combinations 2', '20071', 684, 23, 11, '2014-11-25', '2100-01-01'),
('Rohowsky', 'Braun', '20072 - Suit Combinations 3', '20072', 685, 23, 11, '2014-11-26', '2100-01-01'),
('Rohowsky', 'Braun', '20073 - Suit Combinations 4', '20073', 686, 23, 11, '2014-11-27', '2100-01-01'),
('Güttler', 'Güttler', 'Spielstiche zählen', '20101', 687, 53, 53, '2015-06-20', '2100-01-01'),
('Alv', 'Alv', '4000_NL ACOL Startset', '4000_nl', 688, 10, 10, '2014-04-01', '2100-01-01'),
('Alv', 'Alv', '', '451MIN1', 689, 10, 10, '2014-01-01', '2100-01-01'),
('Alv', 'Alv', '', '4MAX1', 690, 10, 10, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', '', '4MAX2', 691, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Alv', '', '4MAX3', 692, 10, 10, '2014-01-04', '2100-01-01'),
('Alv', 'Alv', 'Forum D 2012 - Änderungen gegenüber der Basisversion - Eröffnungen', '501_0', 693, 10, 10, '2014-01-05', '2100-01-01'),
('Alv', 'Alv', '510APTZ - Zweites Gebot des Antwortenden – - Hände und Diagramm - Forum D 2012', '510APTZ', 694, 10, 10, '2014-01-06', '2100-01-01'),
('Alv', 'Alv', '510MAX - Zweites Gebot des Antwortenden – - Hände und Diagramm', '510MAX', 695, 10, 10, '2014-01-07', '2100-01-01'),
('Alv', 'Alv', '512APTZ - Gegenreizung inklusive Informationskontra', '512APTZ', 696, 10, 10, '2014-01-08', '2100-01-01'),
('Alv', 'Alv', '512MAX - Gegenreizung inklusive Informationskontra', '512MAX', 697, 10, 10, '2014-01-09', '2100-01-01'),
('Alv', 'Alv', '513APTZ - Info-X und Antworten auf Info-X - Forum D', '513APTZ', 698, 10, 10, '2014-01-10', '2100-01-01'),
('Alv', 'Alv', '513MAX - Info-X und Antworten auf Info-X - Forum D', '513MAX', 699, 10, 10, '2014-01-11', '2100-01-01'),
('Alv', 'Alv', '514APTZ - Antwort nach Zwischenreizung und Rebid des Eröffners', '514APTZ', 700, 10, 10, '2014-01-12', '2100-01-01'),
('Alv', 'Alv', '514MAX - Antwort nach Zwischenreizung und Rebid', '514MAX', 701, 10, 10, '2014-01-13', '2100-01-01'),
('Alv', 'Alv', '5M40 Forum D 2012 - Appetizer', '5M40', 702, 10, 10, '2014-01-14', '2100-01-01'),
('Maaß', 'Maaß', 'A5 - Wörterbuch Englisch - Deutsch', 'A5', 703, 21, 21, '2014-01-15', '2100-01-01'),
('Piekarek', 'Piekarek', '', 'FP1', 704, 20, 20, '2014-12-04', '2100-01-01'),
('Piekarek', 'Piekarek', 'FP10 - Forum Piekarek -– Zweites Gebot des Antwortenden', 'FP10', 705, 20, 20, '2014-10-03', '2100-01-01'),
('Braun', 'Braun', '', 'FP11', 706, 11, 11, '2015-05-21', '2100-01-01'),
('Braun', 'Braun', '', 'FP15', 707, 11, 11, '2015-05-22', '2100-01-01'),
('Braun', 'Braun', '', 'FP18', 708, 11, 11, '2015-05-23', '2100-01-01'),
('Alv', 'Alv', '', 'FP2', 709, 10, 10, '2014-12-04', '2100-01-01'),
('Braun', 'Braun', '', 'FP30', 710, 11, 11, '2015-05-25', '2100-01-01'),
('Piekarek', 'Piekarek', 'FP6 - NT-Eröffnungen', 'FP6', 711, 20, 20, '2014-09-18', '2100-01-01'),
('Piekarek', 'Piekarek', 'FP7 - Forum Piekarek –- Antwort auf NT-Eröffnungen', 'FP7', 712, 20, 20, '2014-10-01', '2100-01-01'),
('Braun', 'Braun', '', 'FP8', 713, 11, 11, '2015-05-24', '2100-01-01'),
('Alv', 'Alv', '', 'FP9', 714, 10, 10, '2014-12-20', '2100-01-01'),
('Alv', 'Silva', '', '801PT', 715, 10, 24, '2014-03-05', '2100-01-01'),
('Alv', 'Silva', '', '805PT', 716, 10, 24, '2014-03-06', '2100-01-01'),
('Roth', 'Roth', 'Anschriften', 'G2', 717, 12, 12, '2014-10-08', '2100-01-01'),
('Maaß', 'Maaß', 'M1 - Der Anfang', 'M1', 718, 21, 21, '2014-01-01', '2100-01-01'),
('Maaß', 'Maaß', '', 'M2', 719, 21, 21, '2014-01-02', '2100-01-01'),
('Maaß', 'Maaß', 'R0 - Allgemein - Der Startsatz', 'R0', 720, 21, 21, '2014-01-03', '2100-01-01'),
('Maaß', 'Maaß', 'R1 - Eröffnungen - Forum D Basis', 'R1', 721, 21, 21, '2014-01-04', '2100-01-01'),
('Alv', 'Alv', 'R10 - FD Basis – Zweites Gebot des Antwortenden', 'R10', 722, 10, 10, '2014-01-05', '2100-01-01'),
('Alv', 'Alv', 'R11 Forum D Basis - Das zweite Gebot des Antwortenden - Diagramm', 'R11', 723, 10, 10, '2014-01-06', '2100-01-01'),
('Alv', 'Alv', 'R14 - Antwort nach Zwischenreizung auf 1er-Stufe', 'R14', 724, 10, 10, '2014-01-07', '2100-01-01'),
('Alv', 'Alv', 'R15 - Wiedergebot des Eröffners nach Zwischenreizung des Gegners auf 1er-Stufe', 'R15', 725, 10, 10, '2014-01-08', '2100-01-01'),
('Alv', 'Alv', 'R18 - Forum D Basis - 2. Ansage des Antwortenden nach 1NT-Eröffnung', 'R18', 726, 10, 10, '2014-01-09', '2100-01-01'),
('Alv', 'Alv', 'R30 - Forum D BASIS - Weiterreizung nach 1NT', 'R30', 727, 10, 10, '2014-01-10', '2100-01-01'),
('Roth', 'Roth', 'R31 - FD Basis - Wiedergebot des EÖ nach NT', 'R31', 728, 12, 12, '2013-10-09', '2100-01-01'),
('Maaß', 'Maaß', '', 'R4', 729, 21, 21, '2014-01-01', '2100-01-01'),
('Maaß', 'Maaß', '', 'R5', 730, 21, 21, '2014-01-02', '2100-01-01'),
('Alv', 'Alv', '', 'R6', 731, 10, 10, '2014-01-03', '2100-01-01'),
('Alv', 'Alv', '', 'R7', 732, 10, 10, '2014-01-04', '2100-01-01'),
('Maaß', 'Maaß', '', 'R8', 733, 21, 21, '2014-01-05', '2100-01-01'),
('Maaß', 'Maaß', '', 'R9', 734, 21, 21, '2014-01-06', '2100-01-01'),
('Alv', 'Alv', '', 'R6R7APTZ', 735, 10, 10, '2014-01-07', '2100-01-01'),
('Alv', 'Alv', '', 'R6R7MAX', 736, 10, 10, '2014-01-08', '2100-01-01'),
('Alv', 'Alv', '', 'RM40', 737, 10, 10, '2014-01-09', '2100-01-01'),
('Braun', 'Marie Eggeling', '2over1', '1208', 738, 11, 17, '2015-10-01', '2100-01-01'),
('Braun', 'Marie Eggeling', '2over1', '1209', 739, 11, 17, '2015-10-02', '2100-01-01'),
('Braun', 'Marie Eggeling', '2over1', '1210', 740, 11, 17, '2015-10-03', '2100-01-01'),
('Braun', 'Marie Eggeling', '2over1', '1211', 741, 11, 17, '2015-10-04', '2100-01-01'),
('FZ', 'Marie Eggeling', 'Ekren_en', '10185', 742, 55, 17, '2015-09-30', '2100-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `email`) VALUES
(1, 'strawberryJulius', '7e03cf2cbfb13d38ee3cbe90a53a1822f6d9450b574463c79755b652a66d56b2', '3785086610759ae6', 'gregxx77@yahoo.de'),
(2, 'klaus', 'eeabf88d8201dc56b2e01c1bdf81368c92f5b9824e24a8cfa3c059b05804ea97', '3611dd693f274a1f', 'post@bridgeverein.de'),
(4, 'greg', 'c892487ac05f5a030b6dbeae8222e530e53b24e1c437f03ceae4a931352543dd', '4507edffa74659e', 'gregorioxx77@yahoo.de');

-- --------------------------------------------------------

--
-- Structure for view `$letzterechnung`
--
DROP TABLE IF EXISTS `$letzterechnung`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `$letzterechnung`  AS SELECT `die_bestellung`.`bId` AS `bId`, `die_bestellung`.`datum` AS `datum`, `die_bestellung`.`kId2` AS `kId2`, `die_bestellung`.`rechnungsNummer` AS `rechnungsNummer`, `der_kunde`.`kId` AS `kId`, `der_kunde`.`institution` AS `institution`, `der_kunde`.`titel` AS `titel`, `der_kunde`.`vorname` AS `vorname`, `der_kunde`.`name` AS `name`, `der_kunde`.`strasse` AS `strasse`, `der_kunde`.`plz` AS `plz`, `der_kunde`.`ort` AS `ort`, `der_kunde`.`mw` AS `mw`, `der_kunde`.`mob` AS `mob`, `der_kunde`.`tel` AS `tel`, `der_kunde`.`email` AS `email` FROM (`bestellung` `die_bestellung` join `kunden` `der_kunde` on((`die_bestellung`.`kId2` = `der_kunde`.`kId`))) ORDER BY `die_bestellung`.`datum` DESC LIMIT 0, 2020 ;

-- --------------------------------------------------------

--
-- Structure for view `appleBridgeDoddle`
--
DROP TABLE IF EXISTS `appleBridgeDoddle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `appleBridgeDoddle`  AS SELECT `a`.`id` AS `id`, `a`.`beginDate` AS `beginDate`, `a`.`endDate` AS `endDate`, `a`.`developerProceeds` AS `developerProceeds`, `a`.`units` AS `units`, `a`.`sku` AS `sku`, `a`.`currencyOfProceeds` AS `currencyOfProceeds`, `c`.`value` AS `value` FROM (`appledaten` `a` join `currency` `c` on((`a`.`currencyOfProceeds` = `c`.`currency`))) WHERE ((`a`.`sku` = '1') AND (`a`.`beginDate` >= '2013-01-01') AND (`a`.`beginDate` <= '2015-12-31'))) ;

-- --------------------------------------------------------

--
-- Structure for view `appleFlatratesabo`
--
DROP TABLE IF EXISTS `appleFlatratesabo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `appleFlatratesabo`  AS SELECT `a`.`id` AS `id`, `a`.`beginDate` AS `beginDate`, `a`.`endDate` AS `endDate`, `a`.`developerProceeds` AS `developerProceeds`, `a`.`units` AS `units`, `a`.`sku` AS `sku`, `a`.`currencyOfProceeds` AS `currencyOfProceeds`, `c`.`value` AS `value` FROM (`appledaten` `a` join `currency` `c` on((`a`.`currencyOfProceeds` = `c`.`currency`))) WHERE ((`a`.`sku` = 'ALLINC') AND (`a`.`beginDate` >= '2013-01-01') AND (`a`.`beginDate` <= '2015-12-31'))) ;

-- --------------------------------------------------------

--
-- Structure for view `appleJahresabo`
--
DROP TABLE IF EXISTS `appleJahresabo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `appleJahresabo`  AS SELECT `a`.`id` AS `id`, `a`.`beginDate` AS `beginDate`, `a`.`endDate` AS `endDate`, `a`.`developerProceeds` AS `developerProceeds`, `a`.`units` AS `units`, `a`.`sku` AS `sku`, `a`.`currencyOfProceeds` AS `currencyOfProceeds`, `c`.`value` AS `value` FROM (`appledaten` `a` join `currency` `c` on((`a`.`currencyOfProceeds` = `c`.`currency`))) WHERE ((`a`.`sku` = 'ABO2') AND (`a`.`beginDate` >= '2013-01-01') AND (`a`.`beginDate` <= '2015-12-31'))) ;

-- --------------------------------------------------------

--
-- Structure for view `appleMonatsabo`
--
DROP TABLE IF EXISTS `appleMonatsabo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `appleMonatsabo`  AS SELECT `a`.`id` AS `id`, `a`.`beginDate` AS `beginDate`, `a`.`endDate` AS `endDate`, `a`.`developerProceeds` AS `developerProceeds`, `a`.`units` AS `units`, `a`.`sku` AS `sku`, `a`.`currencyOfProceeds` AS `currencyOfProceeds`, `c`.`value` AS `value` FROM (`appledaten` `a` join `currency` `c` on((`a`.`currencyOfProceeds` = `c`.`currency`))) WHERE ((`a`.`sku` = 'ABO1') AND (`a`.`beginDate` >= '2013-01-01') AND (`a`.`beginDate` <= '2015-12-31'))) ;

-- --------------------------------------------------------

--
-- Structure for view `appleSaetze`
--
DROP TABLE IF EXISTS `appleSaetze`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `appleSaetze`  AS SELECT `a`.`id` AS `id`, `a`.`beginDate` AS `beginDate`, `a`.`endDate` AS `endDate`, `a`.`developerProceeds` AS `developerProceeds`, `a`.`units` AS `units`, `a`.`currencyOfProceeds` AS `currencyOfProceeds`, `s`.`satzCode` AS `sku`, `s`.`satzName` AS `satzName`, `s`.`trId` AS `trId`, `s`.`atId` AS `atId`, `s`.`satzId` AS `satzId`, `c`.`value` AS `value` FROM ((`appledaten` `a` join `saetzeautoren` `s` on((`a`.`sku` = `s`.`satzCode`))) join `currency` `c` on((`a`.`currencyOfProceeds` = `c`.`currency`))) WHERE (((`s`.`atId` = 10) OR (`s`.`trId` = 10)) AND (`a`.`beginDate` >= '2013-01-01') AND (`a`.`beginDate` <= '2015-12-31'))) ;

-- --------------------------------------------------------

--
-- Structure for view `Ccustom`
--
DROP TABLE IF EXISTS `Ccustom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `Ccustom`  AS SELECT `b`.`bId` AS `bId`, `b`.`datum` AS `datum`, `b`.`kId2` AS `kId2`, `b`.`rechnungsNummer` AS `rechnungsNummer`, `b`.`rl` AS `rl`, `b`.`preislisteName` AS `preislisteName`, `b`.`item_1` AS `item_1`, `b`.`item_2` AS `item_2`, `b`.`item_3` AS `item_3`, `b`.`item_4` AS `item_4`, `b`.`item_5` AS `item_5`, `b`.`item_6` AS `item_6`, `b`.`item_7` AS `item_7`, `b`.`item_8` AS `item_8`, `b`.`item_9` AS `item_9`, `b`.`item_10` AS `item_10`, `b`.`item_11` AS `item_11`, `b`.`item_12` AS `item_12`, `b`.`item_13` AS `item_13`, `b`.`item_14` AS `item_14`, `b`.`item_15` AS `item_15`, `b`.`item_16` AS `item_16`, `b`.`item_17` AS `item_17`, `b`.`item_18` AS `item_18`, `b`.`item_19` AS `item_19`, `b`.`item_20` AS `item_20`, `b`.`item_21` AS `item_21`, `b`.`item_22` AS `item_22`, `b`.`item_23` AS `item_23`, `b`.`item_24` AS `item_24`, `b`.`item_25` AS `item_25`, `b`.`item_26` AS `item_26`, `b`.`item_27` AS `item_27`, `b`.`item_28` AS `item_28`, `b`.`item_29` AS `item_29`, `b`.`item_30` AS `item_30`, `b`.`item_31` AS `item_31`, `b`.`item_32` AS `item_32`, `b`.`item_33` AS `item_33`, `b`.`item_34` AS `item_34`, `b`.`item_35` AS `item_35`, `b`.`item_36` AS `item_36`, `b`.`item_37` AS `item_37`, `b`.`item_38` AS `item_38`, `b`.`item_39` AS `item_39`, `b`.`item_40` AS `item_40`, `b`.`item_41` AS `item_41`, `b`.`item_42` AS `item_42`, `b`.`item_43` AS `item_43`, `b`.`item_44` AS `item_44`, `b`.`item_45` AS `item_45`, `b`.`item_46` AS `item_46`, `b`.`item_47` AS `item_47`, `b`.`item_48` AS `item_48`, `b`.`item_49` AS `item_49`, `b`.`stat` AS `stat`, `b`.`porto` AS `porto`, `b`.`preis` AS `preis`, `b`.`buecher` AS `buecher`, `b`.`portoGewuenscht` AS `portoGewuenscht`, `l`.`lrName` AS `lrName`, `p`.`preisName` AS `preisName` FROM ((`bestellung` `b` join `lr` `l` on((`b`.`rl` = `l`.`lrId`))) join `preis` `p` on((`b`.`preislisteName` = `p`.`preisId`))) WHERE (`b`.`bId` = 1234)) ;

-- --------------------------------------------------------

--
-- Structure for view `googleBridgeDoddleNoRefund`
--
DROP TABLE IF EXISTS `googleBridgeDoddleNoRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleBridgeDoddleNoRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = '') AND (`p`.`refund` = '') AND (`p`.`date` between cast('2015-12-31' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleBridgeDoddleRefund`
--
DROP TABLE IF EXISTS `googleBridgeDoddleRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleBridgeDoddleRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = '') AND (`p`.`refund` = 'FULL') AND (`p`.`date` between cast('2015-12-31' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleFlatratesaboNoRefund`
--
DROP TABLE IF EXISTS `googleFlatratesaboNoRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleFlatratesaboNoRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = 'ALLINC') AND (`p`.`refund` = '') AND (`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleFlatratesaboRefund`
--
DROP TABLE IF EXISTS `googleFlatratesaboRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleFlatratesaboRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = 'ALLINC') AND (`p`.`refund` = 'FULL') AND (`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleJahresaboNoRefund`
--
DROP TABLE IF EXISTS `googleJahresaboNoRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleJahresaboNoRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = 'ABO2') AND (`p`.`refund` = '') AND (`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleJahresaboRefund`
--
DROP TABLE IF EXISTS `googleJahresaboRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleJahresaboRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = 'ABO2') AND (`p`.`refund` = 'FULL') AND (`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleMonatsaboNoRefund`
--
DROP TABLE IF EXISTS `googleMonatsaboNoRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleMonatsaboNoRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = 'ABO1') AND (`p`.`refund` = '') AND (`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleMonatsaboRefund`
--
DROP TABLE IF EXISTS `googleMonatsaboRefund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleMonatsaboRefund`  AS SELECT `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`skuId` AS `skuId` FROM `playapps` AS `p` WHERE ((`p`.`skuId` = 'ABO1') AND (`p`.`refund` = 'FULL') AND (`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)))) ;

-- --------------------------------------------------------

--
-- Structure for view `googleSaetze`
--
DROP TABLE IF EXISTS `googleSaetze`;

CREATE ALGORITHM=UNDEFINED DEFINER=`o7428934`@`%` SQL SECURITY DEFINER VIEW `googleSaetze`  AS SELECT `s`.`satzCode` AS `sku`, `p`.`id` AS `id`, `p`.`date` AS `date`, `p`.`mAmount` AS `preis`, `p`.`refund` AS `refund`, `s`.`trId` AS `trId`, `s`.`atId` AS `atId`, `s`.`satzId` AS `satzId`, `s`.`satzName` AS `satzName` FROM (`playapps` `p` join `saetzeautoren` `s` on((`p`.`skuId` = `s`.`satzCode`))) WHERE ((`p`.`date` between cast('2013-01-01' as date) and cast('2015-12-31' as date)) AND ((`s`.`atId` = 10) OR (`s`.`trId` = 10)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appledaten`
--
ALTER TABLE `appledaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autordaten`
--
ALTER TABLE `autordaten`
  ADD PRIMARY KEY (`kId`);

--
-- Indexes for table `bestellung`
--
ALTER TABLE `bestellung`
  ADD PRIMARY KEY (`bId`),
  ADD KEY `kId2` (`kId2`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geloescht`
--
ALTER TABLE `geloescht`
  ADD PRIMARY KEY (`gId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `itunessaleschart`
--
ALTER TABLE `itunessaleschart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`kId`);

--
-- Indexes for table `lr`
--
ALTER TABLE `lr`
  ADD PRIMARY KEY (`lrId`);

--
-- Indexes for table `lr1`
--
ALTER TABLE `lr1`
  ADD PRIMARY KEY (`lrId1`);

--
-- Indexes for table `lr2`
--
ALTER TABLE `lr2`
  ADD PRIMARY KEY (`lrId2`);

--
-- Indexes for table `playapps`
--
ALTER TABLE `playapps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preis`
--
ALTER TABLE `preis`
  ADD PRIMARY KEY (`preisId`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rechnung`
--
ALTER TABLE `rechnung`
  ADD PRIMARY KEY (`bId`),
  ADD KEY `FK_rechnung_autordaten` (`kId`);

--
-- Indexes for table `saetzeautoren`
--
ALTER TABLE `saetzeautoren`
  ADD PRIMARY KEY (`satzId`),
  ADD KEY `FK_saetzeautoren_autordaten` (`atId`),
  ADD KEY `FK_saetzeautoren_autordaten_2` (`trId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appledaten`
--
ALTER TABLE `appledaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5297;

--
-- AUTO_INCREMENT for table `autordaten`
--
ALTER TABLE `autordaten`
  MODIFY `kId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `bestellung`
--
ALTER TABLE `bestellung`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `geloescht`
--
ALTER TABLE `geloescht`
  MODIFY `gId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `iId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `itunessaleschart`
--
ALTER TABLE `itunessaleschart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `kunden`
--
ALTER TABLE `kunden`
  MODIFY `kId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT for table `lr`
--
ALTER TABLE `lr`
  MODIFY `lrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lr1`
--
ALTER TABLE `lr1`
  MODIFY `lrId1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `lr2`
--
ALTER TABLE `lr2`
  MODIFY `lrId2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playapps`
--
ALTER TABLE `playapps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `preis`
--
ALTER TABLE `preis`
  MODIFY `preisId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `rechnung`
--
ALTER TABLE `rechnung`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046;

--
-- AUTO_INCREMENT for table `saetzeautoren`
--
ALTER TABLE `saetzeautoren`
  MODIFY `satzId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=743;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bestellung`
--
ALTER TABLE `bestellung`
  ADD CONSTRAINT `FK_bestellung_kunden` FOREIGN KEY (`kId2`) REFERENCES `kunden` (`kId`);

--
-- Constraints for table `rechnung`
--
ALTER TABLE `rechnung`
  ADD CONSTRAINT `FK_rechnung_autordaten` FOREIGN KEY (`kId`) REFERENCES `autordaten` (`kId`);

--
-- Constraints for table `saetzeautoren`
--
ALTER TABLE `saetzeautoren`
  ADD CONSTRAINT `FK_saetzeautoren_autordaten` FOREIGN KEY (`atId`) REFERENCES `autordaten` (`kId`),
  ADD CONSTRAINT `FK_saetzeautoren_autordaten_2` FOREIGN KEY (`trId`) REFERENCES `autordaten` (`kId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
