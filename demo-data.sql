-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 04:19 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ss_test3`
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
  `HasError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `defaultsetconfig`
--

INSERT INTO `defaultsetconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Name`, `Value`, `HasError`) VALUES
(1, 'DefaultSetConfig', '2016-12-04 15:57:07', '2016-12-04 15:57:07', 'Dateformat', 'dateformat', 'dd.MM.yyyy', 0),
(2, 'DefaultSetConfig', '2016-12-04 15:57:29', '2016-12-04 15:57:29', 'Enable datepicker', 'showcalendar', '1', 0);

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
  `HasTime` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasEnd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `MaxParticipants` int(11) NOT NULL DEFAULT '0',
  `Description` mediumtext,
  `UseNotifications` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EventImagesWidth` int(11) NOT NULL DEFAULT '0',
  `EventImagesHeight` int(11) NOT NULL DEFAULT '0',
  `FormFieldVersion` int(11) NOT NULL DEFAULT '0',
  `HeaderPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `HasTime`, `HasEnd`, `StartDate`, `EndDate`, `MaxParticipants`, `Description`, `UseNotifications`, `EventImagesWidth`, `EventImagesHeight`, `FormFieldVersion`, `HeaderPhotoID`) VALUES
(1, 'Event', '2016-12-04 16:01:23', '2016-12-04 15:58:29', 'New Year 2017', 1, 1, '2016-12-31 00:00:00', '2017-01-01 06:00:00', 200, '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', 1, 640, 320, 1, 24),
(2, 'Event', '2016-12-04 16:07:23', '2016-12-04 16:04:01', 'Birthdayparty', 1, 0, '2017-04-13 00:00:00', NULL, 30, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hanc quoque iucunditatem, si vis, transfer in animum; Idem iste, inquam, de voluptate quid sentit? Aufert enim sensus actionemque tollit omnem. Si qua in iis corrigere voluit, deteriora fecit. Cur igitur, inquam, res tam dissimiles eodem nomine appellas?</p><p>Duo Reges: constructio interrete. Facillimum id quidem est, inquam. Eaedem enim utilitates poterunt eas labefactare atque pervertere. An tu me de L. Primum quid tu dicis breve? Eorum enim omnium multa praetermittentium, dum eligant aliquid, quod sequantur, quasi curta sententia;</p><p> </p>', 1, 640, 320, 1, 27);

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
  `Title` varchar(50) DEFAULT NULL,
  `AltText` varchar(50) DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventfile`
--

INSERT INTO `eventfile` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `AltText`, `SortOrder`, `FileID`) VALUES
(1, 'EventFile', '2016-12-04 16:00:03', '2016-12-04 16:00:03', 'Invitation', 'Invitation', 0, 12),
(2, 'EventFile', '2016-12-04 16:05:39', '2016-12-04 16:05:39', 'Directions', 'Directions', 0, 12),
(3, 'EventFile', '2016-12-04 16:06:02', '2016-12-04 16:06:02', 'Program', 'Program', 0, 15);

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
  `AltText` varchar(50) DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Width` int(11) NOT NULL DEFAULT '0',
  `Height` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventimage`
--

INSERT INTO `eventimage` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `AltText`, `SortOrder`, `Width`, `Height`, `ImageID`) VALUES
(1, 'EventImage', '2016-12-04 16:00:23', '2016-12-04 16:00:23', 'Firefworks', NULL, 0, 0, 0, 19),
(2, 'EventImage', '2016-12-04 16:00:41', '2016-12-04 16:00:41', 'Champagne', 'Champagne', 0, 0, 0, 18),
(3, 'EventImage', '2016-12-04 16:04:50', '2016-12-04 16:04:50', 'Party', 'Party', 0, 0, 0, 20),
(4, 'EventImage', '2016-12-04 16:05:23', '2016-12-04 16:05:23', 'Cake', 'Cake', 0, 0, 0, 21);

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
(2, 1),
(3, 2);

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
(2, 1),
(3, 2);

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
(1, 2, 3, 0),
(2, 3, 3, 0),
(3, 2, 4, 1),
(4, 3, 4, 2);

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
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 2, 3, 2);

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
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 2, 4, 2);

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
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 3, 3),
(4, 1, 7, 4),
(5, 1, 4, 5),
(6, 2, 1, 1),
(7, 2, 2, 2),
(8, 2, 5, 3),
(9, 2, 4, 4);

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
(1, 'Folder', '2016-12-04 15:57:08', '2016-12-04 15:57:08', 'images', 'images', 'assets/images/', NULL, 1, 0, 1),
(2, 'Folder', '2016-12-04 15:57:08', '2016-12-04 15:57:08', 'db-log', 'db-log', 'assets/images/db-log/', NULL, 1, 1, 1),
(3, 'Image', '2016-12-04 15:57:08', '2016-12-04 15:57:08', 'Configuration valid', NULL, 'mysite/icons/status_ok.png', NULL, 1, 2, 1),
(8, 'Folder', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 1),
(9, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'CabinTwo-VicBeam-WWP-3-800x533.jpg', 'CabinTwo-VicBeam-WWP-3-800x533.jpg', 'assets/Uploads/CabinTwo-VicBeam-WWP-3-800x533.jpg', NULL, 1, 8, 1),
(10, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 8, 1),
(11, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'como-shambhala-estate-payangan-007-42704.jpg', 'como-shambhala-estate-payangan-007-42704.jpg', 'assets/Uploads/como-shambhala-estate-payangan-007-42704.jpg', NULL, 1, 8, 1),
(12, 'File', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'example-pdf.pdf', 'example-pdf.pdf', 'assets/Uploads/example-pdf.pdf', NULL, 1, 8, 1),
(13, 'File', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'example-pdf2.pdf', 'example-pdf2.pdf', 'assets/Uploads/example-pdf2.pdf', NULL, 1, 8, 1),
(14, 'File', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'example-pdf3.pdf', 'example-pdf3.pdf', 'assets/Uploads/example-pdf3.pdf', NULL, 1, 8, 1),
(15, 'File', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'example-pdf4.pdf', 'example-pdf4.pdf', 'assets/Uploads/example-pdf4.pdf', NULL, 1, 8, 1),
(16, 'File', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'example-pdf5.pdf', 'example-pdf5.pdf', 'assets/Uploads/example-pdf5.pdf', NULL, 1, 8, 1),
(17, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'nODBZ6L.jpg', 'nODBZ6L.jpg', 'assets/Uploads/nODBZ6L.jpg', NULL, 1, 8, 1),
(18, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'newyears.jpg', 'newyears.jpg', 'assets/Uploads/newyears.jpg', NULL, 1, 8, 1),
(19, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'o-NEW-YEARS-EVE-facebook.jpg', 'o-NEW-YEARS-EVE-facebook.jpg', 'assets/Uploads/o-NEW-YEARS-EVE-facebook.jpg', NULL, 1, 8, 1),
(20, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'outdoor-party.jpg', 'outdoor-party.jpg', 'assets/Uploads/outdoor-party.jpg', NULL, 1, 8, 1),
(21, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'vanilla-party-cake.jpg', 'vanilla-party-cake.jpg', 'assets/Uploads/vanilla-party-cake.jpg', NULL, 1, 8, 1),
(22, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'vanilla-party-cake2.jpg', 'vanilla-party-cake2.jpg', 'assets/Uploads/vanilla-party-cake2.jpg', NULL, 1, 8, 1),
(23, 'Folder', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'event-photos', 'event-photos', 'assets/event-photos/', NULL, 1, 0, 1),
(24, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', '2017.jpg', '2017.jpg', 'assets/event-photos/2017.jpg', NULL, 1, 23, 1),
(25, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', '2018.jpg', '2018.jpg', 'assets/event-photos/2018.jpg', NULL, 1, 23, 1),
(26, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'como-shambhala-estate-payangan-007-42704.jpg', 'como-shambhala-estate-payangan-007-42704.jpg', 'assets/event-photos/como-shambhala-estate-payangan-007-42704.jpg', NULL, 1, 23, 1),
(27, 'Image', '2016-12-04 09:59:06', '2016-12-04 09:59:06', 'happy-birthday-wallpaper-hd-wallpapers.jpg', 'happy-birthday-wallpaper-hd-wallpapers.jpg', 'assets/event-photos/happy-birthday-wallpaper-hd-wallpapers.jpg', NULL, 1, 23, 1);

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
(1, 'Group', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

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
(1, 2, 1),
(2, 2, 2);

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Log') DEFAULT 'Log',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Category` enum('ERROR','ACCESS','GENERAL','FILES','CONFIGURATION') DEFAULT 'GENERAL',
  `Method` varchar(50) DEFAULT NULL,
  `Action` varchar(50) DEFAULT NULL,
  `Source` enum('FE','BE') DEFAULT 'FE',
  `UserAgent` varchar(50) DEFAULT NULL,
  `IpAddress` varchar(50) DEFAULT NULL,
  `Message` mediumtext,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`ID`, `ClassName`, `LastEdited`, `Created`, `Category`, `Method`, `Action`, `Source`, `UserAgent`, `IpAddress`, `Message`, `MemberID`) VALUES
(1, 'Log', '2016-12-04 15:54:05', '2016-12-04 15:54:05', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(2, 'Log', '2016-12-04 15:54:07', '2016-12-04 15:54:07', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(3, 'Log', '2016-12-04 15:54:37', '2016-12-04 15:54:37', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(4, 'Log', '2016-12-04 15:54:40', '2016-12-04 15:54:40', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(5, 'Log', '2016-12-04 16:02:07', '2016-12-04 16:02:07', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(6, 'Log', '2016-12-04 16:02:11', '2016-12-04 16:02:11', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(7, 'Log', '2016-12-04 16:02:36', '2016-12-04 16:02:36', 'GENERAL', 'EventPage_Controller::SignUpForm', 'SignUpForm', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(8, 'Log', '2016-12-04 16:02:36', '2016-12-04 16:02:36', 'GENERAL', 'EventPage_Controller::doSignUp', 'SignUpForm', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Array\n(\n    [url] => /install_test/test3/new-years-eve/SignUpForm\n    [Firstname] => Jan\n    [Lastname] => Reuteler\n    [Email] => janreuteler@icloud.com\n    [Birthday] => 17.08.1984\n    [Comment] => Looking forward to the event!\n    [SecurityID] => bd02b7e9fd80589f0322c648e842c3ef49b0d943\n    [action_doSignup] => Sign up\n)\n', 1),
(9, 'Log', '2016-12-04 16:02:39', '2016-12-04 16:02:39', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(10, 'Log', '2016-12-04 16:08:23', '2016-12-04 16:08:23', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(11, 'Log', '2016-12-04 16:08:26', '2016-12-04 16:08:26', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(12, 'Log', '2016-12-04 16:08:33', '2016-12-04 16:08:33', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(13, 'Log', '2016-12-04 16:08:36', '2016-12-04 16:08:36', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(14, 'Log', '2016-12-04 16:08:38', '2016-12-04 16:08:38', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(15, 'Log', '2016-12-04 16:08:55', '2016-12-04 16:08:55', 'GENERAL', 'EventPage_Controller::SignUpForm', 'SignUpForm', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1),
(16, 'Log', '2016-12-04 16:08:55', '2016-12-04 16:08:55', 'GENERAL', 'EventPage_Controller::doSignUp', 'SignUpForm', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Array\n(\n    [url] => /install_test/test3/birthday-party/SignUpForm\n    [Firstname] => Jan\n    [Lastname] => Reuteler\n    [Phonenumber] => Array\n        (\n            [Number] => 12345678\n        )\n\n    [Comment] => \n    [SecurityID] => bd02b7e9fd80589f0322c648e842c3ef49b0d943\n    [action_doSignup] => Sign up\n)\n', 1),
(17, 'Log', '2016-12-04 16:08:55', '2016-12-04 16:08:55', 'GENERAL', 'EventPage_Controller::SignUpForm', 'index', 'FE', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '::1', 'Generating form for frontend...', 1);

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
(1, 'Member', '2016-12-04 16:07:47', '2016-12-04 15:53:13', 'Default Admin', NULL, 'admin@adminOfNonExistingSite.com', NULL, NULL, NULL, NULL, 0, '2016-12-04 10:19:12', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, 'yyyy-MM-dd', 'H:mm'),
(2, 'Member', '2016-12-04 16:13:20', '2016-12-04 16:13:20', 'Default Admin', NULL, 'admin', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL);

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
(1, 'Permission', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'ADMIN', 0, 1, 2);

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
-- Table structure for table `rsvpfield`
--

DROP TABLE IF EXISTS `rsvpfield`;
CREATE TABLE `rsvpfield` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('RsvpField') DEFAULT 'RsvpField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Label` varchar(50) DEFAULT NULL,
  `FieldType` varchar(50) DEFAULT NULL,
  `DataType` varchar(50) DEFAULT NULL,
  `IsMandatory` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DoRemember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DefaultValue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rsvpfield`
--

INSERT INTO `rsvpfield` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Label`, `FieldType`, `DataType`, `IsMandatory`, `DoRemember`, `DefaultValue`) VALUES
(1, 'RsvpField', '2016-12-04 15:54:56', '2016-12-04 15:54:56', 'Firstname', NULL, '0', NULL, 1, 1, NULL),
(2, 'RsvpField', '2016-12-04 15:55:07', '2016-12-04 15:55:07', 'Lastname', NULL, '0', NULL, 1, 1, NULL),
(3, 'RsvpField', '2016-12-04 15:55:35', '2016-12-04 15:55:16', 'Email', NULL, '5', NULL, 1, 1, NULL),
(4, 'RsvpField', '2016-12-04 15:55:27', '2016-12-04 15:55:27', 'Comment', NULL, '1', NULL, 0, 0, NULL),
(5, 'RsvpField', '2016-12-04 16:06:55', '2016-12-04 15:55:51', 'Phonenumber', NULL, '6', NULL, 0, 1, NULL),
(6, 'RsvpField', '2016-12-04 15:56:06', '2016-12-04 15:56:06', 'Filefield', NULL, '7', NULL, 0, 0, NULL),
(7, 'RsvpField', '2016-12-04 15:57:41', '2016-12-04 15:56:23', 'Birthday', NULL, '3', NULL, 1, 1, NULL);

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
(1, 7, 1),
(2, 7, 2);

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
(1, 'RsvpNotification', '2016-12-04 16:02:38', '2016-12-04 16:01:42', 'Notificate Jan', 0, 'janreuteler@icloud.com', 1, 0, 1, 1, 0),
(2, 'RsvpNotification', '2016-12-04 16:08:05', '2016-12-04 16:08:01', 'Notificate Admin', 1, NULL, 0, 0, 0, 2, 1);

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
(1, 'RsvpRegistration', '2016-12-04 16:02:36', '2016-12-04 16:02:36', 1, 'a:8:{s:3:"url";s:44:"/install_test/test3/new-years-eve/SignUpForm";s:9:"Firstname";s:3:"Jan";s:8:"Lastname";s:8:"Reuteler";s:5:"Email";s:22:"janreuteler@icloud.com";s:8:"Birthday";s:10:"17.08.1984";s:7:"Comment";s:29:"Looking forward to the event!";s:10:"SecurityID";s:40:"bd02b7e9fd80589f0322c648e842c3ef49b0d943";s:15:"action_doSignup";s:7:"Sign up";}', 1),
(2, 'RsvpRegistration', '2016-12-04 16:08:55', '2016-12-04 16:08:55', 1, 'a:7:{s:3:"url";s:45:"/install_test/test3/birthday-party/SignUpForm";s:9:"Firstname";s:3:"Jan";s:8:"Lastname";s:8:"Reuteler";s:11:"Phonenumber";a:1:{s:6:"Number";s:8:"12345678";}s:7:"Comment";s:0:"";s:10:"SecurityID";s:40:"bd02b7e9fd80589f0322c648e842c3ef49b0d943";s:15:"action_doSignup";s:7:"Sign up";}', 2);

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
(1, 'SiteConfig', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'Your Site Name', 'your tagline here', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

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
(1, 'Page', '2016-12-04 15:59:06', '2016-12-04 15:53:13', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(2, 'EventPage', '2016-12-04 16:02:10', '2016-12-04 15:53:13', 'new-years-eve', ' New Year''s Eve ', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(3, 'EventPage', '2016-12-04 16:08:36', '2016-12-04 15:53:13', 'birthday-party', 'Birthday Party', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(4, 'ErrorPage', '2016-12-04 15:59:06', '2016-12-04 15:53:13', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-12-04 15:59:06', '2016-12-04 15:53:13', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

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
(1, 'Page', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(2, 'EventPage', '2016-12-04 16:02:10', '2016-12-04 15:53:13', 'new-years-eve', ' New Year''s Eve ', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(3, 'EventPage', '2016-12-04 16:08:36', '2016-12-04 15:53:13', 'birthday-party', 'Birthday Party', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(4, 'ErrorPage', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

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
(1, 1, 1, 1, 1, 1, 'Page', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 1, 1, 'Page', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 1, 1, 'Page', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 1, 1, 'ErrorPage', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 1, 1, 'ErrorPage', '2016-12-04 15:53:13', '2016-12-04 15:53:13', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 2, 2, 1, 1, 1, 'Page', '2016-12-04 15:53:56', '2016-12-04 15:53:13', 'new-years-eve', ' New Year''s Eve ', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 2, 3, 1, 1, 1, 'EventPage', '2016-12-04 15:54:05', '2016-12-04 15:53:13', 'new-years-eve', ' New Year''s Eve ', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 3, 2, 1, 1, 1, 'Page', '2016-12-04 15:54:30', '2016-12-04 15:53:13', 'birthday-party', 'Birthday Party', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 3, 3, 1, 1, 1, 'EventPage', '2016-12-04 15:54:37', '2016-12-04 15:53:13', 'birthday-party', 'Birthday Party', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 2, 4, 1, 1, 1, 'EventPage', '2016-12-04 16:02:10', '2016-12-04 15:53:13', 'new-years-eve', ' New Year''s Eve ', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 3, 4, 1, 1, 1, 'EventPage', '2016-12-04 16:08:36', '2016-12-04 15:53:13', 'birthday-party', 'Birthday Party', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0);

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
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `eventimage`
--
ALTER TABLE `eventimage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `ClassName` (`ClassName`);

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
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eventimage`
--
ALTER TABLE `eventimage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eventpage`
--
ALTER TABLE `eventpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eventpage_live`
--
ALTER TABLE `eventpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eventpage_versions`
--
ALTER TABLE `eventpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `event_eventfiles`
--
ALTER TABLE `event_eventfiles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_eventimages`
--
ALTER TABLE `event_eventimages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `event_rsvpfields`
--
ALTER TABLE `event_rsvpfields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_roles`
--
ALTER TABLE `group_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
-- AUTO_INCREMENT for table `rsvpfield`
--
ALTER TABLE `rsvpfield`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rsvpfield_defaultsetconfigs`
--
ALTER TABLE `rsvpfield_defaultsetconfigs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
