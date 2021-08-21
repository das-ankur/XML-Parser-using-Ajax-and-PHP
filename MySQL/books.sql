-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 09:11 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` varchar(10) NOT NULL,
  `author` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `publish_date` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `genre`, `price`, `publish_date`, `description`) VALUES
('bk101', 'Gambardella, Matthew', 'XML Developer\'s Guide', '44.95', 'Computer', '2000-10-01', 'An in-depth look at creating applications \n      with XML.'),
('bk102', 'Ralls, Kim', 'Midnight Rain', '5.95', 'Fantasy', '2000-12-16', 'A former architect battles corporate zombies, \n      an evil sorceress, and her own childhood to bec'),
('bk103', 'Corets, Eva', 'Maeve Ascendant', '5.95', 'Fantasy', '2000-11-17', 'After the collapse of a nanotechnology \n      society in England, the young survivors lay the \n     '),
('bk104', 'Corets, Eva', 'Oberon\'s Legacy', '5.95', 'Fantasy', '2001-03-10', 'In post-apocalypse England, the mysterious \n      agent known only as Oberon helps to create a new l'),
('bk105', 'Corets, Eva', 'The Sundered Grail', '5.95', 'Fantasy', '2001-09-10', 'The two daughters of Maeve, half-sisters, \n      battle one another for control of England. Sequel t'),
('bk106', 'Randall, Cynthia', 'Lover Birds', '4.95', 'Romance', '2000-09-02', 'When Carla meets Paul at an ornithology \n      conference, tempers fly as feathers get ruffled.'),
('bk107', 'Thurman, Paula', 'Splish Splash', '4.95', 'Romance', '2000-11-02', 'A deep sea diver finds true love twenty \n      thousand leagues beneath the sea.'),
('bk108', 'Knorr, Stefan', 'Creepy Crawlies', '4.95', 'Horror', '2000-12-06', 'An anthology of horror stories about roaches,\n      centipedes, scorpions  and other insects.'),
('bk109', 'Kress, Peter', 'Paradox Lost', '6.95', 'Science Fi', '2000-11-02', 'After an inadvertant trip through a Heisenberg\n      Uncertainty Device, James Salway discovers the '),
('bk110', 'O\'Brien, Tim', 'Microsoft .NET: The Programmin', '36.95', 'Computer', '2000-12-09', 'Microsoft\'s .NET initiative is explored in \n      detail in this deep programmer\'s reference.'),
('bk111', 'O\'Brien, Tim', 'MSXML3: A Comprehensive Guide', '36.95', 'Computer', '2000-12-01', 'The Microsoft MSXML3 parser is covered in \n      detail, with attention to XML DOM interfaces, XSLT '),
('bk112', 'Galos, Mike', 'Visual Studio 7: A Comprehensi', '49.95', 'Computer', '2001-04-16', 'Microsoft Visual Studio 7 is explored in depth,\n      looking at how Visual Basic, Visual C++, C#, a');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
