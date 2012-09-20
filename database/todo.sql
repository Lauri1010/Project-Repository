-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2012 at 03:12 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo`
--

CREATE TABLE IF NOT EXISTS `tbl_todo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `description` varchar(500) COLLATE utf8_swedish_ci NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `added` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_todo`
--

INSERT INTO `tbl_todo` (`id`, `user_id`, `description`, `done`, `added`) VALUES
(2, 1, 'I need to wash the clothes.', 0, '2012-09-20'),
(3, 1, 'Hello everybody', 0, '2012-09-20'),
(4, 1, 'Life is great, isnt it?', 0, '2012-09-20'),
(5, 1, 'I need to eat and stuff', 0, '2012-09-20'),
(6, 1, 'This is a todo, isnt it?', 0, '2012-09-20'),
(7, 1, 'I need to get rich', 0, '2012-09-20'),
(8, 1, 'I need to find my one million euros and such', 0, '2012-09-20');

--
-- Triggers `tbl_todo`
--
DROP TRIGGER IF EXISTS `todo_date_OnInsert`;
DELIMITER //
CREATE TRIGGER `todo_date_OnInsert` BEFORE INSERT ON `tbl_todo`
 FOR EACH ROW SET NEW.added = NOW()
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(70) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`) VALUES
(1, 'laupatrik@gmail.com', 'f13b10041eb7fe26f91e7ef9ab0dad9c4bb42e4c');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  ADD CONSTRAINT `tbl_todo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
