-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 06:30 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_player_bio`
--

-- --------------------------------------------------------

--
-- Table structure for table `odi`
--

CREATE TABLE `odi` (
  `Name` varchar(35) NOT NULL,
  `Matches` int(11) NOT NULL,
  `Innings` int(11) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Highest Score` int(11) NOT NULL,
  `Average` float NOT NULL,
  `100` int(11) NOT NULL,
  `200` int(11) NOT NULL,
  `50` int(11) NOT NULL,
  `Strick Rate` float NOT NULL,
  `Ranking` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odi`
--

INSERT INTO `odi` (`Name`, `Matches`, `Innings`, `Runs`, `Highest Score`, `Average`, `100`, `200`, `50`, `Strick Rate`, `Ranking`) VALUES
('Tamim Iqbal', 179, 177, 6018, 154, 34.99, 9, 0, 41, 78.26, '16'),
('Anamul Haque', 34, 31, 1005, 120, 32.42, 3, 0, 3, 70.72, '94'),
('Imrul Kayes', 70, 70, 2000, 112, 288.99, 2, 0, 14, 68, '88'),
('Liton Das', 12, 12, 165, 36, 15, 0, 0, 0, 76.74, NULL),
('Mehidy Hasan', 8, 5, 91, 51, 18.2, 0, 0, 1, 58.71, NULL),
('Mahmudullah', 153, 133, 3327, 128, 33.95, 3, 0, 18, 76.13, '43'),
('Mashrafe Mortaza', 187, 138, 1616, 51, 13.93, 0, 0, 1, 88.16, NULL),
('Mominul Haque', 26, 24, 543, 60, 23.61, 0, 0, 3, 74.59, NULL),
('Mosaddek Hossain', 18, 15, 288, 50, 32, 0, 0, 1, 90.57, NULL),
('Mushfiqur Rahim', 184, 170, 4718, 117, 32.76, 5, 0, 28, 76.82, '20'),
('Nasir Hossain', 65, 52, 1281, 100, 29.11, 1, 0, 6, 79.81, '89'),
('Sabbir Rahman', 51, 45, 1027, 65, 25.68, 0, 0, 5, 93.11, '71'),
('Shakib Al Hasan', 185, 174, 5243, 134, 34.95, 7, 0, 37, 81.06, '31'),
('Soumya Sarkar', 32, 31, 967, 127, 34.54, 1, 0, 6, 96.6, '59'),
('Mustafizur Rahman', 27, 13, 36, 18, 3.8, 0, 0, 0, 35.19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `odi_bowling`
--

CREATE TABLE `odi_bowling` (
  `Matches` int(11) NOT NULL,
  `Innings` int(11) NOT NULL,
  `Bowls` int(11) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Wickets` int(11) NOT NULL,
  `BBI` text NOT NULL,
  `Economy` float NOT NULL,
  `Average` float DEFAULT NULL,
  `5W` int(11) NOT NULL,
  `10W` int(11) NOT NULL,
  `Name` varchar(35) DEFAULT NULL,
  `Ranking` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odi_bowling`
--

INSERT INTO `odi_bowling` (`Matches`, `Innings`, `Bowls`, `Runs`, `Wickets`, `BBI`, `Economy`, `Average`, `5W`, `10W`, `Name`, `Ranking`) VALUES
(153, 152, 7965, 6065, 207, '5/29', 4.56, 29.29, 4, 0, 'Abdur Razzak', '----'),
(7, 7, 216, 244, 0, '0', 6.77, 0, 0, 0, 'Abul Hasan', '---'),
(8, 7, 354, 303, 7, '43/2', 5.14, 43.29, 0, 0, 'Mehidy Hasan', NULL),
(153, 119, 3726, 3198, 70, '4/3', 5.15, 45.69, 0, 0, 'Mahmudullah', '66'),
(187, 187, 9316, 7425, 238, '26/6', 4.78, 31.2, 5, 0, 'Mashrafe Mortaza', '27'),
(18, 17, 428, 365, 10, '13/3', 5.12, 36.5, 0, 0, 'Mosaddek Hossain', NULL),
(65, 43, 1256, 988, 24, '26/3', 4.72, 41.17, 0, 0, 'Nasir Hossain', '79'),
(85, 83, 3778, 3555, 107, '26/6', 5.65, 33.22, 1, 0, 'Rubel Hossain', '56'),
(185, 182, 9343, 6924, 235, '47/5', 4.45, 29.46, 1, 0, 'Shakib Al Hasan', '23'),
(27, 26, 1267, 979, 51, '43/6', 4.64, 19.2, 3, 0, 'Mustafizur Rahman', '18');

-- --------------------------------------------------------

--
-- Table structure for table `player_detail`
--

CREATE TABLE `player_detail` (
  `Name` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Born` date NOT NULL,
  `Birth Place` varchar(30) NOT NULL,
  `Height` varchar(30) DEFAULT NULL COMMENT 'Ft',
  `Role` varchar(30) NOT NULL,
  `Batting Style` varchar(30) NOT NULL,
  `Bowling Style` varchar(30) NOT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player_detail`
--

INSERT INTO `player_detail` (`Name`, `Country`, `Born`, `Birth Place`, `Height`, `Role`, `Batting Style`, `Bowling Style`, `image`) VALUES
('Abdur Razzak', 'Bangladesh', '1982-06-15', 'Khulna', '-----', 'Bowler', 'Left-hand bat', 'Slow left-arm orthodox', 'razzak.JPG'),
('Abu Hider', 'Bangladesh', '1996-02-14', '----', '-----', 'Bowler', 'Right-hand bat', 'Left-arm fast-medium ', 'hider.JPG'),
('Abu Jayed', 'Bangladesh', '1993-08-02', '----', '-----', 'Bowler', 'Right-hand bat', 'Right-arm fast-medium', 'jayed.JPG'),
('Abul Hasan', 'Bangladesh', '1992-08-05', 'Sylhet', '-----', 'Bowler', 'Left-hand bat', 'Right-arm medium-fast', 'abul_hasan.JPG'),
('Anamul Haque', 'Bangladesh', '1992-12-16', 'Khulna', '-----', 'Wicketkeeper batsman', 'Right-hand bat', '---', 'anamul.JPG'),
('Imrul Kayes', 'Bangladesh', '1987-02-02', 'Meherpur,Kustia', '------', 'Batsman', 'Left Handed Bastman', '', 'imrul.JPG'),
('Liton Das', 'Bangladesh', '1994-10-13', '------', '------', 'WK-Batsman ', 'Right Handed Bat ', '', 'liton das.JPG'),
('Mahmudullah', 'Bangladesh', '1986-02-04', 'Mymensingh ', '------', 'Batting Allrounder', 'Right Handed Batsman', 'Right-arm offbreak ', 'riad.JPG'),
('Mashrafe Mortaza', 'Bangladesh', '1983-10-05', '  Norail, Jessore ', NULL, 'Bowling Allrounder', 'Right Handed Bat', 'Right-arm fast-medium', 'mashrafe.JPG'),
('Mehidy Hasan', 'Bangladesh', '1997-10-25', '  Khulna ', NULL, '  Bowling Allrounder ', '  Right Handed Bat ', '  Right-arm offbreak ', 'miraz.JPG'),
('Mominul Haque', 'Bangladesh', '1991-09-29', 'Cox\'s Bazar', '----', 'Batsman', 'Left Handed Bat', 'Left-arm orthodox ', 'mominul.JPG'),
('Mosaddek Hossain', 'Bangladesh', '1995-12-10', 'Mymensingh ', NULL, 'Batting Allrounder ', 'Right Handed Bat ', 'Right-arm offbreak ', 'mosadhek.JPG'),
('Mushfiqur Rahim', 'Bangladesh', '1988-05-09', 'Bogra', NULL, 'WK-Batsman', 'Right Handed Batsman', '', 'musfiq.JPG'),
('Mustafizur Rahman', 'Bangladesh', '1995-09-06', 'Satkhira ', '------', 'Bowler', 'Left Handed Bastman', 'Left aram-medium', 'mustafiz.JPG'),
('Nasir Hossain', 'Bangladesh', '1991-11-03', '----', '-----', 'Batting Allrounder ', 'Right Handed Bat ', 'Right-arm offbreak ', 'nasir.JPG'),
('Rubel Hossain', 'Bangladesh', '1990-01-01', 'Bagerhat,Khulna', NULL, 'Bowler', 'Right Handed Bat', 'Right-arm fast-medium', 'rubel.JPG'),
('Sabbir Rahman', 'Bangladesh', '1991-11-22', 'Rajshahi', '------', 'Batting Allrounder', 'Right Handed Batsman', 'Right-arm legbreak', 'sabbir.JPG'),
('Shakib Al Hasan', 'Bangladesh', '1987-03-24', 'Magura, Jessore ', NULL, 'Batting Allrounder', 'Left Handed Bastman', ' Left-arm orthodox ', 'sakib.JPG'),
('Soumya Sarkar', 'Bangladesh', '1993-02-25', '  Satkhira ', NULL, 'Batsman', 'Left Handed Bat ', 'Right-arm fast-medium', 'samya.JPG'),
('Tamim Iqbal', 'Bangladesh', '1989-03-20', 'Chittagong', '------', 'Batsman', 'Left Handed Bastman', '', 'tamim.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `Country` varchar(30) NOT NULL,
  `Oponent` varchar(30) NOT NULL,
  `score(Country)` text,
  `score(Opponent)` text,
  `Comment` text,
  `over(Country)` float DEFAULT NULL,
  `over(Opponent)` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`Country`, `Oponent`, `score(Country)`, `score(Opponent)`, `Comment`, `over(Country)`, `over(Opponent)`) VALUES
('Bangladesh', 'India', '140/5', '195/7', 'Bangladesh need 56 run 18 balls....', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `score_details`
--

CREATE TABLE `score_details` (
  `Batsman_strick` varchar(35) NOT NULL,
  `Batsman_nonstrick` varchar(35) DEFAULT NULL,
  `Run_bs` int(11) NOT NULL,
  `Ball_bs` int(11) NOT NULL,
  `Run_bns` int(11) NOT NULL,
  `Ball_bns` int(11) NOT NULL,
  `Bowler` varchar(35) DEFAULT NULL,
  `Over` float NOT NULL,
  `Run_bo` int(11) NOT NULL,
  `Wicket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score_details`
--

INSERT INTO `score_details` (`Batsman_strick`, `Batsman_nonstrick`, `Run_bs`, `Ball_bs`, `Run_bns`, `Ball_bns`, `Bowler`, `Over`, `Run_bo`, `Wicket`) VALUES
('Tamim Iqbal*', 'Musfiq', 50, 34, 37, 30, 'B.Kumer', 2.3, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `Country` varchar(30) NOT NULL,
  `Oponent` varchar(30) NOT NULL,
  `Date` datetime NOT NULL,
  `Venue` text NOT NULL,
  `Format` text,
  `Match_number` text,
  `series_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`Country`, `Oponent`, `Date`, `Venue`, `Format`, `Match_number`, `series_number`) VALUES
('Bangladesh', 'India', '2018-04-08 02:30:00', 'Sher-E-Bangla National Stadium,dhaka', 't20', '1st', NULL),
('Bangladesh', 'India', '2018-04-10 07:30:00', 'Sher-E-Bangla National Stadium,dhaka', 't20', '2nd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t20`
--

CREATE TABLE `t20` (
  `Name` varchar(35) NOT NULL,
  `Matches` int(11) NOT NULL,
  `Innings` int(11) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Highest Score` int(11) NOT NULL,
  `Average` float NOT NULL,
  `Strick Rate` float NOT NULL,
  `100` int(11) NOT NULL,
  `50` int(11) NOT NULL,
  `Ranking` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t20`
--

INSERT INTO `t20` (`Name`, `Matches`, `Innings`, `Runs`, `Highest Score`, `Average`, `Strick Rate`, `100`, `50`, `Ranking`) VALUES
('Tamim Iqbal', 65, 65, 1440, 103, 24, 117.07, 1, 5, '40'),
('Anamul Haque', 13, 13, 355, 58, 32.27, 117.94, 0, 1, '0'),
('Imrul Kayes', 14, 13, 119, 36, 9.15, 88.81, 0, 0, '0'),
('Liton Das', 9, 9, 153, 43, 17, 127.5, 0, 0, NULL),
('Mehidy Hasan', 8, 8, 56, 19, 9.33, 147.37, 0, 0, NULL),
('Mahmudullah', 67, 60, 1016, 64, 21.17, 119.81, 0, 3, '42'),
('Mashrafe Mortaza', 54, 39, 377, 36, 13.46, 135.61, 0, 0, NULL),
('Mominul Haque', 6, 4, 60, 26, 20, 120, 0, 0, NULL),
('Mosaddek Hossain', 6, 6, 99, 34, 19.8, 108.79, 0, 0, NULL),
('Mushfiqur Rahim', 68, 60, 1012, 72, 20.65, 119.91, 0, 4, '47'),
('Nasir Hossain', 31, 24, 371, 50, 19.53, 113.8, 0, 2, NULL),
('Sabbir Rahman', 39, 38, 893, 80, 27.06, 122.5, 0, 4, '18'),
('Shakib Al Hasan', 63, 62, 1237, 84, 22.49, 120.8, 0, 6, '45'),
('Soumya Sarkar', 33, 33, 635, 51, 19.24, 126.24, 0, 1, '30'),
('Mustafizur Rahman', 24, 10, 17, 8, 2.83, 54.84, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t20_bowling`
--

CREATE TABLE `t20_bowling` (
  `Name` varchar(35) NOT NULL,
  `Match` int(11) NOT NULL,
  `Inn` int(11) NOT NULL,
  `Bowls` int(11) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Wkts` int(11) NOT NULL,
  `BBI` text NOT NULL,
  `Econ` float NOT NULL,
  `Avg` float NOT NULL,
  `5W` int(11) NOT NULL,
  `10W` int(11) NOT NULL,
  `Ranking` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t20_bowling`
--

INSERT INTO `t20_bowling` (`Name`, `Match`, `Inn`, `Bowls`, `Runs`, `Wkts`, `BBI`, `Econ`, `Avg`, `5W`, `10W`, `Ranking`) VALUES
('Abdur Razzak', 34, 33, 730, 838, 44, '4/16', 6.88, 19.04, 0, 0, NULL),
('Abu Hider', 6, 5, 90, 145, 3, '40/2', 9.67, 48.33, 0, 0, '-----'),
('Abu Jayed', 1, 1, 24, 45, 1, '45/1', 11.25, 45, 0, 0, '----'),
('Abul Hasan', 4, 4, 16, 108, 2, '33/2', 9.81, 54, 0, 0, '----'),
('Mahmudullah', 67, 46, 643, 790, 24, '5/2', 737, 32.92, 0, 0, '56'),
('Mashrafe Mortaza', 54, 53, 1139, 1528, 42, '19/4', 8.05, 36.38, 0, 0, '47'),
('Mehidy Hasan', 8, 8, 156, 208, 3, '31/2', 8, 59.33, 0, 0, '81'),
('Mosaddek Hossain', 6, 5, 64, 75, 2, '22/1', 7.03, 37.5, 0, 0, NULL),
('Mustafizur Rahman', 24, 24, 554, 651, 35, '22/5', 7.05, 18.6, 1, 0, '8'),
('Nasir Hossain', 31, 11, 179, 262, 7, '26/2', 8.78, 37.43, 0, 0, NULL),
('Rubel Hossain', 22, 21, 460, 733, 23, '31/3', 9.56, 31.87, 0, 0, '42'),
('Shakib Al Hasan', 63, 62, 1367, 1545, 75, '15/4', 6.78, 20.6, 0, 0, '12');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Name` varchar(35) NOT NULL,
  `Matches` int(11) NOT NULL,
  `Innings` int(11) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Highest Score` int(11) NOT NULL,
  `Average` float NOT NULL,
  `100` int(11) NOT NULL,
  `200` int(11) NOT NULL,
  `50` int(11) NOT NULL,
  `Strick Rate` float NOT NULL,
  `Ranking` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`Name`, `Matches`, `Innings`, `Runs`, `Highest Score`, `Average`, `100`, `200`, `50`, `Strick Rate`, `Ranking`) VALUES
('Tamim Iqbal', 54, 104, 3985, 206, 38.69, 8, 1, 25, 55.52, 28),
('Anamul Haque', 4, 8, 73, 22, 9.12, 0, 0, 0, 33.18, 0),
('Imrul Kayes', 34, 66, 1679, 150, 26.23, 3, 0, 4, 48.73, 72),
('Liton Das', 8, 13, 385, 94, 29.62, 0, 0, 3, 60.44, 82),
('Mehidy Hasan', 12, 23, 346, 51, 18.21, 0, 0, 1, 46.01, NULL),
('Mahmudullah', 37, 70, 2065, 115, 31.29, 1, 0, 15, 51.95, 52),
('Mashrafe Mortaza', 36, 67, 797, 79, 12.85, 0, 0, 3, 67.2, NULL),
('Mominul Haque', 27, 50, 2154, 181, 46.83, 6, 0, 12, 56.09, 29),
('Mosaddek Hossain', 2, 4, 104, 75, 34.67, 0, 0, 1, 41.43, NULL),
('Mushfiqur Rahim', 60, 112, 3636, 200, 34.63, 5, 1, 19, 46.44, 28),
('Nasir Hossain', 19, 32, 1044, 100, 34.8, 1, 0, 6, 54.46, 83),
('Sabbir Rahman', 11, 22, 481, 66, 24.05, 0, 0, 4, 54.97, 96),
('Shakib Al Hasan', 51, 96, 3594, 217, 40.38, 5, 1, 22, 62.1, 21),
('Soumya Sarkar', 10, 19, 558, 86, 29.37, 0, 0, 4, 57.88, 73),
('Mustafizur Rahman', 10, 15, 38, 10, 3.8, 0, 0, 0, 35.19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_bowling`
--

CREATE TABLE `test_bowling` (
  `Name` varchar(35) NOT NULL,
  `Match` int(11) NOT NULL,
  `Inn` int(11) NOT NULL,
  `Bowls` int(11) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Wkts` int(11) NOT NULL,
  `BBI` text NOT NULL,
  `Econ` float NOT NULL,
  `Avg` float NOT NULL,
  `5W` int(11) NOT NULL,
  `10W` int(11) NOT NULL,
  `Ranking` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_bowling`
--

INSERT INTO `test_bowling` (`Name`, `Match`, `Inn`, `Bowls`, `Runs`, `Wkts`, `BBI`, `Econ`, `Avg`, `5W`, `10W`, `Ranking`) VALUES
('Abdur Razzak', 13, 20, 3015, 1673, 28, '63/4', 3.33, 59.75, 0, 0, 84),
('Abul Hasan', 3, 5, 528, 371, 3, '80/2', 4.21, 123.66, 0, 0, NULL),
('Mahmudullah', 37, 52, 3141, 1831, 39, '51/5', 3.5, 46.95, 1, 0, 66),
('Mashrafe Mortaza', 36, 51, 5990, 3239, 78, '60/4', 3.24, 41.53, 0, 0, NULL),
('Mehidy Hasan', 12, 22, 3306, 1860, 48, '77/6', 3.38, 38.75, 3, 1, 36),
('Mosaddek Hossain', 2, 3, 60, 45, 0, '10/0', 4.5, 0, 0, 0, NULL),
('Mustafizur Rahman', 10, 16, 1551, 819, 26, '37/4', 3.17, 31.5, 0, 0, 45),
('Nasir Hossain', 19, 25, 924, 443, 8, '52/3', 2.88, 55.38, 0, 0, 96),
('Rubel Hossain', 25, 42, 3966, 2607, 33, '166/5', 3.94, 79, 1, 0, 83),
('Shakib Al Hasan', 51, 86, 12092, 6085, 188, '36/7', 3.02, 32.37, 17, 2, 19);

-- --------------------------------------------------------

--
-- Table structure for table `top_batsman_odi`
--

CREATE TABLE `top_batsman_odi` (
  `Name` varchar(35) NOT NULL,
  `Year` int(11) NOT NULL,
  `Against` varchar(35) NOT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_batsman_odi`
--

INSERT INTO `top_batsman_odi` (`Name`, `Year`, `Against`, `Score`) VALUES
('Shakib Al Hasan', 2007, 'Canada', 134),
('Tamim Iqbal', 2009, 'Zimbabwe', 154),
('Tamim Iqbal', 2015, 'Pakistan', 132),
('Tamim Iqbal', 2008, 'Ireland', 129),
('Mahmudullah', 2015, 'New Zealand', 128);

-- --------------------------------------------------------

--
-- Table structure for table `top_batsman_t20`
--

CREATE TABLE `top_batsman_t20` (
  `Name` varchar(35) NOT NULL,
  `Score` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Against` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_batsman_t20`
--

INSERT INTO `top_batsman_t20` (`Name`, `Score`, `Year`, `Against`) VALUES
('Tamim Iqbal', 103, 2016, 'Oman'),
('Tamim Iqbal', 88, 2012, 'West Indies'),
('Shakib Al Hasan', 84, 2012, 'Pakistan'),
('Tamim Iqbal', 83, 2016, 'Netherlands'),
('Nazimuddin', 81, 2007, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `top_batsman_test`
--

CREATE TABLE `top_batsman_test` (
  `Name` varchar(35) NOT NULL,
  `Score` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Against` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_batsman_test`
--

INSERT INTO `top_batsman_test` (`Name`, `Score`, `Year`, `Against`) VALUES
('Mohammad Ashraful', 190, 2013, 'Sri Lanka'),
('Mominul Haque', 181, 2013, 'New Zealand'),
('Mustafizur Rahman', 200, 2013, 'Sri Lanka'),
('Shakib Al Hasan', 217, 2017, 'New Zealand'),
('Tamim Iqbal', 206, 2015, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `top_bowler_odi`
--

CREATE TABLE `top_bowler_odi` (
  `Name` varchar(35) NOT NULL,
  `Score` text NOT NULL,
  `Year` int(11) NOT NULL,
  `Against` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_bowler_odi`
--

INSERT INTO `top_bowler_odi` (`Name`, `Score`, `Year`, `Against`) VALUES
('Mashrafe Mortaza', '26/6', 2006, 'Kenya'),
('Rubel Hossain', '26/6', 2013, 'New Zealand'),
('Mustafizur Rahman', '43/6', 2015, 'India'),
('Taskin Ahmed', '28/5', 2014, 'India'),
('Abdur Razzak', '29/5', 2009, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `top_bowler_t20`
--

CREATE TABLE `top_bowler_t20` (
  `Name` varchar(35) NOT NULL,
  `Score` text NOT NULL,
  `Year` int(11) NOT NULL,
  `Against` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_bowler_t20`
--

INSERT INTO `top_bowler_t20` (`Name`, `Score`, `Year`, `Against`) VALUES
('Elias Sunny', '13/5', 2012, 'Ireland'),
('Mustafizur Rahman', '22/5', 2016, 'New Zealand'),
('Shakib Al Hasan', '14/4', 2016, 'Oman'),
('Abdur Razzak', '16/4', 2008, 'South Africa'),
('Mashrafe Mortaza', '19/4', 2012, 'Ireland');

-- --------------------------------------------------------

--
-- Table structure for table `top_bowler_test`
--

CREATE TABLE `top_bowler_test` (
  `Name` varchar(35) NOT NULL,
  `Score` text NOT NULL,
  `Year` int(11) NOT NULL,
  `Against` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_bowler_test`
--

INSERT INTO `top_bowler_test` (`Name`, `Score`, `Year`, `Against`) VALUES
('Enamul Haque jnr', '95/7', 2005, 'Zimbabwe'),
('Shahadat Hossain', '27/6', 2008, 'South Africa'),
('Shakib Al Hasan', '36/7', 2008, 'New Zealand'),
('Taijul Islam', '39/8', 2014, 'Zimbabwe'),
('Enamul Haque jnr', '45/6', 2005, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `top_scorer_odi`
--

CREATE TABLE `top_scorer_odi` (
  `Oponent` varchar(35) NOT NULL,
  `Name(batsman)` varchar(35) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Name(bowler)` varchar(35) NOT NULL,
  `Wickets` int(11) NOT NULL,
  `Format` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_scorer_odi`
--

INSERT INTO `top_scorer_odi` (`Oponent`, `Name(batsman)`, `Runs`, `Name(bowler)`, `Wickets`, `Format`) VALUES
('Afghanistan', 'Tamim Iqbal', 237, 'Taskin Ahmed', 8, 'odi'),
('Afghanistan', 'Mushfiqur Rahim', 150, 'Shakib Al Hasan', 8, 'odi'),
('Afghanistan', 'Shakib Al Hasan', 145, 'Mashrafe Mortaza', 7, 'odi'),
('Australia', 'Habibul Bashar', 289, 'Mashrafe Mortaza', 15, 'odi'),
('Australia', 'Tamim Iqbal', 281, 'Abdur Razzak', 11, 'odi'),
('Australia', 'Shahriar Nafees', 255, 'Shakib Al Hasan', 5, 'odi'),
('England', 'Tamim Iqbal', 469, 'Mashrafe Mortaza', 16, 'odi'),
('England', 'Mushfiqur Rahim', 441, 'Shakib Al Hasan', 14, 'odi'),
('England', 'Imrul Kayes', 439, 'Abdur Razzak', 12, 'odi'),
('India', 'Mushfiqur Rahim', 578, 'Mashrafe Mortaza', 21, 'odi'),
('India', 'Tamim Iqbal', 574, 'Mohammad Rafique', 18, 'odi'),
('India', 'Shakib Al Hasan', 508, 'Shakib Al Hasan', 17, 'odi'),
('Sri Lanka', 'Tamim Iqbal', 643, 'Mashrafe Mortaza', 24, 'odi'),
('Sri Lanka', 'Shakib Al Hasan', 607, 'Rubel Hossain', 20, 'odi'),
('Sri Lanka', 'Mohammad Ashraful', 573, 'Abdur Razzak', 19, 'odi'),
('Pakistan', 'Tamim Iqbal', 676, 'Shakib Al Hasan', 21, 'odi'),
('Pakistan', 'Shakib Al Hasan', 489, 'Mashrafe Mortaza', 20, 'odi'),
('Pakistan', 'Mushfiqur Rahim', 327, 'Abdur Razzak', 18, 'odi'),
('New Zealand', 'Shakib Al Hasan', 575, 'Shakib Al Hasan', 35, 'odi'),
('New Zealand', 'Tamim Iqbal', 530, 'Rubel Hossain', 21, 'odi'),
('New Zealand', 'Mushfiqur Rahim', 516, 'Mashrafe Mortaza', 17, 'odi'),
('West Indies', 'Mushfiqur Rahim', 505, 'Abdur Razzak', 19, 'odi'),
('West Indies', 'Tamim Iqbal', 336, 'Mahmudullah', 14, 'odi'),
('West Indies', 'Anamul Haque', 311, 'Tapash Baisya', 11, 'odi'),
('South Africa', 'Shakib Al Hasan', 322, 'Rubel Hossain', 12, 'odi'),
('South Africa', 'Tamim Iqbal', 287, 'Shakib Al Hasan', 12, 'odi'),
('South Africa', 'Mohammad Ashraful', 257, 'Abdur Razzak', 8, 'odi');

-- --------------------------------------------------------

--
-- Table structure for table `top_scorer_t20`
--

CREATE TABLE `top_scorer_t20` (
  `Oponent` varchar(35) DEFAULT NULL,
  `Name(batsman)` varchar(35) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Name(bowler)` varchar(35) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL,
  `Format` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_scorer_t20`
--

INSERT INTO `top_scorer_t20` (`Oponent`, `Name(batsman)`, `Runs`, `Name(bowler)`, `Wickets`, `Format`) VALUES
('Afghanistan', 'Anamul Haque', 44, 'Shakib Al Hasan', 3, 't20'),
('Afghanistan', 'Tamim Iqbal', 21, 'Abdur Razzak', 2, 't20'),
('Afghanistan', 'Shakib Al Hasan', 10, 'Farhad Reza', 1, 't20'),
('Australia', 'Shakib Al Hasan', 143, 'Shakib Al Hasan', 5, 't20'),
('Australia', 'Mushfiqur Rahim', 89, 'Al-Amin Hossain', 3, 't20'),
('Australia', 'Mahmudullah', 57, 'Mustafizur Rahman', 2, 't20'),
('India', 'Sabbir Rahman', 236, 'Rubel Hossain', 7, 't20'),
('India', 'Mushfiqur Rahim', 165, 'Al-Amin Hossain', 7, 't20'),
('India', 'Mahmudullah', 132, 'Shakib Al Hasan', 4, 't20'),
('Sri Lanka', 'Mahmudullah', 261, 'Mustafizur Rahman', 11, 't20'),
('Sri Lanka', 'Mushfiqur Rahim', 239, 'Shakib Al Hasan', 10, 't20'),
('Sri Lanka', 'Tamim Iqbal', 161, 'Mashrafe Mortaza', 9, 't20'),
('Pakistan', 'Shakib Al Hasan', 292, 'Abdur Razzak', 7, 't20'),
('Pakistan', 'Tamim Iqbal', 131, 'Shakib Al Hasan', 6, 't20'),
('Pakistan', 'Nazimuddin', 123, 'Arafat Sunny', 5, 't20'),
('New Zealand', 'Mahmudullah', 154, 'Rubel Hossain', 7, 't20'),
('New Zealand', 'Sabbir Rahman', 94, 'Mustafizur Rahman', 6, 't20'),
('New Zealand', 'Soumya Sarkar', 87, 'Al-Amin Hossain', 4, 't20'),
('West Indies', 'Tamim Iqbal', 132, 'Shakib Al Hasan', 8, 't20'),
('West Indies', 'Mahmudullah', 86, 'Abdur Razzak', 4, 't20'),
('West Indies', 'Mohammad Ashraful', 85, 'Rubel Hossain', 4, 't20'),
('South Africa', 'Soumya Sarkar', 135, 'Shakib Al Hasan', 7, 't20'),
('South Africa', 'Shakib Al Hasan', 72, 'Abdur Razzak', 6, 't20'),
('South Africa', 'Mushfiqur Rahim', 67, 'Arafat Sunny', 3, 't20');

-- --------------------------------------------------------

--
-- Table structure for table `top_scorer_test`
--

CREATE TABLE `top_scorer_test` (
  `Oponent` varchar(35) NOT NULL,
  `Name(batsman)` varchar(35) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Name(bowler)` varchar(35) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL,
  `Format` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_scorer_test`
--

INSERT INTO `top_scorer_test` (`Oponent`, `Name(batsman)`, `Runs`, `Name(bowler)`, `Wickets`, `Format`) VALUES
('Australia', 'Habibul Bashar', 282, 'Shakib Al Hasan', 12, 'test'),
('Australia', 'Shahriar Nafees', 250, 'Mohammad Rafique', 11, 'test'),
('Australia', 'Rajin Saleh', 176, 'Mehidy Hasan', 8, 'test'),
('England', 'Tamim Iqbal', 736, 'Shakib Al Hasan', 29, 'test'),
('England', 'Mushfiqur Rahim', 369, 'Mehidy Hasan', 19, 'test'),
('England', 'Imrul Kayes', 349, 'Mashrafe Mortaza', 12, 'test'),
('India', 'Mohammad Ashraful', 386, 'Shakib Al Hasan', 15, 'test'),
('India', 'Mushfiqur Rahim', 337, 'Mohammad Rafique', 15, 'test'),
('India', 'Tamim Iqbal', 296, 'Shahadat Hossain', 12, 'test'),
('Sri Lanka', 'Mohammad Ashraful', 1090, 'Shakib Al Hasan', 29, 'test'),
('Sri Lanka', 'Mushfiqur Rahim', 895, 'Shahadat Hossain', 24, 'test'),
('Sri Lanka', 'Mominul Haque', 653, 'Mehidy Hasan', 15, 'test'),
('Pakistan', 'Habibul Bashar', 554, 'Mohammad Rafique', 17, 'test'),
('Pakistan', 'Shakib Al Hasan', 412, 'Khaled Mahmud', 11, 'test'),
('Pakistan', 'Tamim Iqbal', 336, 'Taijul Islam', 10, 'test'),
('New Zealand', 'Shakib Al Hasan', 763, 'Shakib Al Hasan', 26, 'test'),
('New Zealand', 'Tamim Iqbal', 630, 'Mashrafe Mortaza', 14, 'test'),
('New Zealand', 'Mominul Haque', 463, 'Abdur Razzak', 10, 'test'),
('West Indies', 'Tamim Iqbal', 686, 'Shakib Al Hasan', 29, 'test'),
('West Indies', 'Mushfiqur Rahim', 558, 'Mahmudullah', 15, 'test'),
('West Indies', 'Shakib Al Hasan', 532, 'Sohag Gazi', 12, 'test'),
('South Africa', 'Mushfiqur Rahim', 331, 'Shahadat Hossain', 15, 'test'),
('South Africa', 'Habibul Bashar', 301, 'Shakib Al Hasan', 13, 'test'),
('South Africa', 'Mahmudullah', 224, 'Mohammad Rafique', 12, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `top_score_odi`
--

CREATE TABLE `top_score_odi` (
  `Oponent` varchar(35) NOT NULL,
  `Highest score` text NOT NULL,
  `year(highest)` int(11) NOT NULL,
  `result(highest)` text NOT NULL,
  `Lowest score` text,
  `year(lowest)` int(11) DEFAULT NULL,
  `result(lowest)` text,
  `Format` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_score_odi`
--

INSERT INTO `top_score_odi` (`Oponent`, `Highest score`, `year(highest)`, `result(highest)`, `Lowest score`, `year(lowest)`, `result(lowest)`, `Format`) VALUES
('Australia', '295/6', 2011, 'AUS won by 66 runs.', '74/10', 2008, 'AUS won by 180 runs.', 'odi'),
('Australia', '250/5', 2005, 'BAN won by 5 wickets.', '104/6', 2007, 'AUS won by 10 wickets.', 'odi'),
('Australia', '250/8', 2005, 'AUS won by 6 wickets.', '105/10', 2003, 'AUS won by 8 wickets.', 'odi'),
('Afghanistan', '279/8', 2016, 'ban won by 141 runs.\r\n', '208/10\r\n', 2016, 'afg won by 2 wickets \r\n', 'odi'),
('Afghanistan', '267/10\r\n', 2015, 'BAN won by 105 runs.', '222/10\r\n', 2014, 'AFG won by 32 runs.', 'odi'),
('Afghanistan', '265/10\r\n', 2016, 'BAN won by 7 runs.', NULL, NULL, NULL, 'odi'),
('England', '305/6\r\n', 2017, 'ENG won by 8 wickets.', '134/9\r\n', 2003, 'ENG won by 7 wickets.', 'odi'),
('England', '288/10\r\n', 2016, 'ENG won by 21 runs.', '143/10\r\n', 2003, 'ENG won by 7 wickets.', 'odi'),
('England', '277/6\r\n', 2016, 'ENG won by 4 wickets.', '143/10\r\n', 2007, 'ENG won by 4 wickets.', 'odi'),
('India', '307/10\r\n', 2015, 'BAN won by 79 runs.', '170/6\r\n', 1990, 'IND won by 9 wickets.', 'odi'),
('India', '296/6\r\n', 2010, 'IND won by 6 wickets.', '177/10\r\n', 2004, 'IND won by 8 wickets.', 'odi'),
('India', '293/5\r\n', 2012, 'BAN won by 5 wickets.', '184/9\r\n', 1998, 'IND won by 5 wickets.', 'odi'),
('Sri Lanka', '324/5\r\n', 2017, 'BAN won by 90 runs.', '190/9\r\n', 2004, 'SL won by 10 wickets.', 'odi'),
('Sri Lanka', '320/7\r\n', 2018, 'BAN won by 163 runs.', '193/8\r\n', 1997, 'SL won by 103 runs.', 'odi'),
('Sri Lanka', '265/9\r\n', 2006, 'SL won by 37 runs.', '200/10\r\n', 2002, 'SL won by 58 runs.', 'odi'),
('Pakistan', '329/6\r\n', 2015, 'ban won by 79 runs\r\n', '169/10\r\n', 2009, 'PAK won by 74 runs.', 'odi'),
('Pakistan', '326/3\r\n', 2014, 'PAK won by 3 wickets.', '179/10\r\n', 2008, 'PAK won by 150 runs.', 'odi'),
('Pakistan', '285/7\r\n', 2008, 'PAk won by 23 runs.', '181/10\r\n', 2004, 'PAK won by 76 runs.', 'odi'),
('New Zealand', '309/6\r\n', 2013, 'BAN won by 4 wickets.', '174/10', 2007, 'NZ won by 9 wickets.', 'odi'),
('New Zealand', '288/7\r\n', 2015, 'NZ won by 3 wickets.', '174/10', 2010, 'BAN won by 3 runs.', 'odi'),
('New Zealand', '271/5', 2017, 'BAN won by 5 wickets.', '177/5', 1990, 'NZ won by 161 runs.', 'odi'),
('West Indies', '292/6', 2012, 'BAN won by 160 runs.', '90/4', 2002, 'NO result.', 'odi'),
('West Indies', '276/7\r\n', 2009, 'BAN won by 3 wickets.', '101/8\r\n', 2004, 'WI won by 23 runs.', 'odi'),
('West Indies', '258/7\r\n', 2011, 'WI won by 40 runs.', '118/7\r\n', 2004, 'WI won by 7 wickets.', 'odi'),
('South Africa', '278/7', 2017, 'SA won by 10 wickets.', '78/10', 2011, 'SA won by 206 runs.', 'odi'),
('South Africa', '251/8', 2007, 'BAN won by 67 runs.', '93/10', 2011, 'SA won by 9 wickets.', 'odi'),
('South Africa', '230/10', 2008, 'SA won  by 128 runs.', '108/10', 2003, 'SA won by 10 wickets.', 'odi');

-- --------------------------------------------------------

--
-- Table structure for table `top_score_t20`
--

CREATE TABLE `top_score_t20` (
  `Oponent` varchar(35) NOT NULL,
  `Highest score` text NOT NULL,
  `year(highest)` int(11) NOT NULL,
  `result(highest)` text NOT NULL,
  `Lowest score` text,
  `year(lowest)` int(11) DEFAULT NULL,
  `result(lowest)` text,
  `Format` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_score_t20`
--

INSERT INTO `top_score_t20` (`Oponent`, `Highest score`, `year(highest)`, `result(highest)`, `Lowest score`, `year(lowest)`, `result(lowest)`, `Format`) VALUES
('Australia', '156/5', 2016, 'AUS won by 3 wickets.', '114/10', 2010, 'AUS won by 27 runs.', 't20'),
('Australia', '153/5', 2014, 'AUS won by 7 wickets.', NULL, NULL, NULL, 't20'),
('Australia', '123/8', 2007, 'AUS won by 8 wickets.', NULL, NULL, NULL, 't20'),
('Afghanistan', '78/1', 2014, 'BAN won by 9 wickets.', NULL, NULL, NULL, 't20'),
('India', '166/8\r\n', 2018, 'IND won by 4 wickets.', '120/5\r\n', 2016, 'IND won by 8 wickets.', 't20'),
('India', '159/6\r\n', 2018, 'IND won by 17 runs.', '121/7\r\n', 2016, 'IND won by 45 runs.', 't20'),
('India', '155/8\r\n', 2009, 'IND won by 25 runs.', '138/7\r\n', 2014, 'IND won by 8 wickets.', 't20'),
('Sri Lanka', '215/5\r\n', 2018, 'BAN won by 8 wickets.', '83/10\r\n', 2007, 'SL won by 64 runs.', 't20'),
('Sri Lanka', '193/5\r\n', 2018, 'SL won by 6 wickets.', '120/10\r\n', 2014, 'SL won by 17 runs.', 't20'),
('Sri Lanka', '181/7\r\n', 2013, 'SL won by 17 runs.', '135/10\r\n', 2018, 'SL won by 65 runs.', 't20'),
('Pakistan', '175/6\r\n', 2012, 'PAK won by 8 wickets.', '85/9\r\n', 2011, 'PAK won by 50 runs.', 't20'),
('Pakistan', '161/7\r\n', 2007, 'PAk won by 30 runs.', '101/10\r\n', 2008, 'PAk won by 102 runs.', 't20'),
('Pakistan', '151/7\r\n', 2007, 'PAK won by 21 runs.', '131/5\r\n', 2016, 'BAN won by 5 wickets.', 't20'),
('New Zealand', '189/9', 2013, 'NZ won by 15 runs.', '70/10', 2016, 'NZ won by 75 runs.', 't20'),
('New Zealand', '167/6', 2017, 'NZ won by 27 runs.', '78/10', 2010, 'NZ won by 10 wickets.', 't20'),
('New Zealand', '148/10', 2017, 'NZ won by 47 runs.', '132/8\r\n', 2012, 'NZ won by 59 runs.', 't20'),
('West Indies', '179/1', 2012, 'WI won by 18 runs.', '31/0\r\n', 2014, 'NO result', 't20'),
('West Indies', '165/4\r\n', 2007, 'BAN won by 6 wickets.', '98/10', 2014, 'WI won by 73 runs.', 't20'),
('West Indies', '135/7', 2011, 'BAN won by 3 wickets.', '118/9', 2009, 'WI won by 5 wickets.', 't20'),
('South Africa', '175/9\r\n', 2017, 'SA won by 20 runs.', '96/10', 2015, 'SA won by 52 runs.', 't20'),
('South Africa', '144/10', 2007, 'SA won by 7 wickets.', '109/8\r\n', 2008, 'SA won by 12 runs.', 't20'),
('South Africa', '141/10', 2017, 'SA won by 83 runs.', '138/10', 2015, 'SA won by 31 runs.', 't20');

-- --------------------------------------------------------

--
-- Table structure for table `top_score_test`
--

CREATE TABLE `top_score_test` (
  `Oponent` varchar(35) NOT NULL,
  `Highest score` text NOT NULL,
  `year(highest)` int(11) NOT NULL,
  `result(highest)` text NOT NULL,
  `Lowest score` text,
  `year(lowest)` int(11) DEFAULT NULL,
  `result(lowest)` text,
  `Format` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_score_test`
--

INSERT INTO `top_score_test` (`Oponent`, `Highest score`, `year(highest)`, `result(highest)`, `Lowest score`, `year(lowest)`, `result(lowest)`, `Format`) VALUES
('Australia', '427/10', 2006, 'AUS won by 3 wickets.', '97/10', 2003, 'AUS won by inns & 132 runs.', 'test'),
('Australia', '305/10', 2017, 'AUS won by 7 wickets.', '148/10', 2006, 'AUS won by 3 wickets.', 'test'),
('Australia', '304/10\r\n', 2006, 'AUS won by inns & 80 runs.', '157/10', 2017, 'AUS won by 7 wickets.', 'test'),
('England', '419/10\r\n', 2010, 'ENG won by 9 wickets.', '104/10\r\n', 2005, 'ENG won by inns & 27 runs.', 'test'),
('England', '382/10\r\n', 2010, 'ENG won by 8 wickets.', '108/10\r\n', 2005, 'ENG won by inns & 261 runs.', 'test'),
('England', '331/10\r\n', 2010, 'ENG won by 81 runs.', '123/10\r\n', 2010, 'ENG won by inns & 80 runs.', 'test'),
('India', '400/10\r\n\r\n', 2000, 'IND won by 9 wickets.', '23/0\r\n', 2015, 'drawn', 'test'),
('India', '388/10\r\n', 2017, 'IND won by 208 runs.', '91/10\r\n', 2000, 'IND won by 9 wickets.', 'test'),
('India', '333/10\r\n', 2007, 'IND won by inns & 83 runs.\r\n', '104/2\r\n', 2007, 'drawn', 'test'),
('Sri Lanka', '638/10\r\n', 2013, 'drawn', '197/10\r\n', 2005, 'SL won by inns & 69 runs\r\n', 'test'),
('Sri Lanka', '513/10\r\n', 2018, 'drawn', '197/10\r\n', 2017, 'SL won by 259 runs\r\n', 'test'),
('Sri Lanka', '467/10\r\n', 2018, 'BAN won by 4 wickets.', '201/10\r\n', 2007, 'SL won by 10 wickets.', 'test'),
('Pakistan', '555/6\r\n', 2015, 'drawn', '96/10\r\n', 2003, 'PAK won by 7 wickets.', 'test'),
('Pakistan', '361/10\r\n', 2003, 'PAK won by 9 wickets.', '134/10\r\n', 2001, 'Pak won by inns &264 runs.\r\n', 'test'),
('Pakistan', '338/10\r\n', 2011, 'PAK won by 7 wickets.', '135/10\r\n', 2011, 'pak won by inns & 184 runs.\r\n', 'test'),
('New Zealand', '595/8d\r\n', 2017, 'NZ won by 7 wickets.', '108/10', 2001, 'NZ won by inns & 52 runs.', 'test'),
('New Zealand', '501/10', 2013, 'drawn', '113/10', 2008, 'NZ won by inns & 137 runs.', 'test'),
('New Zealand', '408/10', 2010, 'NZ won by 121 runs.', '126/10', 2004, 'NZ won by inns & 99 runs.', 'test'),
('West Indies', '556/10', 2012, 'WI won by 77 runs.', '87/10', 2002, 'WI won by inns & 310 runs.', 'test'),
('West Indies', '416/10', 2004, 'drawn', '119/3d\r\n', 2011, 'drawn', 'test'),
('West Indies', '387/10', 2012, 'WI won by 10 wickets.', '139/10', 2002, 'WI won by inns & 310 runs.', 'test'),
('South Africa', '326/10', 2015, 'drawn', '90/10', 2017, 'SA won by 333 runs.', 'test'),
('South Africa', '320/10', 2017, 'SA won by 333 runs.', '102/10', 2003, 'SA won by inns & 18 runs.', 'test'),
('South Africa', '259/10', 2008, 'SA won by inns & 205 runs.', '107/10', 2002, 'SA won by inns & 160 runs.', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player_detail`
--
ALTER TABLE `player_detail`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`Country`),
  ADD UNIQUE KEY `Oponent` (`Oponent`);

--
-- Indexes for table `score_details`
--
ALTER TABLE `score_details`
  ADD PRIMARY KEY (`Batsman_strick`);

--
-- Indexes for table `t20_bowling`
--
ALTER TABLE `t20_bowling`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `test_bowling`
--
ALTER TABLE `test_bowling`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `top_batsman_test`
--
ALTER TABLE `top_batsman_test`
  ADD PRIMARY KEY (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
