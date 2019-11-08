-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2019 at 06:50 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favMovies`
--

CREATE TABLE `tbl_favMovies` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Country` varchar(20) COLLATE utf8_bin NOT NULL,
  `Premiere` varchar(10) COLLATE utf8_bin NOT NULL,
  `Season` varchar(10) COLLATE utf8_bin NOT NULL,
  `Synopsis` text COLLATE utf8_bin NOT NULL,
  `Poster` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_favMovies`
--

INSERT INTO `tbl_favMovies` (`ID`, `Title`, `Country`, `Premiere`, `Season`, `Synopsis`, `Poster`) VALUES
(2, 'The Handmaiden', 'South Korea', '2016', 'Spring', '1930s Korea, in the period of Japanese occupation, a new girl (Sookee) is hired as a handmaiden to a Japanese heiress (Hideko) who lives a secluded life on a large countryside estate with her domineering Uncle (Kouzuki). But the maid has a secret. She is a pickpocket recruited by a swindler posing as a Japanese Count to help him seduce the Lady to elope with him, rob her of her fortune, and lock her up in a madhouse. The plan seems to proceed according to plan until Sookee and Hideko discover some unexpected emotions.', 'handmaiden.jpeg'),
(3, 'Call Me By Your Name', 'France, Italy', '2018', 'Summer', 'It\'s the summer of 1983, and precocious 17-year-old Elio Perlman is spending the days with his family at their 17th-century villa in Lombardy, Italy. He soon meets Oliver, a handsome doctoral student who\'s working as an intern for Elio\'s father. Amid the sun-drenched splendor of their surroundings, Elio and Oliver discover the heady beauty of awakening desire over the course of a summer that will alter their lives forever.', 'callmebyyourname.jpeg'),
(4, 'Carol', 'United Kingdom', '2015', 'Winter', 'During a christmas season in 1950s, Therese Belivet, a shopgirl with photography hobby works at a Department Store in Manhattan named Frankenberg\'s, the place she met Carol Aird, a semi-divorced woman. Carol\'s loveless relationship with her former husband, Harge Aird took both Therese and Carol into an unexpected relationship. While Therese had to stop her relationship with her boyfriend, Richard, Carol has to face new problem- the morality clause from her own husband. This relationship can be unstable, and their own reliance to make the continuity of their relationship are tested.', 'carol.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seeMore`
--

CREATE TABLE `tbl_seeMore` (
  `ID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `Director` varchar(20) COLLATE utf8_bin NOT NULL,
  `Cast` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_seeMore`
--

INSERT INTO `tbl_seeMore` (`ID`, `movieID`, `Director`, `Cast`) VALUES
(1, 2, 'Park Chan-wook', 'Kim Min-hee, Kim Tae-ri, Ha Jung-woo, Cho Jin-woong'),
(2, 3, 'Luca Guadagnino', 'Armie Hammer, Timothée Chalamet, Michael Stuhlbarg\r\nAmira Casar, Esther Garrel, Victoire Du Bois'),
(3, 4, 'Todd Haynes', 'Cate Blanchett, Rooney Mara, Sarah Paulson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_favMovies`
--
ALTER TABLE `tbl_favMovies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_seeMore`
--
ALTER TABLE `tbl_seeMore`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_favMovies`
--
ALTER TABLE `tbl_favMovies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_seeMore`
--
ALTER TABLE `tbl_seeMore`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
