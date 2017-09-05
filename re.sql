-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.12.223.2:3306
-- Generation Time: Sep 05, 2017 at 02:32 PM
-- Server version: 5.5.52
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recreation`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance_sheet`
--

CREATE TABLE IF NOT EXISTS `balance_sheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credited_amount` double DEFAULT NULL,
  `credited_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `balance_sheet_user_Id_fk_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `balance_sheet`
--

INSERT INTO `balance_sheet` (`id`, `credited_amount`, `credited_date`, `user_id`) VALUES
(1, 200, '2017-05-22 03:49:15', 3),
(2, 200, '2017-05-22 09:47:17', 6),
(3, 200, '2017-05-22 09:47:58', 4),
(4, 200, '2017-05-24 03:05:11', 8),
(5, 100, '2017-05-24 11:48:25', 2),
(6, 30, '2017-05-26 08:08:01', 3),
(7, 200, '2017-05-29 04:46:42', 7),
(8, 150, '2017-05-29 08:04:23', 10),
(9, 85, '2017-06-01 03:19:18', 2),
(10, 200, '2017-06-01 05:34:10', 5),
(11, 100, '2017-06-01 08:52:48', 1),
(12, 400, '2017-06-02 08:07:55', 3),
(13, 35, '2017-06-06 02:59:08', 6),
(14, 200, '2017-06-08 08:57:37', 4),
(15, 200, '2017-06-12 08:52:10', 8),
(16, 40, '2017-06-12 10:51:46', 6),
(17, 150, '2017-06-13 08:56:12', 6),
(18, 200, '2017-06-14 02:18:19', 11),
(19, 40, '2017-06-15 11:12:31', 2),
(20, 230, '2017-06-15 11:12:58', 5),
(21, 100, '2017-06-16 11:26:30', 3),
(22, 200, '2017-06-22 10:40:55', 1),
(23, 200, '2017-06-27 03:12:32', 11),
(24, 200, '2017-06-29 10:26:05', 8),
(25, 200, '2017-06-29 10:29:18', 6),
(26, 100, '2017-07-04 10:11:56', 9),
(27, 20, '2017-07-04 10:18:23', 3),
(28, 100, '2017-07-05 06:59:05', 11),
(29, 100, '2017-07-05 06:59:32', 4),
(30, 25, '2017-07-06 08:38:09', 2),
(31, 200, '2017-07-06 10:12:46', 1),
(32, 50, '2017-07-06 10:50:01', 6),
(33, 50, '2017-07-06 10:50:10', 5),
(34, 75, '2017-07-07 08:27:06', 4),
(35, 200, '2017-07-07 08:28:12', 2),
(36, 300, '2017-07-12 08:24:47', 8),
(37, 500, '2017-07-14 10:07:47', 3),
(38, 200, '2017-07-14 10:07:56', 6),
(39, 200, '2017-07-17 08:49:52', 4),
(40, 200, '2017-07-18 08:52:43', 12),
(41, 500, '2017-07-18 09:01:19', 13),
(42, 120, '2017-07-18 11:16:39', 6),
(43, 40, '2017-07-18 11:16:48', 4),
(44, 300, '2017-07-19 10:25:07', 11),
(45, 300, '2017-07-21 03:01:36', 2),
(46, 300, '2017-08-02 09:34:59', 1),
(47, 200, '2017-08-08 09:45:26', 13),
(48, 500, '2017-08-08 09:45:44', 8),
(49, 200, '2017-08-09 08:22:08', 12),
(50, 300, '2017-08-09 08:22:16', 3),
(51, 300, '2017-08-09 08:33:43', 5),
(52, 300, '2017-08-09 10:16:02', 14),
(53, 50, '2017-08-09 10:16:32', 2),
(54, 300, '2017-08-10 05:28:15', 11),
(55, 300, '2017-08-16 10:59:44', 2),
(56, 55, '2017-08-17 10:16:56', 5),
(57, 15, '2017-08-17 10:17:16', 10),
(58, 25, '2017-08-17 10:21:35', 5),
(59, 2.5, '2017-08-17 10:21:46', 2),
(60, 100, '2017-08-22 09:53:50', 11),
(61, 60, '2017-08-23 08:43:12', 10),
(62, 150, '2017-08-23 08:44:28', 6),
(63, 500, '2017-08-24 07:31:17', 4),
(64, 50, '2017-08-29 07:38:50', 8),
(65, 100, '2017-08-30 08:04:55', 15),
(66, 500, '2017-09-04 09:35:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_expenses`
--

CREATE TABLE IF NOT EXISTS `daily_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `expense_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_expenses_user_id_fk_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=452 ;

--
-- Dumping data for table `daily_expenses`
--

INSERT INTO `daily_expenses` (`id`, `description`, `amount`, `expense_date`, `user_id`) VALUES
(1, 'Puff', 25, '2017-05-22 03:48:24', 3),
(2, 'Mamra', 10, '2017-05-22 03:48:43', 7),
(3, 'Puff + Cheese Chutney Grill', 32.5, '2017-05-22 03:54:05', 5),
(4, 'Puff', 12.5, '2017-05-22 03:54:05', 4),
(5, 'Puff', 25, '2017-05-22 04:16:14', 6),
(6, 'Vegitable Sandwich (Grill)', 50, '2017-05-22 11:03:21', 3),
(7, 'Mamra', 5, '2017-05-22 11:04:56', 7),
(8, 'Cheese Chutney Grill', 50, '2017-05-22 11:04:57', 6),
(9, 'Sabudana-Khichdi + Dahi', 35, '2017-05-22 11:04:59', 4),
(10, 'Cholafali', 24.29, '2017-05-23 08:39:51', 1),
(11, 'Cholafali', 24.29, '2017-05-23 08:39:53', 2),
(12, 'Cholafali', 24.29, '2017-05-23 08:39:54', 3),
(13, 'Cholafali', 24.29, '2017-05-23 08:39:56', 4),
(14, 'Cholafali', 24.29, '2017-05-23 08:39:57', 6),
(15, 'Mamra', 5, '2017-05-23 08:40:00', 7),
(16, 'Cholafali', 24.29, '2017-05-23 08:40:02', 8),
(17, 'Cholafali', 24.29, '2017-05-23 08:40:48', 9),
(18, 'Mamra', 10, '2017-05-24 11:42:55', 1),
(19, 'Farali Chevdo', 10, '2017-05-24 11:43:10', 3),
(20, 'Farali Chevdo', 10, '2017-05-24 11:43:14', 4),
(21, 'Mamra', 10, '2017-05-24 11:43:16', 6),
(22, 'Farali Chevdo', 10, '2017-05-24 11:43:23', 7),
(23, 'Vadapav', 25, '2017-05-24 11:43:28', 8),
(24, 'Farali Chevdo', 10, '2017-05-26 08:05:07', 6),
(25, 'Farali Chevdo', 10, '2017-05-26 08:05:11', 5),
(26, 'Farali Chevdo', 10, '2017-05-26 08:05:15', 3),
(27, 'Farali Chevdo', 10, '2017-05-29 07:38:03', 10),
(28, 'Sabudana-Khichdi', 25, '2017-05-29 08:22:12', 10),
(29, 'Sev puri', 30, '2017-05-29 08:22:16', 6),
(30, 'Veg. Sandwich', 25, '2017-05-29 08:22:21', 5),
(31, 'Sabudana-Khichdi + Dahi', 35, '2017-05-29 08:22:31', 4),
(32, 'Veg. Sandwich', 25, '2017-05-29 08:22:41', 3),
(33, 'Puff', 25, '2017-05-30 09:06:47', 1),
(34, 'Puff', 25, '2017-05-30 09:06:52', 2),
(35, 'Puff', 25, '2017-05-30 09:06:55', 3),
(36, 'Puff', 25, '2017-05-30 09:06:59', 5),
(37, 'Puff', 25, '2017-05-31 10:01:50', 8),
(38, 'Watermelon', 20, '2017-05-31 10:01:54', 5),
(39, 'Puff', 25, '2017-05-31 10:02:02', 4),
(40, 'Watermelon', 20, '2017-05-31 10:02:06', 3),
(41, 'Puff', 25, '2017-05-31 10:02:09', 1),
(42, 'Kela Wafer', 10, '2017-06-01 10:48:21', 1),
(43, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:31', 2),
(44, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:36', 3),
(45, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:42', 4),
(46, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:46', 5),
(47, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:49', 6),
(48, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:52', 8),
(49, 'Cholafali + mamra', 22.86, '2017-06-01 10:48:57', 10),
(50, 'Dabeli', 33.56, '2017-06-02 11:24:55', 1),
(51, 'Dabeli', 33.56, '2017-06-02 11:25:01', 2),
(52, 'Dabeli', 33.56, '2017-06-02 11:25:04', 3),
(53, 'Dabeli', 33.56, '2017-06-02 11:25:07', 4),
(54, 'Dabeli', 33.56, '2017-06-02 11:25:10', 5),
(55, 'Dabeli', 33.56, '2017-06-02 11:25:13', 6),
(56, 'DabeliDabeli', 33.56, '2017-06-02 11:25:18', 8),
(57, 'Dabeli', 33.56, '2017-06-02 11:25:21', 9),
(58, 'Dabeli', 33.56, '2017-06-02 11:25:24', 10),
(59, 'Puff', 25, '2017-06-06 02:59:22', 6),
(60, 'Farali Chevdo', 10, '2017-06-06 02:59:37', 3),
(61, 'Mamra', 10, '2017-06-06 09:50:28', 1),
(62, 'Sandwich', 25, '2017-06-06 09:50:34', 3),
(63, 'Mamra', 10, '2017-06-06 09:50:42', 4),
(64, 'Mamra', 10, '2017-06-06 09:50:50', 6),
(65, 'Mamra', 5, '2017-06-06 09:50:58', 7),
(66, 'Mamra', 10, '2017-06-06 09:51:01', 8),
(67, 'Khari Buiscuit', 15, '2017-06-07 10:03:19', 1),
(68, 'Khari Buiscuit', 15, '2017-06-07 10:03:21', 2),
(69, 'Khari Buiscuit', 15, '2017-06-07 10:03:22', 3),
(70, 'Khari Buiscuit', 15, '2017-06-07 10:03:24', 4),
(71, 'Khari Buiscuit', 15, '2017-06-07 10:03:25', 6),
(72, 'Khari Buiscuit', 15, '2017-06-07 10:03:27', 8),
(73, 'Sing', 13.34, '2017-06-12 10:53:25', 2),
(74, 'Sing', 13.34, '2017-06-12 10:53:32', 4),
(75, 'Sing', 13.34, '2017-06-12 10:53:36', 6),
(76, 'Cholafali + mamra', 28, '2017-06-12 10:55:32', 1),
(77, 'Cholafali + mamra', 28, '2017-06-12 10:55:36', 3),
(78, 'Mamra', 10, '2017-06-12 10:55:41', 4),
(79, 'Cholafali + mamra', 28, '2017-06-12 10:55:45', 6),
(80, 'Mamra', 10, '2017-06-12 10:55:50', 7),
(81, 'Cholafali + mamra', 28, '2017-06-12 10:55:54', 8),
(82, 'Cholafali + mamra', 28, '2017-06-12 10:55:58', 11),
(83, 'Puff', 25, '2017-06-13 10:42:00', 1),
(84, 'Mamra', 10, '2017-06-13 10:42:03', 2),
(85, 'Puff', 25, '2017-06-13 10:42:07', 3),
(86, 'Mamra', 10, '2017-06-13 10:42:11', 4),
(87, 'Puff', 25, '2017-06-13 10:42:21', 6),
(88, 'Cheese aloomuter Sandwich', 55, '2017-06-13 10:42:25', 8),
(89, 'Puff', 25, '2017-06-13 10:42:28', 11),
(90, 'Sev puri', 30, '2017-06-14 09:50:57', 1),
(91, 'Sev puri', 30, '2017-06-14 09:51:04', 3),
(92, 'Sev puri', 30, '2017-06-14 09:51:12', 6),
(93, 'Mamra', 10, '2017-06-14 09:51:19', 8),
(94, 'Puff', 25, '2017-06-14 09:51:26', 10),
(95, 'Puff', 25, '2017-06-14 09:51:29', 11),
(96, 'Puff', 25, '2017-06-15 11:09:47', 2),
(97, 'Panipuri', 20, '2017-06-15 11:09:49', 3),
(98, 'Mamra', 10, '2017-06-15 11:09:51', 4),
(99, 'Puff', 25, '2017-06-15 11:09:53', 11),
(100, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:46', 2),
(101, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:48', 3),
(102, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:50', 4),
(103, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:51', 5),
(104, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:53', 6),
(105, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:55', 8),
(106, 'Samosa + Kachori', 32.86, '2017-06-15 11:11:57', 9),
(107, 'Ganthiya', 16.67, '2017-06-16 11:25:37', 1),
(108, 'Ganthiya', 16.67, '2017-06-16 11:25:42', 2),
(109, 'Ganthiya', 16.67, '2017-06-16 11:25:47', 3),
(110, 'Ganthiya', 16.67, '2017-06-16 11:25:54', 5),
(111, 'Ganthiya', 16.67, '2017-06-16 11:25:57', 6),
(112, 'Ganthiya', 16.67, '2017-06-16 11:26:02', 11),
(113, 'Khakhra', 60, '2017-06-19 03:04:10', 4),
(114, 'Lunch', 60, '2017-06-20 08:38:11', 4),
(115, 'Ganthiya', 28.58, '2017-06-20 10:12:09', 1),
(116, 'Ganthiya', 28.58, '2017-06-20 10:12:11', 2),
(117, 'Ganthiya', 28.58, '2017-06-20 10:12:13', 3),
(118, 'Watermelon', 40, '2017-06-20 10:12:15', 4),
(119, 'Ganthiya', 28.58, '2017-06-20 10:12:17', 5),
(120, 'Ganthiya', 28.58, '2017-06-20 10:12:23', 6),
(121, 'Watermelon', 20, '2017-06-20 10:12:31', 8),
(122, 'Ganthiya', 28.58, '2017-06-20 10:12:33', 10),
(123, 'Ganthiya', 28.58, '2017-06-20 10:12:35', 11),
(124, 'Puff', 12, '2017-06-21 10:51:42', 11),
(125, 'Aaloo mutter plain', 30, '2017-06-21 10:51:44', 8),
(126, 'Mamra', 10, '2017-06-21 10:51:46', 6),
(127, 'Cheese Chutny', 55, '2017-06-21 10:51:48', 3),
(128, 'Puff', 13, '2017-06-21 10:51:50', 1),
(129, 'Kela Wafer', 10, '2017-06-22 10:40:18', 11),
(130, 'Pakodi', 20, '2017-06-22 10:40:21', 8),
(131, 'Pakodi', 20, '2017-06-22 10:40:24', 6),
(132, 'Pakodi', 20, '2017-06-22 10:40:27', 3),
(133, 'Pakodi', 20, '2017-06-22 10:40:29', 2),
(134, 'Kela Wafer', 10, '2017-06-22 10:40:31', 1),
(135, 'Bread, butter, chutney, cheese', 57.75, '2017-06-23 10:35:55', 11),
(136, 'Bread, butter, chutney, cheese', 57.75, '2017-06-23 10:36:04', 6),
(137, 'Bread, butter, chutney, cheese', 57.75, '2017-06-23 10:36:13', 2),
(138, 'Bread, butter, chutney, cheese', 57.75, '2017-06-23 10:36:16', 3),
(139, 'Veg. Sandwich', 25, '2017-06-23 10:36:41', 8),
(140, 'Cholafali + mamra', 25, '2017-06-28 11:40:49', 2),
(141, 'Cholafali + mamra', 25, '2017-06-28 11:40:53', 3),
(142, 'Cholafali + mamra', 25, '2017-06-28 11:40:57', 6),
(143, 'Cholafali + mamra', 25, '2017-06-28 11:41:02', 8),
(144, 'Cholafali + mamra', 25, '2017-06-28 11:41:07', 11),
(145, 'Watermelon', 20, '2017-06-29 10:11:12', 3),
(146, 'Watermelon', 20, '2017-06-29 10:11:16', 5),
(147, 'Watermelon', 20, '2017-06-29 10:11:19', 8),
(148, 'Puff', 25, '2017-06-29 10:11:23', 11),
(149, 'Puff', 25, '2017-06-30 11:44:12', 2),
(150, 'Piff', 25, '2017-06-30 11:44:16', 3),
(151, 'Puff', 25, '2017-06-30 11:44:21', 6),
(152, 'Puff', 25, '2017-06-30 11:44:26', 8),
(153, 'Puff', 25, '2017-06-30 11:44:31', 11),
(154, 'Puff', 30, '2017-07-03 12:17:15', 1),
(155, 'Farali Chevdo', 10, '2017-07-03 12:17:16', 2),
(156, 'Farali Chevdo', 20, '2017-07-03 12:17:17', 3),
(157, 'Sing Bhujiya', 10, '2017-07-03 12:17:18', 6),
(158, 'Puff', 30, '2017-07-03 12:17:20', 11),
(159, 'Cheese Puff', 30, '2017-07-04 10:16:58', 1),
(160, 'Pan', 25, '2017-07-04 10:16:59', 2),
(161, 'Mamra', 20, '2017-07-04 10:17:02', 4),
(162, 'Mix Fruit Dish', 30, '2017-07-04 10:17:03', 5),
(163, 'Mamra', 10, '2017-07-04 10:17:05', 7),
(164, 'Panipuri', 20, '2017-07-04 10:17:06', 8),
(165, 'Cheese Puff', 30, '2017-07-04 10:17:09', 11),
(166, 'Sabudana Khichdi', 40, '2017-07-06 10:11:57', 1),
(167, 'Mamra', 10, '2017-07-06 10:12:00', 4),
(168, 'Cheese chutny grill sandwich', 80, '2017-07-06 10:12:03', 5),
(169, 'Cheese chutny grill sandwich', 80, '2017-07-06 10:12:05', 6),
(170, 'Cheese grill sandwich', 50, '2017-07-06 10:12:07', 8),
(171, 'Pauva', 25, '2017-07-07 08:27:41', 1),
(172, 'Pauva', 25, '2017-07-07 08:27:43', 2),
(173, 'Pauva', 25, '2017-07-07 08:27:44', 4),
(174, 'Cholafali', 28, '2017-07-07 10:25:28', 1),
(175, 'Puff', 25, '2017-07-07 10:25:33', 2),
(176, 'Puff', 25, '2017-07-07 10:25:35', 4),
(177, 'Cholafali', 28, '2017-07-07 10:25:37', 5),
(178, 'Cholafali', 28, '2017-07-07 10:25:39', 6),
(179, 'Cholafali', 28, '2017-07-07 10:25:42', 8),
(180, 'Cholafali', 28, '2017-07-07 10:25:45', 11),
(181, 'Mio Puff (10th, July)', 25, '2017-07-11 02:50:11', 1),
(182, 'Puff (10th, July)', 25, '2017-07-11 02:50:15', 4),
(183, 'Panipuri (10th, July)', 20, '2017-07-11 02:50:19', 6),
(184, 'Panipuri (10th, July)', 20, '2017-07-11 02:50:22', 8),
(185, 'Mio Puff (10th, July)', 25, '2017-07-11 02:50:26', 11),
(186, 'Mio Puff', 50, '2017-07-11 10:43:41', 4),
(187, 'Mio Puff', 50, '2017-07-11 10:43:47', 8),
(188, 'Puff', 25, '2017-07-12 09:46:56', 2),
(189, 'Mio Puff', 50, '2017-07-12 09:46:59', 4),
(190, 'Aloo muter plain', 30, '2017-07-12 09:47:02', 8),
(191, 'Aloo muter plain', 30, '2017-07-12 09:47:04', 10),
(192, 'Farali Chevdo', 10, '2017-07-13 10:41:35', 2),
(193, 'Puff', 25, '2017-07-13 10:41:36', 3),
(194, 'Mio Puff', 50, '2017-07-13 10:41:39', 4),
(195, 'Sabudana Khichdi  + Dahi', 30, '2017-07-13 10:41:52', 5),
(196, 'Mio Puff', 50, '2017-07-13 10:41:54', 6),
(197, 'Water melon', 20, '2017-07-13 10:41:58', 8),
(198, 'Puff', 25, '2017-07-13 10:42:04', 11),
(199, 'Mio Puff', 25, '2017-07-14 11:35:50', 1),
(200, 'Puff', 12.5, '2017-07-14 11:35:51', 2),
(201, 'Sing Bhujiya + Ratlami sev', 20, '2017-07-14 11:35:53', 3),
(202, 'Puff', 12.5, '2017-07-14 11:35:54', 5),
(203, 'Puff', 25, '2017-07-14 11:35:56', 6),
(204, 'Sing Bhujiya + Cheese Puff', 70, '2017-07-14 11:35:58', 8),
(205, 'Mio Puff', 25, '2017-07-14 11:36:00', 11),
(206, 'Mio Puff', 25, '2017-07-17 10:26:09', 1),
(207, 'Puff', 25, '2017-07-17 10:26:11', 2),
(208, 'Puff', 25, '2017-07-17 10:26:13', 3),
(209, 'Puff', 25, '2017-07-17 10:26:15', 4),
(210, 'Cheese Chutny Grill', 20, '2017-07-17 10:26:16', 5),
(211, 'Cholafali', 20, '2017-07-17 10:26:18', 6),
(212, 'Panipuri', 30, '2017-07-17 10:26:21', 8),
(213, 'Mio Puff', 25, '2017-07-17 10:26:23', 11),
(214, 'Cheese Chutny Grill', 50, '2017-07-17 10:26:25', 12),
(215, 'Cheese Chutny Grill', 35, '2017-07-18 10:43:52', 1),
(216, 'Sev Puri', 30, '2017-07-18 10:43:54', 2),
(217, 'Sev Puri', 30, '2017-07-18 10:43:56', 3),
(218, 'Cheese Chutny Grill', 35, '2017-07-18 10:43:59', 11),
(219, 'Sev Puri', 30, '2017-07-18 10:44:04', 12),
(220, 'Puff', 60, '2017-07-18 11:16:09', 13),
(221, 'Sev Puri', 30, '2017-07-19 10:23:51', 1),
(222, 'Mamra', 10, '2017-07-19 10:23:58', 2),
(223, 'Puff', 25, '2017-07-19 10:24:06', 4),
(224, 'Panipuri', 20, '2017-07-19 10:24:10', 6),
(225, 'Cholafali', 30, '2017-07-19 10:24:13', 8),
(226, 'Sev Puri', 30, '2017-07-19 10:24:16', 11),
(227, 'Puff', 25, '2017-07-19 10:24:18', 13),
(228, 'Farali Chevdo', 10, '2017-07-20 10:19:03', 1),
(229, 'Farali Chevdo', 10, '2017-07-20 10:19:05', 2),
(230, 'Farali Chevdo + Sing Bhujiya', 20, '2017-07-20 10:19:07', 3),
(231, 'Mio Puff', 50, '2017-07-20 10:19:09', 4),
(232, 'Mamra', 10, '2017-07-20 10:19:11', 6),
(233, 'Cheese aloo mutter grill', 80, '2017-07-20 10:19:14', 8),
(234, 'Puff', 25, '2017-07-20 10:19:17', 11),
(235, 'Farali Chevdo', 10, '2017-07-20 10:19:19', 12),
(236, 'Puff', 25, '2017-07-20 10:19:21', 13),
(237, 'Lunch + Butter Milk', 82, '2017-07-21 03:02:01', 2),
(238, '2 Puff  + sevpuri', 80, '2017-07-21 14:20:05', 13),
(239, 'Panipuri', 20, '2017-07-21 14:20:08', 12),
(240, 'Puff', 25, '2017-07-21 14:20:11', 11),
(241, 'Panipuri', 30, '2017-07-21 14:20:15', 8),
(242, 'Panipuri', 20, '2017-07-21 14:20:17', 6),
(243, 'Panipuri', 20, '2017-07-21 14:20:21', 3),
(244, 'Ratlami sev + farali chevdo (21th July, 2017)', 20, '2017-07-24 08:54:20', 5),
(245, 'Ratlami sev (21th July, 2017)', 10, '2017-07-24 08:54:48', 7),
(246, 'Farali chevdo', 10, '2017-07-24 11:51:20', 11),
(247, 'Farali chevdo + kela wafer', 20, '2017-07-24 11:51:44', 13),
(248, 'Cheese Chutny Grill', 35, '2017-07-25 10:30:35', 1),
(249, 'Cheese Chutny Grill', 35, '2017-07-25 10:30:37', 2),
(250, 'Cheese Chutny Grill', 35, '2017-07-25 10:30:40', 3),
(251, 'Farali Chevdo', 10, '2017-07-25 10:30:42', 4),
(252, 'Cheese Chutny Grill', 35, '2017-07-25 10:30:46', 11),
(253, 'Mio Puff', 25, '2017-07-26 09:22:51', 1),
(254, 'Mamra', 10, '2017-07-26 09:22:52', 2),
(255, 'Puff', 25, '2017-07-26 09:22:54', 3),
(256, 'Sabudana Khichdi + Dahi', 30, '2017-07-26 09:22:55', 4),
(257, 'Sabudana Khichdi', 20, '2017-07-26 09:22:57', 6),
(258, 'Sabudana Khichdi', 20, '2017-07-26 09:22:58', 8),
(259, 'Mio Puff', 25, '2017-07-26 09:23:00', 11),
(260, 'Sabudana Khichdi * 2', 40, '2017-07-26 09:23:02', 13),
(261, 'Cheese Chutny Grill', 17.5, '2017-07-26 09:34:51', 4),
(262, 'Cheese Chutny Grill', 17.5, '2017-07-26 09:34:53', 5),
(263, 'Cheese Chutny Grill', 35, '2017-07-26 09:34:56', 12),
(264, 'Mio Puff', 25, '2017-07-28 10:08:00', 11),
(265, 'Banana Chips', 10, '2017-07-28 10:08:03', 8),
(266, 'Sabudana Khichdi', 20, '2017-07-28 10:08:06', 6),
(267, 'Aloo Sev', 10, '2017-07-28 10:08:09', 3),
(268, 'Mio Puff', 25, '2017-07-28 10:08:12', 1),
(269, 'Farali pizza', 90, '2017-07-31 10:42:37', 13),
(270, 'Sing + Panipuri', 30, '2017-07-31 10:42:46', 12),
(271, 'Farali chevdo', 10, '2017-07-31 10:42:51', 11),
(272, 'Farali pizza', 90, '2017-07-31 10:42:59', 8),
(273, 'Gopal vadka', 5, '2017-07-31 10:43:05', 7),
(274, 'Sing', 10, '2017-07-31 10:43:13', 5),
(275, 'Mamra', 10, '2017-07-31 10:43:18', 4),
(276, 'Sing + masala mamra + Panipuri', 40, '2017-07-31 10:43:25', 3),
(277, 'Mamra', 10, '2017-07-31 10:43:31', 2),
(278, 'Kela wafer', 10, '2017-07-31 10:43:33', 1),
(279, 'Cheese Puff', 25, '2017-08-01 09:59:16', 1),
(280, 'Chana', 50, '2017-08-01 09:59:24', 3),
(281, 'Chana + Mamra', 60, '2017-08-01 09:59:26', 4),
(282, 'Sabudana Khichdi', 20, '2017-08-01 09:59:29', 6),
(283, 'Cheese puff', 25, '2017-08-01 09:59:31', 11),
(284, 'Mio Puff', 50, '2017-08-01 09:59:33', 13),
(285, 'Vadapav', 18, '2017-08-02 09:32:48', 1),
(286, 'Sabudana Khichdi', 20, '2017-08-02 09:32:49', 2),
(287, 'Puff', 25, '2017-08-02 09:32:51', 3),
(288, 'Mamra', 10, '2017-08-02 09:32:53', 4),
(289, 'Sabudana Khichdi', 20, '2017-08-02 09:32:55', 6),
(290, 'Vadapav', 18, '2017-08-02 09:32:58', 11),
(291, 'Farali Chevdo', 10, '2017-08-02 09:33:01', 12),
(292, 'Kela Wafer', 10, '2017-08-02 09:33:02', 13),
(293, 'Cholafali', 20, '2017-08-03 10:06:56', 13),
(294, 'Mamra', 10, '2017-08-03 10:06:58', 12),
(295, 'Cholafali', 20, '2017-08-03 10:07:00', 11),
(296, 'Cholafali', 20, '2017-08-03 10:07:02', 7),
(297, 'Sabudana Vada', 30, '2017-08-03 10:07:03', 6),
(298, 'Mamra', 10, '2017-08-03 10:07:05', 2),
(299, 'Farali Chevdo', 10, '2017-08-03 10:07:07', 1),
(300, 'Sabji', 20, '2017-08-04 04:59:50', 7),
(301, 'Puff', 25, '2017-08-04 10:06:23', 12),
(302, 'Puff', 25, '2017-08-04 10:06:26', 11),
(303, 'Kela Wafer', 10, '2017-08-04 10:06:28', 8),
(304, 'Gopal Vadka', 5, '2017-08-04 10:06:30', 7),
(305, 'Sabudana Khichdi', 20, '2017-08-04 10:06:31', 6),
(306, 'Sabudana Khichdi', 20, '2017-08-04 10:06:33', 3),
(307, 'Farali bhel + mio puff', 85, '2017-08-04 11:59:09', 13),
(308, 'Kela Wafer', 10, '2017-08-08 10:43:53', 1),
(309, 'Mamra', 10, '2017-08-08 10:43:55', 2),
(310, 'Masala Sing', 10, '2017-08-08 10:43:56', 6),
(311, 'Masala Sing + Kela wafer', 20, '2017-08-08 10:43:58', 8),
(312, 'Sing Bhujiya', 10, '2017-08-08 10:44:00', 11),
(313, 'Wheel', 5, '2017-08-08 10:44:01', 13),
(314, 'Butter Milk', 14, '2017-08-09 03:18:12', 8),
(315, 'Salted Wafer', 10, '2017-08-09 09:08:23', 14),
(316, 'Wheel', 10, '2017-08-09 09:08:24', 13),
(317, 'Panipuri', 15, '2017-08-09 09:08:26', 12),
(318, 'Ganthiya', 5, '2017-08-09 09:08:27', 11),
(319, 'Masala Sing', 10, '2017-08-09 09:08:28', 8),
(320, 'Panipuri', 15, '2017-08-09 09:08:30', 3),
(321, 'Ganthiya', 5, '2017-08-09 09:08:31', 1),
(322, 'Mamra', 10, '2017-08-09 10:17:27', 12),
(323, 'Farali Chevdo', 10, '2017-08-09 10:17:33', 4),
(324, 'Farali Chevdo', 20, '2017-08-09 10:17:39', 3),
(325, 'Panipuri + Farali Chevdo', 20, '2017-08-09 10:17:54', 2),
(326, 'Veg. Sandwich', 17.5, '2017-08-11 10:35:21', 1),
(327, 'Masala Puff', 30, '2017-08-11 10:35:22', 5),
(328, 'Farali chevdo', 10, '2017-08-11 10:35:24', 6),
(329, 'Farali Pizza', 95, '2017-08-11 10:35:25', 8),
(330, 'Veg. Sandwich', 17.5, '2017-08-11 10:35:27', 11),
(331, 'Kela wafer', 10, '2017-08-11 10:35:29', 13),
(332, 'Mio Puff', 50, '2017-08-16 11:02:37', 1),
(333, 'Mamra', 10, '2017-08-16 11:02:39', 2),
(334, 'Mamra + farali chevdo', 20, '2017-08-16 11:02:41', 4),
(335, 'Farali chevdo', 10, '2017-08-16 11:02:43', 6),
(336, 'Kela wafer', 10, '2017-08-16 11:02:46', 8),
(337, 'Salted wafer', 20, '2017-08-16 11:02:48', 13),
(338, 'Mio Puff', 50, '2017-08-16 11:02:50', 14),
(339, 'Mio Puff', 22.5, '2017-08-17 10:15:57', 1),
(340, 'Mamra', 10, '2017-08-17 10:16:00', 4),
(341, 'Sabudana Khichdi', 20, '2017-08-17 10:16:02', 6),
(342, 'Kela wafer', 10, '2017-08-17 10:16:04', 8),
(343, 'Mio Puff', 22.5, '2017-08-17 10:16:07', 11),
(344, 'Deva''s', 15, '2017-08-17 10:18:51', 3),
(345, 'Deva''s', 30, '2017-08-17 10:18:56', 6),
(346, 'Deva''s', 25, '2017-08-17 10:18:59', 12),
(347, 'Deva''s', 27.5, '2017-08-17 10:20:42', 4),
(348, 'Lunch', 70, '2017-08-18 05:28:10', 4),
(349, 'Mamra (18/08/2017)', 10, '2017-08-21 03:19:27', 2),
(350, 'Puff (18/08/2017)', 30, '2017-08-21 03:19:29', 3),
(351, 'Farali Bhel (18/08/2017)', 30, '2017-08-21 03:19:31', 6),
(352, 'Sabudana Vada (18/08/2017)', 30, '2017-08-21 03:19:33', 8),
(353, 'Kela wafer + salted wafer + masala sing', 20, '2017-08-21 10:35:57', 1),
(354, 'Panipuri', 28.34, '2017-08-21 10:35:59', 2),
(355, 'Panipuri', 28.34, '2017-08-21 10:36:01', 3),
(356, 'Kharising', 30, '2017-08-21 10:36:03', 4),
(357, 'Panipuri', 28.34, '2017-08-21 10:36:05', 5),
(358, 'Farali chevdo', 10, '2017-08-21 10:36:06', 6),
(359, 'Mamra', 10, '2017-08-21 10:36:08', 7),
(360, 'Kela wafer', 10, '2017-08-21 10:36:09', 8),
(361, 'Panipuri', 28.34, '2017-08-21 10:36:40', 12),
(362, 'Kela wafer', 10, '2017-08-21 10:36:44', 13),
(363, 'Panipuri', 28.34, '2017-08-21 10:36:47', 14),
(364, '(Kela + salted) wafer + sing + panipuri', 38.34, '2017-08-21 10:39:08', 11),
(365, 'Cholafali', 24.55, '2017-08-22 09:57:49', 1),
(366, 'Cholafali', 24.55, '2017-08-22 09:57:54', 2),
(367, 'Cholafali', 24.55, '2017-08-22 09:57:57', 3),
(368, 'Cholafali', 24.55, '2017-08-22 09:58:06', 5),
(369, 'Cholafali', 24.55, '2017-08-22 09:58:10', 6),
(370, 'Cholafali', 24.55, '2017-08-22 09:58:15', 8),
(371, 'Cholafali', 24.55, '2017-08-22 09:58:22', 9),
(372, 'Cholafali', 24.55, '2017-08-22 09:58:26', 10),
(373, 'Cholafali', 24.55, '2017-08-22 09:58:30', 11),
(374, 'Sevpuri', 30, '2017-08-22 09:58:36', 12),
(375, 'Cholafali', 24.55, '2017-08-22 09:58:39', 13),
(376, 'Cholafali', 24.55, '2017-08-22 09:58:43', 14),
(377, 'Lunch (22-08-2017, Tue)', 70, '2017-08-23 03:26:37', 4),
(378, 'Mio Puff', 22.5, '2017-08-23 10:38:03', 1),
(379, 'Puff', 30, '2017-08-23 10:38:07', 2),
(380, 'Puff', 25, '2017-08-23 10:38:12', 3),
(381, 'Puff', 30, '2017-08-23 10:38:17', 4),
(382, 'Panipuri', 20, '2017-08-23 10:38:20', 6),
(383, 'Farali chevdo', 10, '2017-08-23 10:38:24', 7),
(384, 'Mio Puff', 45, '2017-08-23 10:38:27', 8),
(385, 'Mio Puff', 45, '2017-08-23 10:38:29', 10),
(386, 'Mio Puff', 22.5, '2017-08-23 10:38:32', 11),
(387, 'Butter Vadapav', 35, '2017-08-23 10:38:36', 13),
(388, 'Sevpuri', 30, '2017-08-24 07:45:33', 14),
(389, 'Ratlami Sev', 10, '2017-08-24 07:45:48', 5),
(390, 'Mio Puff', 50, '2017-08-24 09:59:26', 1),
(391, 'Cheese Chutny Grill', 25, '2017-08-24 09:59:29', 2),
(392, 'Cheese Chutny Grill', 25, '2017-08-24 09:59:32', 3),
(393, 'Cheese Chutny Grill', 50, '2017-08-24 09:59:34', 4),
(394, 'Cheese Chutny Grill', 25, '2017-08-24 09:59:37', 6),
(395, 'Mamra', 10, '2017-08-24 09:59:39', 7),
(396, 'Cheese Chutny Grill + Mamra', 35, '2017-08-24 09:59:42', 8),
(397, 'Cheese Chutny Grill', 25, '2017-08-24 09:59:44', 10),
(398, 'Mio Puff', 50, '2017-08-24 09:59:47', 11),
(399, 'Cheese Chutny Grill', 25, '2017-08-24 09:59:49', 12),
(400, 'KurKure', 10, '2017-08-24 09:59:51', 13),
(401, 'Sevpuri + sopari', 20, '2017-08-28 09:23:02', 1),
(402, 'Panipuri', 20, '2017-08-28 09:23:07', 8),
(403, 'Salted wafer', 10, '2017-08-28 09:23:09', 10),
(404, 'Sevpuri + sopari', 20, '2017-08-28 09:23:11', 11),
(405, 'Masala kurkure', 10, '2017-08-28 09:23:13', 13),
(406, 'Veg. Sandwich', 25, '2017-08-28 09:23:15', 14),
(407, 'Mio Puff', 22.5, '2017-08-29 08:27:15', 1),
(408, 'Puff', 30, '2017-08-29 08:27:20', 2),
(409, 'Puff', 30, '2017-08-29 08:27:23', 3),
(410, 'Mamra', 10, '2017-08-29 08:27:26', 6),
(411, 'Vadapav + Mamra + sing bhujiya', 40, '2017-08-29 08:27:35', 8),
(412, 'Mamra', 10, '2017-08-29 08:27:43', 10),
(413, 'Mio Puff', 22.5, '2017-08-29 08:27:46', 11),
(414, 'Mio Puff', 25, '2017-08-29 08:27:49', 14),
(415, 'Mio Puff', 25, '2017-08-29 08:27:51', 15),
(416, 'Mio Puff', 25, '2017-08-30 08:55:26', 1),
(417, 'Mamra', 10, '2017-08-30 08:55:33', 2),
(418, 'Panipuri', 20, '2017-08-30 08:55:36', 3),
(419, 'Mamra', 10, '2017-08-30 08:55:39', 4),
(420, 'Panipuri', 20, '2017-08-30 08:55:42', 6),
(421, 'Cheese Aloo Muter', 60, '2017-08-30 08:55:44', 8),
(422, 'Masala Mamra', 10, '2017-08-30 08:55:47', 10),
(423, 'Mio Puff', 25, '2017-08-30 08:55:50', 11),
(424, 'Salted Wafer', 10, '2017-08-30 08:55:53', 14),
(425, 'Butter Vadapav', 30, '2017-08-30 08:55:56', 15),
(426, 'Mamra', 20, '2017-08-30 09:27:53', 13),
(427, 'Mamra (31/08/2017)', 10, '2017-09-01 01:17:52', 1),
(428, 'Chana (31/08/2017)', 30, '2017-09-01 01:17:55', 4),
(429, 'Panipuri (31/08/2017)', 20, '2017-09-01 01:17:58', 8),
(430, 'Salted Wafer (31/08/2017)', 10, '2017-09-01 01:18:01', 11),
(431, 'Bread, Sev, Sing (31/08/2017)', 105, '2017-09-01 01:21:38', 3),
(432, 'Ratlami Sev, Farali Chevdo', 20, '2017-09-01 07:34:40', 5),
(433, 'Mio Puff', 22.5, '2017-09-01 10:35:43', 1),
(434, 'Mamra', 10, '2017-09-01 10:35:44', 2),
(435, 'Farali Chevdo', 10, '2017-09-01 10:35:46', 3),
(436, 'Mamra', 10, '2017-09-01 10:35:48', 4),
(437, 'Panipuri', 30, '2017-09-01 10:35:51', 8),
(438, 'Mamra', 10, '2017-09-01 10:35:53', 9),
(439, 'Mio Puff', 22.5, '2017-09-01 10:35:55', 11),
(440, 'Mamra', 10, '2017-09-01 10:35:57', 13),
(441, 'Vadapav (*2)', 40, '2017-09-01 10:35:58', 15),
(442, 'Cold Coffee', 55, '2017-09-04 09:35:09', 5),
(443, 'Sevpuri', 15, '2017-09-05 09:28:02', 1),
(444, 'Mamra', 10, '2017-09-05 09:28:04', 2),
(445, 'Cheese Chutny Grill', 40, '2017-09-05 09:28:07', 3),
(446, 'Mamra', 10, '2017-09-05 09:28:09', 6),
(447, 'Mamra', 10, '2017-09-05 09:28:11', 7),
(448, 'Cheese Chutny Grill', 40, '2017-09-05 09:28:13', 8),
(449, 'Sevpuri', 15, '2017-09-05 09:28:15', 11),
(450, 'Mamra', 10, '2017-09-05 09:28:17', 13),
(451, 'Onion Wafer', 10, '2017-09-05 09:28:19', 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `is_admin` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email_id`, `password`, `is_admin`) VALUES
(1, 'Bhavesh', 'Patel', 'bhaveshpatel2767@gmail.com', 'gns@8141', b'1'),
(2, 'Dipak', 'Patel', 'pateldipak15121991@gmail.com', 'dipak@123', b'0'),
(3, 'Raj', 'Prajapati', 'prajapati.raj.39@gmail.com', 'raj@123', b'0'),
(4, 'Sahil', 'Mhasker', 'sahil.mhasker01@gmail.com', 'sahil@123', b'0'),
(5, 'Dinesh', 'Kumavat', 'dineshkumavat108@gmail.com', 'dinesh@123', b'0'),
(6, 'Ketan', 'Patel', 'ketan2987@gmail.com', 'ketan@123', b'0'),
(7, 'Tejas', 'Mehta', 'mehta4tejas@gmail.com', 'tejas@123', b'0'),
(8, 'Shrunjal', 'mehta', 'shrunjal.kunj@gmail.com', 'shrunjal@123', b'0'),
(9, 'Nirav', 'Tikadiya', 'tikadiya64@gmail.com', 'nirav@123', b'0'),
(10, 'Dhaval', 'Patel', 'dhaval1989@gmail.com', 'dhaval@123', b'0'),
(11, 'Sagar', 'Panchasara', 'sagar7995@gmail.com', 'sagar@123', b'0'),
(12, 'Harshil', 'Patel', 'patel.harshil2612@gmail.com', 'harshil@123', b'0'),
(13, 'Vishal', 'Yagnik', 'seo.vish@gmail.com', 'vishal@123', b'0'),
(14, 'Jigar', 'Shah', 'jigar_shah2529@yahoo.com', 'jigar@123', b'0'),
(15, 'Ashwin', 'Chauhan', 'kunj.ashwin@gmail.com', 'ashwin@123', b'0');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balance_sheet`
--
ALTER TABLE `balance_sheet`
  ADD CONSTRAINT `balance_sheet_user_Id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `daily_expenses`
--
ALTER TABLE `daily_expenses`
  ADD CONSTRAINT `daily_expenses_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
