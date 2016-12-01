-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2016 at 04:48 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ss_silverstripe-easy_rsvp3`
--

-- --------------------------------------------------------

--
-- Table structure for table `defaultsetconfig`
--

DROP TABLE IF EXISTS `defaultsetconfig`;
CREATE TABLE `defaultsetconfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('DefaultSetConfig') DEFAULT 'DefaultSetConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Value` varchar(50) DEFAULT NULL,
  `RsvpFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `defaultsetconfig`
--

INSERT INTO `defaultsetconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Name`, `Value`, `RsvpFieldID`) VALUES
(1, 'DefaultSetConfig', '2016-11-30 17:45:48', '2016-11-30 17:45:48', 'Date Format', 'dateformat', 'dd.MM.yyyy', 4),
(2, 'DefaultSetConfig', '2016-11-30 19:09:08', '2016-11-30 19:09:08', 'testing', 'SomeField', 'SomeValue', 0),
(3, 'DefaultSetConfig', '2016-11-30 21:33:31', '2016-11-30 21:33:31', 'Something', 'SomeName', 'SomeValue', 0),
(4, 'DefaultSetConfig', '2016-11-30 22:00:33', '2016-11-30 22:00:33', 'Datepicker', 'showcalendar', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

DROP TABLE IF EXISTS `errorpage`;
CREATE TABLE `errorpage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

DROP TABLE IF EXISTS `errorpage_live`;
CREATE TABLE `errorpage_live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

DROP TABLE IF EXISTS `errorpage_versions`;
CREATE TABLE `errorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Event') DEFAULT 'Event',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `HasTime` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasEnd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `MaxParticipants` int(11) NOT NULL DEFAULT '0',
  `HeaderPhotoID` int(11) NOT NULL DEFAULT '0',
  `FormFieldVersion` int(11) NOT NULL DEFAULT '0',
  `UseNotifications` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EventImagesWidth` int(11) NOT NULL DEFAULT '0',
  `EventImagesHeight` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `HasTime`, `HasEnd`, `StartDate`, `EndDate`, `MaxParticipants`, `HeaderPhotoID`, `FormFieldVersion`, `UseNotifications`, `EventImagesWidth`, `EventImagesHeight`) VALUES
(1, 'Event', '2016-12-01 16:43:12', '2016-11-30 15:49:42', 'New Year''s Eve ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc non est positum in nostra actione. Sumenda potius quam expetenda. Quid ergo aliud intellegetur nisi uti ne quae pars naturae neglegatur? Nam Pyrrho, Aristo, Erillus iam diu abiecti. Duae sunt enim res quoque, ne tu verba solum putes. Duo Reges: constructio interrete. Eadem nunc mea adversum te oratio est. Itaque eos id agere, ut a se dolores, morbos, debilitates repellant. Quorum altera prosunt, nocent altera. Quae autem natura suae primae institutionis oblita est? Igitur neque stultorum quisquam beatus neque sapientium non beatus. Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio?</p>', 1, 1, '2016-12-31 20:00:00', '2017-01-01 05:00:00', 50, 40, 0, 1, 640, 320),
(2, 'Event', '2016-12-01 16:41:45', '2016-11-30 16:15:07', 'Birthday party', '<p>Oratio me istius philosophi non offendit; Est enim effectrix multarum et magnarum voluptatum. De hominibus dici non necesse est. Quid dubitas igitur mutare principia naturae? Quid Zeno? Erat enim res aperta. Sit enim idem caecus, debilis. Non est igitur voluptas bonum. Tum mihi Piso: Quid ergo? Egone quaeris, inquit, quid sentiam? Suo genere perveniant ad extremum;</p>', 0, 0, '2017-02-01 00:00:00', NULL, 0, 45, 0, 0, 640, 320);

-- --------------------------------------------------------

--
-- Table structure for table `eventfile`
--

DROP TABLE IF EXISTS `eventfile`;
CREATE TABLE `eventfile` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EventFile') DEFAULT 'EventFile',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(50) DEFAULT NULL,
  `AltText` varchar(50) DEFAULT NULL,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventfile`
--

INSERT INTO `eventfile` (`ID`, `ClassName`, `LastEdited`, `Created`, `SortOrder`, `Title`, `AltText`, `FileID`, `EventID`) VALUES
(1, 'EventFile', '2016-11-30 18:41:36', '2016-11-30 18:41:34', 1, 'PDF Map', 'Map to the event location', 31, 1),
(2, 'EventFile', '2016-11-30 18:53:31', '2016-11-30 18:53:29', 1, 'Event Map', 'Map to the eventlocation', 32, 2),
(3, 'EventFile', '2016-12-01 03:12:50', '2016-11-30 20:36:19', 0, 'Directions', 'Directions to event location as PDF', 39, 0),
(4, 'EventFile', '2016-12-01 03:36:06', '2016-11-30 20:40:09', 0, 'Directions', 'PDF map ', 44, 0),
(5, 'EventFile', '2016-12-01 03:36:38', '2016-11-30 22:32:27', 0, 'Invitation', 'Birthday invitation', 43, 0),
(6, 'EventFile', '2016-12-01 03:15:55', '2016-12-01 03:15:50', 0, 'Evening program', 'Evening program', 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eventimage`
--

DROP TABLE IF EXISTS `eventimage`;
CREATE TABLE `eventimage` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EventImage') DEFAULT 'EventImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `EventID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `GalleryID` int(11) NOT NULL DEFAULT '0',
  `Width` int(11) NOT NULL DEFAULT '0',
  `Height` int(11) NOT NULL DEFAULT '0',
  `AltText` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventimage`
--

INSERT INTO `eventimage` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `EventID`, `ImageID`, `SortOrder`, `GalleryID`, `Width`, `Height`, `AltText`) VALUES
(1, 'EventImage', '2016-11-30 18:13:29', '2016-11-30 18:02:51', 'Something', NULL, 1, 29, 1, 0, 600, 200, NULL),
(2, 'EventImage', '2016-11-30 18:13:47', '2016-11-30 18:03:11', 'Something else', NULL, 1, 30, 2, 0, 600, 100, NULL),
(3, 'EventImage', '2016-11-30 18:54:07', '2016-11-30 18:54:05', 'Pool', NULL, 2, 4, 1, 0, 0, 0, NULL),
(8, 'EventImage', '2016-12-01 16:45:12', '2016-12-01 03:11:07', 'Champagne', NULL, 0, 37, 0, 0, 0, 0, 'Champagne glasses'),
(9, 'EventImage', '2016-12-01 16:45:04', '2016-12-01 03:11:29', 'Firework', NULL, 0, 38, 0, 0, 0, 0, 'Firework'),
(10, 'EventImage', '2016-12-01 16:45:37', '2016-12-01 03:38:28', 'Cake', NULL, 0, 47, 0, 0, 0, 0, 'Birthday cake'),
(11, 'EventImage', '2016-12-01 16:45:29', '2016-12-01 03:41:16', NULL, NULL, 0, 48, 0, 0, 0, 0, 'Outdoor party');

-- --------------------------------------------------------

--
-- Table structure for table `eventpage`
--

DROP TABLE IF EXISTS `eventpage`;
CREATE TABLE `eventpage` (
  `ID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventpage`
--

INSERT INTO `eventpage` (`ID`, `EventID`) VALUES
(6, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `eventpage_live`
--

DROP TABLE IF EXISTS `eventpage_live`;
CREATE TABLE `eventpage_live` (
  `ID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventpage_live`
--

INSERT INTO `eventpage_live` (`ID`, `EventID`) VALUES
(6, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `eventpage_versions`
--

DROP TABLE IF EXISTS `eventpage_versions`;
CREATE TABLE `eventpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventpage_versions`
--

INSERT INTO `eventpage_versions` (`ID`, `RecordID`, `Version`, `EventID`) VALUES
(1, 6, 1, 0),
(2, 6, 2, 0),
(3, 6, 3, 2),
(4, 6, 4, 1),
(5, 6, 5, 1),
(6, 7, 1, 0),
(7, 7, 2, 2),
(8, 7, 3, 2),
(9, 7, 4, 2),
(10, 7, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_eventfiles`
--

DROP TABLE IF EXISTS `event_eventfiles`;
CREATE TABLE `event_eventfiles` (
  `ID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL DEFAULT '0',
  `EventFileID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_eventfiles`
--

INSERT INTO `event_eventfiles` (`ID`, `EventID`, `EventFileID`, `SortOrder`) VALUES
(1, 1, 3, 1),
(2, 2, 4, 1),
(3, 2, 5, 2),
(4, 1, 6, 2),
(5, 2, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_eventimages`
--

DROP TABLE IF EXISTS `event_eventimages`;
CREATE TABLE `event_eventimages` (
  `ID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL DEFAULT '0',
  `EventImageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_eventimages`
--

INSERT INTO `event_eventimages` (`ID`, `EventID`, `EventImageID`, `SortOrder`) VALUES
(1, 2, 4, 1),
(2, 1, 5, 1),
(3, 1, 6, 2),
(4, 2, 7, 2),
(5, 1, 8, 1),
(6, 1, 9, 2),
(7, 2, 10, 1),
(8, 2, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_photos`
--

DROP TABLE IF EXISTS `event_photos`;
CREATE TABLE `event_photos` (
  `ID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event_rsvpfields`
--

DROP TABLE IF EXISTS `event_rsvpfields`;
CREATE TABLE `event_rsvpfields` (
  `ID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL DEFAULT '0',
  `RsvpFieldID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_rsvpfields`
--

INSERT INTO `event_rsvpfields` (`ID`, `EventID`, `RsvpFieldID`, `SortOrder`) VALUES
(1, 1, 2, 2),
(2, 1, 1, 1),
(3, 1, 3, 4),
(4, 1, 4, 3),
(5, 1, 5, 5),
(6, 1, 6, 6),
(7, 2, 1, 1),
(8, 2, 2, 2),
(9, 2, 3, 3),
(10, 1, 8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-11-30 16:13:00', '2016-11-30 16:13:00', 'event-photos', 'event-photos', 'assets/event-photos/', NULL, 1, 0, 1),
(5, 'Image', '2016-11-30 16:28:21', '2016-11-30 16:28:21', 'Modern-Finca-Can-Basso-03-850x566.jpg', 'Modern Finca Can Basso 03 850x566', 'assets/event-photos/Modern-Finca-Can-Basso-03-850x566.jpg', NULL, 1, 1, 1),
(6, 'Image', '2016-11-30 16:28:22', '2016-11-30 16:28:22', 'Modern-Finca-Can-Basso-04-850x568.jpg', 'Modern Finca Can Basso 04 850x568', 'assets/event-photos/Modern-Finca-Can-Basso-04-850x568.jpg', NULL, 1, 1, 1),
(7, 'Image', '2016-11-30 16:28:22', '2016-11-30 16:28:22', 'Modern-Finca-Can-Basso-10-1150x766.jpg', 'Modern Finca Can Basso 10 1150x766', 'assets/event-photos/Modern-Finca-Can-Basso-10-1150x766.jpg', NULL, 1, 1, 1),
(8, 'Image', '2016-11-30 16:28:22', '2016-11-30 16:28:22', 'Modern-Finca-Can-Basso-15-850x478.jpg', 'Modern Finca Can Basso 15 850x478', 'assets/event-photos/Modern-Finca-Can-Basso-15-850x478.jpg', NULL, 1, 1, 1),
(9, 'Image', '2016-11-30 16:28:22', '2016-11-30 16:28:22', 'Modern-Finca-Can-Basso-19-850x1275.jpg', 'Modern Finca Can Basso 19 850x1275', 'assets/event-photos/Modern-Finca-Can-Basso-19-850x1275.jpg', NULL, 1, 1, 1),
(10, 'Image', '2016-11-30 16:28:22', '2016-11-30 16:28:22', 'Modern-Finca-Can-Basso-21-850x566.jpg', 'Modern Finca Can Basso 21 850x566', 'assets/event-photos/Modern-Finca-Can-Basso-21-850x566.jpg', NULL, 1, 1, 1),
(11, 'Image', '2016-11-30 16:28:22', '2016-11-30 16:28:22', 'Patio-and-pool-area-connect-the-two-houses-in-Bangkok-Thailand.jpg', 'Patio and pool area connect the two houses in Bangkok Thailand', 'assets/event-photos/Patio-and-pool-area-connect-the-two-houses-in-Bangkok-Thailand.jpg', NULL, 1, 1, 1),
(12, 'Image', '2016-11-30 16:28:23', '2016-11-30 16:28:23', 'reiseziele-indonesien-bali-como-shambala-estate-011.jpg', 'reiseziele indonesien bali como shambala estate 011', 'assets/event-photos/reiseziele-indonesien-bali-como-shambala-estate-011.jpg', NULL, 1, 1, 1),
(13, 'Image', '2016-11-30 16:28:23', '2016-11-30 16:28:23', 'reiseziele-indonesien-bali-como-shambala-estate-021.jpg', 'reiseziele indonesien bali como shambala estate 021', 'assets/event-photos/reiseziele-indonesien-bali-como-shambala-estate-021.jpg', NULL, 1, 1, 1),
(14, 'Image', '2016-11-30 16:28:23', '2016-11-30 16:28:23', 'reiseziele-indonesien-bali-como-shambala-estate-041.jpg', 'reiseziele indonesien bali como shambala estate 041', 'assets/event-photos/reiseziele-indonesien-bali-como-shambala-estate-041.jpg', NULL, 1, 1, 1),
(15, 'Image', '2016-11-30 16:28:23', '2016-11-30 16:28:23', 'reiseziele-indonesien-bali-como-shambala-estate-101.jpg', 'reiseziele indonesien bali como shambala estate 101', 'assets/event-photos/reiseziele-indonesien-bali-como-shambala-estate-101.jpg', NULL, 1, 1, 1),
(16, 'Image', '2016-11-30 16:28:23', '2016-11-30 16:28:23', 'where-to-stay-cartagena-casa-del-arzobispado-01-02.jpg', 'where to stay cartagena casa del arzobispado 01 02', 'assets/event-photos/where-to-stay-cartagena-casa-del-arzobispado-01-02.jpg', NULL, 1, 1, 1),
(17, 'Image', '2016-11-30 16:28:24', '2016-11-30 16:28:24', 'where-to-stay-cartagena-casa-del-arzobispado-06-02.jpg', 'where to stay cartagena casa del arzobispado 06 02', 'assets/event-photos/where-to-stay-cartagena-casa-del-arzobispado-06-02.jpg', NULL, 1, 1, 1),
(18, 'Image', '2016-11-30 16:28:24', '2016-11-30 16:28:24', 'where-to-stay-cartagena-casa-del-arzobispado-08-02.jpg', 'where to stay cartagena casa del arzobispado 08 02', 'assets/event-photos/where-to-stay-cartagena-casa-del-arzobispado-08-02.jpg', NULL, 1, 1, 1),
(19, 'Image', '2016-11-30 16:28:24', '2016-11-30 16:28:24', 'where-to-stay-cartagena-casa-otto-1-02.jpg', 'where to stay cartagena casa otto 1 02', 'assets/event-photos/where-to-stay-cartagena-casa-otto-1-02.jpg', NULL, 1, 1, 1),
(20, 'Image', '2016-11-30 16:28:24', '2016-11-30 16:28:24', 'where-to-stay-cartagena-casa-otto-7-02.jpg', 'where to stay cartagena casa otto 7 02', 'assets/event-photos/where-to-stay-cartagena-casa-otto-7-02.jpg', NULL, 1, 1, 1),
(21, 'Image', '2016-11-30 16:28:24', '2016-11-30 16:28:24', 'where-to-stay-cartagena-colonial-houses-casa-moderna-01-01.jpg', 'where to stay cartagena colonial houses casa moderna 01 01', 'assets/event-photos/where-to-stay-cartagena-colonial-houses-casa-moderna-01-01.jpg', NULL, 1, 1, 1),
(22, 'Image', '2016-11-30 16:28:24', '2016-11-30 16:28:24', 'where-to-stay-cartagena-colonial-houses-casa-moderna-01-02-1.jpg', 'where to stay cartagena colonial houses casa moderna 01 02 1', 'assets/event-photos/where-to-stay-cartagena-colonial-houses-casa-moderna-01-02-1.jpg', NULL, 1, 1, 1),
(23, 'Image', '2016-11-30 17:33:38', '2016-11-30 17:33:38', 'Gcce2mR.jpg', 'Gcce2mR', 'assets/Gcce2mR.jpg', NULL, 1, 0, 1),
(24, 'Image', '2016-11-30 17:33:38', '2016-11-30 17:33:38', 'hl9qt4f.jpg', 'hl9qt4f', 'assets/hl9qt4f.jpg', NULL, 1, 0, 1),
(25, 'Image', '2016-11-30 17:33:38', '2016-11-30 17:33:38', 'K1q9iUC.jpg', 'K1q9iUC', 'assets/K1q9iUC.jpg', NULL, 1, 0, 1),
(26, 'Image', '2016-11-30 17:33:38', '2016-11-30 17:33:38', 'Kfw8Boj.jpg', 'Kfw8Boj', 'assets/Kfw8Boj.jpg', NULL, 1, 0, 1),
(27, 'Image', '2016-11-30 17:33:38', '2016-11-30 17:33:38', 'nJjWrmF.jpg', 'nJjWrmF', 'assets/nJjWrmF.jpg', NULL, 1, 0, 1),
(28, 'Folder', '2016-11-30 18:02:47', '2016-11-30 18:02:47', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 1),
(29, 'Image', '2016-11-30 18:02:47', '2016-11-30 18:02:47', '5dUCi50.jpg', '5dUCi50', 'assets/Uploads/5dUCi50.jpg', NULL, 1, 28, 1),
(30, 'Image', '2016-11-30 18:03:09', '2016-11-30 18:03:09', '1f0aaefa73e986d53003c1050cf73a77-teak-concrete.jpg', '1f0aaefa73e986d53003c1050cf73a77 teak concrete', 'assets/Uploads/1f0aaefa73e986d53003c1050cf73a77-teak-concrete.jpg', NULL, 1, 28, 1),
(31, 'File', '2016-11-30 18:41:32', '2016-11-30 18:41:32', 'Wipf-Press-release-e-1-2011.pdf', 'Wipf Press release e 1 2011', 'assets/Uploads/Wipf-Press-release-e-1-2011.pdf', NULL, 1, 28, 1),
(32, 'File', '2016-11-30 18:53:13', '2016-11-30 18:53:13', 'Wipf-Press-release-e-1-2012.pdf', 'Wipf Press release e 1 2012', 'assets/Uploads/Wipf-Press-release-e-1-2012.pdf', NULL, 1, 28, 1),
(36, 'Image', '2016-12-01 03:10:14', '2016-12-01 03:10:14', '2017.jpg', '2017', 'assets/event-photos/2017.jpg', NULL, 1, 1, 1),
(37, 'Image', '2016-12-01 03:10:40', '2016-12-01 03:10:40', 'newyears.jpg', 'newyears', 'assets/Uploads/newyears.jpg', NULL, 1, 28, 1),
(38, 'Image', '2016-12-01 03:11:18', '2016-12-01 03:11:18', 'o-NEW-YEARS-EVE-facebook.jpg', 'o NEW YEARS EVE facebook', 'assets/Uploads/o-NEW-YEARS-EVE-facebook.jpg', NULL, 1, 28, 1),
(39, 'File', '2016-12-01 03:12:24', '2016-12-01 03:12:24', 'example-pdf.pdf', 'example pdf', 'assets/Uploads/example-pdf.pdf', NULL, 1, 28, 1),
(40, 'Image', '2016-12-01 03:13:13', '2016-12-01 03:13:13', '2018.jpg', '2018', 'assets/event-photos/2018.jpg', NULL, 1, 1, 1),
(41, 'File', '2016-12-01 03:14:43', '2016-12-01 03:14:43', 'example-pdf2.pdf', 'example pdf2', 'assets/Uploads/example-pdf2.pdf', NULL, 1, 28, 1),
(43, 'File', '2016-12-01 03:35:23', '2016-12-01 03:35:23', 'example-pdf3.pdf', 'example pdf3', 'assets/Uploads/example-pdf3.pdf', NULL, 1, 28, 1),
(44, 'File', '2016-12-01 03:36:04', '2016-12-01 03:36:04', 'example-pdf4.pdf', 'example pdf4', 'assets/Uploads/example-pdf4.pdf', NULL, 1, 28, 1),
(45, 'Image', '2016-12-01 03:37:46', '2016-12-01 03:37:46', 'happy-birthday-wallpaper-hd-wallpapers.jpg', 'happy birthday wallpaper hd wallpapers', 'assets/event-photos/happy-birthday-wallpaper-hd-wallpapers.jpg', NULL, 1, 1, 1),
(46, 'File', '2016-12-01 03:37:57', '2016-12-01 03:37:57', 'vanilla-party-cake.jpg', 'vanilla party cake', 'assets/Uploads/vanilla-party-cake.jpg', NULL, 1, 28, 1),
(47, 'Image', '2016-12-01 03:38:14', '2016-12-01 03:38:14', 'vanilla-party-cake2.jpg', 'vanilla party cake2', 'assets/Uploads/vanilla-party-cake2.jpg', NULL, 1, 28, 1),
(48, 'Image', '2016-12-01 03:41:03', '2016-12-01 03:41:03', 'outdoor-party.jpg', 'outdoor party', 'assets/Uploads/outdoor-party.jpg', NULL, 1, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-11-30 15:43:59', '2016-11-30 15:43:59', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
CREATE TABLE `group_members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

DROP TABLE IF EXISTS `group_roles`;
CREATE TABLE `group_roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

DROP TABLE IF EXISTS `loginattempt`;
CREATE TABLE `loginattempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2016-11-30 15:44:09', '2016-11-30 15:44:00', 'Default Admin', NULL, 'admin', '860b07fd569092e8522dcf06bb6ab82508d52fff', '2016-12-03 15:44:09', NULL, NULL, 1, '2016-12-01 10:47:44', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL),
(2, 'Member', '2016-11-30 16:38:33', '2016-11-30 16:38:33', 'Test', NULL, 'testing@testing.com', NULL, NULL, '$2y$10$c2839f504214e013bf5a7OGJG/2eIx1tFOka/nG/SHNQ8fyA.Xhvy', NULL, 0, NULL, NULL, NULL, 'blowfish', '10$c2839f504214e013bf5a7c', NULL, NULL, 'en_US', 0, 'yyyy-MM-dd', 'H:mm');

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

DROP TABLE IF EXISTS `memberpassword`;
CREATE TABLE `memberpassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2016-11-30 16:38:33', '2016-11-30 16:38:33', '$2y$10$c2839f504214e013bf5a7OGJG/2eIx1tFOka/nG/SHNQ8fyA.Xhvy', '10$c2839f504214e013bf5a7c', 'blowfish', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member_events`
--

DROP TABLE IF EXISTS `member_events`;
CREATE TABLE `member_events` (
  `ID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

DROP TABLE IF EXISTS `permissionrole`;
CREATE TABLE `permissionrole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

DROP TABLE IF EXISTS `permissionrolecode`;
CREATE TABLE `permissionrolecode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

DROP TABLE IF EXISTS `redirectorpage`;
CREATE TABLE `redirectorpage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

DROP TABLE IF EXISTS `redirectorpage_live`;
CREATE TABLE `redirectorpage_live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

DROP TABLE IF EXISTS `redirectorpage_versions`;
CREATE TABLE `redirectorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Region') DEFAULT 'Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rsvpfield`
--

DROP TABLE IF EXISTS `rsvpfield`;
CREATE TABLE `rsvpfield` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('RsvpField') DEFAULT 'RsvpField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `FieldType` varchar(50) DEFAULT NULL,
  `DataType` varchar(50) DEFAULT NULL,
  `IsMandatory` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DoRemember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Label` varchar(50) DEFAULT NULL,
  `DefaultValue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rsvpfield`
--

INSERT INTO `rsvpfield` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Type`, `FieldType`, `DataType`, `IsMandatory`, `DoRemember`, `Label`, `DefaultValue`) VALUES
(1, 'RsvpField', '2016-12-01 16:42:10', '2016-11-30 17:10:52', 'Firstname', NULL, '0', NULL, 1, 1, NULL, NULL),
(2, 'RsvpField', '2016-12-01 16:42:18', '2016-11-30 17:11:09', 'LastName', NULL, '0', NULL, 1, 1, NULL, NULL),
(3, 'RsvpField', '2016-12-01 16:42:23', '2016-11-30 17:11:24', 'E-Mail', NULL, '5', NULL, 1, 1, NULL, NULL),
(4, 'RsvpField', '2016-12-01 16:42:29', '2016-11-30 17:12:10', 'Birthday', NULL, '3', NULL, 1, 1, NULL, NULL),
(5, 'RsvpField', '2016-12-01 16:42:34', '2016-11-30 17:12:20', 'Comment', NULL, '1', NULL, 0, 0, NULL, NULL),
(7, 'RsvpField', '2016-12-01 16:42:42', '2016-12-01 02:48:21', 'Phone', NULL, '6', NULL, 0, 0, 'Phonenumber', NULL),
(8, 'RsvpField', '2016-12-01 16:42:46', '2016-12-01 04:31:22', 'MyHiddenField', NULL, '8', NULL, 0, 0, NULL, 'ThisIsADefaultValue');

-- --------------------------------------------------------

--
-- Table structure for table `rsvpfield_defaultsetconfigs`
--

DROP TABLE IF EXISTS `rsvpfield_defaultsetconfigs`;
CREATE TABLE `rsvpfield_defaultsetconfigs` (
  `ID` int(11) NOT NULL,
  `RsvpFieldID` int(11) NOT NULL DEFAULT '0',
  `DefaultSetConfigID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rsvpfield_defaultsetconfigs`
--

INSERT INTO `rsvpfield_defaultsetconfigs` (`ID`, `RsvpFieldID`, `DefaultSetConfigID`) VALUES
(1, 4, 1),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rsvpfield_events`
--

DROP TABLE IF EXISTS `rsvpfield_events`;
CREATE TABLE `rsvpfield_events` (
  `ID` int(11) NOT NULL,
  `RsvpFieldID` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rsvpnotification`
--

DROP TABLE IF EXISTS `rsvpnotification`;
CREATE TABLE `rsvpnotification` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('RsvpNotification') DEFAULT 'RsvpNotification',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `NotificateMember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Email` varchar(50) DEFAULT NULL,
  `IsActive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NotificationDeliveries` int(11) NOT NULL DEFAULT '0',
  `NotificationDeliveryFailures` int(11) NOT NULL DEFAULT '0',
  `EventID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rsvpnotification`
--

INSERT INTO `rsvpnotification` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `NotificateMember`, `Email`, `IsActive`, `NotificationDeliveries`, `NotificationDeliveryFailures`, `EventID`, `MemberID`) VALUES
(1, 'RsvpNotification', '2016-12-01 16:43:37', '2016-12-01 16:43:23', 'Notify "testing" Member', 1, NULL, 0, 0, 0, 1, 2),
(2, 'RsvpNotification', '2016-12-01 16:47:44', '2016-12-01 16:44:08', 'Jan Reuteler', 0, 'jan.reuteler@icloud.com', 1, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rsvpregistration`
--

DROP TABLE IF EXISTS `rsvpregistration`;
CREATE TABLE `rsvpregistration` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('RsvpRegistration') DEFAULT 'RsvpRegistration',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FormFieldVersion` int(11) NOT NULL DEFAULT '0',
  `Data` mediumtext,
  `EventID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rsvpregistration`
--

INSERT INTO `rsvpregistration` (`ID`, `ClassName`, `LastEdited`, `Created`, `FormFieldVersion`, `Data`, `EventID`) VALUES
(6, 'RsvpRegistration', '2016-12-01 02:26:48', '2016-12-01 02:26:48', 0, 'a:6:{s:3:"url";s:29:"/easy_rsvp/pablo-4/SignUpForm";s:9:"Firstname";s:3:"Jan";s:8:"LastName";s:8:"Reuteler";s:6:"E-Mail";s:22:"janreuteler@icloud.com";s:10:"SecurityID";s:40:"a8f46bfde60dabad6f460c110e65ab74532dcd7a";s:15:"action_doSignup";s:7:"Sign up";}', 2),
(8, 'RsvpRegistration', '2016-12-01 03:16:19', '2016-12-01 03:16:19', 0, 'a:8:{s:3:"url";s:37:"/easy_rsvp/new-years-party/SignUpForm";s:9:"Firstname";s:3:"Jan";s:8:"LastName";s:8:"Reuteler";s:8:"Birthday";s:10:"17.08.1984";s:6:"E-Mail";s:22:"janreuteler@icloud.com";s:7:"Comment";s:0:"";s:10:"SecurityID";s:40:"a8f46bfde60dabad6f460c110e65ab74532dcd7a";s:15:"action_doSignup";s:7:"Sign up";}', 1),
(9, 'RsvpRegistration', '2016-12-01 03:19:06', '2016-12-01 03:19:06', 0, 'a:8:{s:3:"url";s:37:"/easy_rsvp/new-years-party/SignUpForm";s:9:"Firstname";s:4:"John";s:8:"LastName";s:5:"Smith";s:8:"Birthday";s:10:"11.11.1911";s:6:"E-Mail";s:23:"johnsmith@johnsmith.com";s:7:"Comment";s:0:"";s:10:"SecurityID";s:40:"a8f46bfde60dabad6f460c110e65ab74532dcd7a";s:15:"action_doSignup";s:7:"Sign up";}', 1),
(38, 'RsvpRegistration', '2016-12-01 04:31:45', '2016-12-01 04:31:45', 0, 'a:9:{s:3:"url";s:37:"/easy_rsvp/new-years-party/SignUpForm";s:9:"Firstname";s:3:"Jan";s:8:"LastName";s:8:"Reuteler";s:8:"Birthday";s:10:"17.08.1984";s:6:"E-Mail";s:22:"janreuteler@icloud.com";s:7:"Comment";s:0:"";s:13:"MyHiddenField";s:19:"ThisIsADefaultValue";s:10:"SecurityID";s:40:"a8f46bfde60dabad6f460c110e65ab74532dcd7a";s:15:"action_doSignup";s:7:"Sign up";}', 1),
(39, 'RsvpRegistration', '2016-12-01 16:47:42', '2016-12-01 16:47:42', 0, 'a:9:{s:3:"url";s:51:"/silverstripe-easy_rsvp3/new-years-party/SignUpForm";s:9:"Firstname";s:3:"Jan";s:8:"LastName";s:8:"Reuteler";s:8:"Birthday";s:10:"17.08.1984";s:6:"E-Mail";s:22:"janreuteler@icloud.com";s:7:"Comment";s:14:"This is a test";s:13:"MyHiddenField";s:19:"ThisIsADefaultValue";s:10:"SecurityID";s:40:"72fd52e08b6b88afbcf8f68e797a5e4c317daaae";s:15:"action_doSignup";s:7:"Sign up";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

DROP TABLE IF EXISTS `siteconfig`;
CREATE TABLE `siteconfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2016-12-01 04:42:27', '2016-11-30 15:44:00', 'easy_rsvp', 'Testsite for experimental module "easy_rsvp" ', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

DROP TABLE IF EXISTS `siteconfig_createtoplevelgroups`;
CREATE TABLE `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

DROP TABLE IF EXISTS `siteconfig_editorgroups`;
CREATE TABLE `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

DROP TABLE IF EXISTS `siteconfig_viewergroups`;
CREATE TABLE `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

DROP TABLE IF EXISTS `sitetree`;
CREATE TABLE `sitetree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','EventPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2016-12-01 16:47:11', '2016-11-30 15:44:00', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'EventPage', '2016-12-01 04:44:55', '2016-11-30 19:46:20', 'new-years-party', 'New Year''s Party', NULL, '<p>Welcome!</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(7, 'EventPage', '2016-12-01 16:47:23', '2016-12-01 02:26:10', 'pablo-4', 'Birthdayparty!', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Deinde dolorem quem maximum? Quod cum dixissent, ille contra. Qui est in parvis malis. Isto modo, ne si avia quidem eius nata non esset. Sed ne, dum huic obsequor, vobis molestus sim.</p><p>Ego quoque, inquit, didicerim libentius si quid attuleris, quam te reprehenderim. Unum est sine dolore esse, alterum cum voluptate. At enim, qua in vita est aliquid mali, ea beata esse non potest. Quo igitur, inquit, modo? Quid sequatur, quid repugnet, vident.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

DROP TABLE IF EXISTS `sitetree_editorgroups`;
CREATE TABLE `sitetree_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_imagetracking`
--

DROP TABLE IF EXISTS `sitetree_imagetracking`;
CREATE TABLE `sitetree_imagetracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_linktracking`
--

DROP TABLE IF EXISTS `sitetree_linktracking`;
CREATE TABLE `sitetree_linktracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

DROP TABLE IF EXISTS `sitetree_live`;
CREATE TABLE `sitetree_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','EventPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(4, 'ErrorPage', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'EventPage', '2016-12-01 04:44:55', '2016-11-30 19:46:20', 'new-years-party', 'New Year''s Party', NULL, '<p>Welcome!</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(7, 'EventPage', '2016-12-01 16:47:23', '2016-12-01 02:26:10', 'pablo-4', 'Birthdayparty!', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Deinde dolorem quem maximum? Quod cum dixissent, ille contra. Qui est in parvis malis. Isto modo, ne si avia quidem eius nata non esset. Sed ne, dum huic obsequor, vobis molestus sim.</p><p>Ego quoque, inquit, didicerim libentius si quid attuleris, quam te reprehenderim. Unum est sine dolore esse, alterum cum voluptate. At enim, qua in vita est aliquid mali, ea beata esse non potest. Quo igitur, inquit, modo? Quid sequatur, quid repugnet, vident.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

DROP TABLE IF EXISTS `sitetree_versions`;
CREATE TABLE `sitetree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','EventPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 1, 'Page', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2016-11-30 15:44:00', '2016-11-30 15:44:00', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 6, 1, 0, 1, 0, 'EventPage', '2016-11-30 19:46:20', '2016-11-30 19:46:20', 'new-event-page', 'New Event Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 2, 1, 1, 1, 'EventPage', '2016-11-30 19:46:36', '2016-11-30 19:46:20', 'new-years-party', 'New Year''s Party', NULL, '<p>Welcome!</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 3, 1, 1, 1, 'EventPage', '2016-11-30 21:10:38', '2016-11-30 19:46:20', 'new-years-party', 'New Year''s Party', NULL, '<p>Welcome!</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 6, 4, 1, 1, 1, 'EventPage', '2016-11-30 21:45:08', '2016-11-30 19:46:20', 'new-years-party', 'New Year''s Party', NULL, '<p>Welcome!</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 6, 5, 1, 1, 1, 'EventPage', '2016-12-01 02:19:29', '2016-11-30 19:46:20', 'new-years-party', 'New Year''s Party', NULL, '<p>Welcome!</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 7, 1, 0, 1, 0, 'EventPage', '2016-12-01 02:26:10', '2016-12-01 02:26:10', 'new-event-page', 'New Event Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 7, 2, 1, 1, 1, 'EventPage', '2016-12-01 02:26:27', '2016-12-01 02:26:10', 'pablo-4', 'Pablo 4!', NULL, '<p>Lorem ipsum</p><p> </p><p> </p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 7, 3, 0, 1, 0, 'EventPage', '2016-12-01 04:37:44', '2016-12-01 02:26:10', 'pablo-4', 'Pablo 4!', NULL, '<p>Lorem ipsum</p><p> </p><p> </p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 7, 4, 1, 1, 1, 'EventPage', '2016-12-01 04:38:30', '2016-12-01 02:26:10', 'pablo-4', 'Birthdayparty!', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Deinde dolorem quem maximum? Quod cum dixissent, ille contra. Qui est in parvis malis. Isto modo, ne si avia quidem eius nata non esset. Sed ne, dum huic obsequor, vobis molestus sim.</p><p>Ego quoque, inquit, didicerim libentius si quid attuleris, quam te reprehenderim. Unum est sine dolore esse, alterum cum voluptate. At enim, qua in vita est aliquid mali, ea beata esse non potest. Quo igitur, inquit, modo? Quid sequatur, quid repugnet, vident.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 8, 1, 1, 1, 1, 'Page', '2016-12-01 04:47:00', '2016-12-01 04:47:00', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 7, 5, 1, 1, 1, 'EventPage', '2016-12-01 16:46:58', '2016-12-01 02:26:10', 'pablo-4', 'Birthdayparty!', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Deinde dolorem quem maximum? Quod cum dixissent, ille contra. Qui est in parvis malis. Isto modo, ne si avia quidem eius nata non esset. Sed ne, dum huic obsequor, vobis molestus sim.</p><p>Ego quoque, inquit, didicerim libentius si quid attuleris, quam te reprehenderim. Unum est sine dolore esse, alterum cum voluptate. At enim, qua in vita est aliquid mali, ea beata esse non potest. Quo igitur, inquit, modo? Quid sequatur, quid repugnet, vident.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

DROP TABLE IF EXISTS `sitetree_viewergroups`;
CREATE TABLE `sitetree_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

DROP TABLE IF EXISTS `virtualpage`;
CREATE TABLE `virtualpage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

DROP TABLE IF EXISTS `virtualpage_live`;
CREATE TABLE `virtualpage_live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

DROP TABLE IF EXISTS `virtualpage_versions`;
CREATE TABLE `virtualpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `defaultsetconfig`
--
ALTER TABLE `defaultsetconfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RsvpFieldID` (`RsvpFieldID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `errorpage`
--
ALTER TABLE `errorpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HeaderPhotoID` (`HeaderPhotoID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `eventfile`
--
ALTER TABLE `eventfile`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `eventimage`
--
ALTER TABLE `eventimage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `GalleryID` (`GalleryID`);

--
-- Indexes for table `eventpage`
--
ALTER TABLE `eventpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `eventpage_live`
--
ALTER TABLE `eventpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `eventpage_versions`
--
ALTER TABLE `eventpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `event_eventfiles`
--
ALTER TABLE `event_eventfiles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `EventFileID` (`EventFileID`);

--
-- Indexes for table `event_eventimages`
--
ALTER TABLE `event_eventimages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `EventImageID` (`EventImageID`);

--
-- Indexes for table `event_photos`
--
ALTER TABLE `event_photos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `event_rsvpfields`
--
ALTER TABLE `event_rsvpfields`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `RsvpFieldID` (`RsvpFieldID`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `group_roles`
--
ALTER TABLE `group_roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `loginattempt`
--
ALTER TABLE `loginattempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `memberpassword`
--
ALTER TABLE `memberpassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `member_events`
--
ALTER TABLE `member_events`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrole`
--
ALTER TABLE `permissionrole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `rsvpfield`
--
ALTER TABLE `rsvpfield`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `rsvpfield_defaultsetconfigs`
--
ALTER TABLE `rsvpfield_defaultsetconfigs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RsvpFieldID` (`RsvpFieldID`),
  ADD KEY `DefaultSetConfigID` (`DefaultSetConfigID`);

--
-- Indexes for table `rsvpfield_events`
--
ALTER TABLE `rsvpfield_events`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RsvpFieldID` (`RsvpFieldID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `rsvpnotification`
--
ALTER TABLE `rsvpnotification`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `rsvpregistration`
--
ALTER TABLE `rsvpregistration`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree`
--
ALTER TABLE `sitetree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree_imagetracking`
--
ALTER TABLE `sitetree_imagetracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `sitetree_linktracking`
--
ALTER TABLE `sitetree_linktracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `virtualpage`
--
ALTER TABLE `virtualpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `defaultsetconfig`
--
ALTER TABLE `defaultsetconfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `errorpage`
--
ALTER TABLE `errorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eventfile`
--
ALTER TABLE `eventfile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `eventimage`
--
ALTER TABLE `eventimage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `eventpage`
--
ALTER TABLE `eventpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `eventpage_live`
--
ALTER TABLE `eventpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `eventpage_versions`
--
ALTER TABLE `eventpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `event_eventfiles`
--
ALTER TABLE `event_eventfiles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `event_eventimages`
--
ALTER TABLE `event_eventimages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `event_photos`
--
ALTER TABLE `event_photos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_rsvpfields`
--
ALTER TABLE `event_rsvpfields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group_roles`
--
ALTER TABLE `group_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loginattempt`
--
ALTER TABLE `loginattempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `memberpassword`
--
ALTER TABLE `memberpassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `member_events`
--
ALTER TABLE `member_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissionrole`
--
ALTER TABLE `permissionrole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsvpfield`
--
ALTER TABLE `rsvpfield`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rsvpfield_defaultsetconfigs`
--
ALTER TABLE `rsvpfield_defaultsetconfigs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rsvpfield_events`
--
ALTER TABLE `rsvpfield_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsvpnotification`
--
ALTER TABLE `rsvpnotification`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rsvpregistration`
--
ALTER TABLE `rsvpregistration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `siteconfig`
--
ALTER TABLE `siteconfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree`
--
ALTER TABLE `sitetree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree_imagetracking`
--
ALTER TABLE `sitetree_imagetracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree_linktracking`
--
ALTER TABLE `sitetree_linktracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `virtualpage`
--
ALTER TABLE `virtualpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
