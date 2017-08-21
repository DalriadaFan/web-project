-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2017 at 08:06 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `animes`
--

CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animes`
--

INSERT INTO `animes` (`id`, `name`, `description`, `image`) VALUES
(1, 'Naruto', 'Moments prior to Naruto Uzumaki\'s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc.', 'naruto.jpg'),
(2, 'Death Note', 'Have you ever felt like the world would be a better place if certain people weren’t around?', 'deathnote.jpg'),
(3, 'Shingeki No Kyojin', 'Over a century ago, mankind was devoured by giant beings of unknown intelligence and origin known as Titans - creatures that eat humans alive indiscriminately and for no apparent reason.', 'snk.jpg'),
(4, 'Elfen Lied', 'For Kouta and Yuka, finding the bloody naked young girl on the beach would change their lives forever, for better or for worse.', 'elfen.jpg'),
(5, 'Tokyo Ghoul', 'In modern day Tokyo, society lives in fear of Ghouls: mysterious creatures who look exactly like humans -- yet hunger insatiably for their flesh.', 'tokyog.jpg'),
(6, 'Fullmetal Alchemist', 'Once upon a time, two brothers passed the happy days of their childhood by studying alchemy, which is governed by the equal transfer principle: an eye for an eye -- you can\'t get more than you give.', 'fma.jpg'),
(7, 'One Punch Man', 'Saitama only became a hero for fun, but after three years of \"special\" training, he finds that he can beat even the mightiest opponents with a single punch.', 'onepunch.jpg'),
(8, 'Code Geass', 'In 2010, the Britannian Empire enslaved Japan using powerful mecha known as Knightmares; in the aftermath Japan was renamed Area 11, and its people began a hard and terrible existence.', 'codegeass.jpg'),
(9, 'Erased', 'Satoru Fujinuma is a reclusive part-timer with no plans for the future. What sets him apart from the other slackers in his town is an involuntary time travel ability that allows him to jump back several seconds in time in order to prevent accidents and even deaths. ', 'erased.jpg'),
(10, 'Dragon Ball Z', 'Five years have passed since Goku and his friends defeated Piccolo Jr. and restored peace to the planet. Gohan - Goku\'s son - and a variety of good, bad, and morally ambiguous characters are back, and perpetually not ready for action!', 'dbz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userfavs`
--

CREATE TABLE `userfavs` (
  `username` varchar(255) NOT NULL,
  `animename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(8) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `email`) VALUES
(1, 'abbas123', 'coolyo', 'nice@nice.com'),
(2, 'mersib', 'bloodseeker', 'mersib@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `userfavs`
--
ALTER TABLE `userfavs`
  ADD KEY `username` (`username`),
  ADD KEY `animename` (`animename`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `userfavs`
--
ALTER TABLE `userfavs`
  ADD CONSTRAINT `userfavs_ibfk_1` FOREIGN KEY (`animename`) REFERENCES `animes` (`name`) ON DELETE CASCADE,
  ADD CONSTRAINT `userfavs_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
