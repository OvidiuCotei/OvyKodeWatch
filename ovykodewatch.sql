-- --------------------------------------------------------
-- Server:                       127.0.0.1
-- Versiune server:              10.4.11-MariaDB - mariadb.org binary distribution
-- SO server:                    Win64
-- HeidiSQL Versiune:            10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Descarcă structura bazei de date pentru ovykodewatch
CREATE DATABASE IF NOT EXISTS `ovykodewatch` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ovykodewatch`;

-- Descarcă structura pentru tabelă ovykodewatch.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.categories: ~2 rows (aproximativ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`) VALUES
	(1, 'Teaching & Tutorials'),
	(2, 'Film & Animation');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postedBy` varchar(50) NOT NULL DEFAULT '0',
  `videoId` int(11) NOT NULL DEFAULT 0,
  `responseTo` int(11) NOT NULL DEFAULT 0,
  `body` text NOT NULL DEFAULT '0',
  `datePosted` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.comments: ~37 rows (aproximativ)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
	(1, 'OvidiuCotei', 1, 0, 'Hey, nice video man!', '2020-03-21 14:30:43'),
	(2, 'OvidiuCotei', 1, 0, 'Nice counter man !', '2020-03-21 14:40:19'),
	(3, 'OvidiuCotei', 1, 0, 'Woow super!', '2020-03-21 14:51:03'),
	(4, 'OvidiuCotei', 1, 0, 'Hey!', '2020-03-21 14:54:08'),
	(5, 'OvidiuCotei', 1, 0, 'asdasda', '2020-03-21 14:59:02'),
	(6, 'OvidiuCotei', 1, 0, 'sdad', '2020-03-21 14:59:59'),
	(7, 'OvidiuCotei', 1, 0, 'Test comment', '2020-03-21 15:03:19'),
	(8, 'OvidiuCotei', 1, 0, 'Hi', '2020-03-21 15:33:49'),
	(9, 'OvidiuCotei', 1, 0, 'Cool', '2020-03-21 15:35:20'),
	(10, 'OvidiuCotei', 1, 0, 'gdsgdfgdf', '2020-03-21 15:45:39'),
	(11, 'OvidiuCotei', 1, 0, 'hey', '2020-03-22 11:11:27'),
	(12, 'OvidiuCotei', 1, 11, 'dsad', '2020-03-22 11:11:39'),
	(13, 'OvidiuCotei', 1, 0, 'dasdas', '2020-03-22 11:20:41'),
	(14, 'OvidiuCotei', 1, 0, 'sadas', '2020-03-22 11:21:18'),
	(15, 'OvidiuCotei', 1, 0, 'sadas', '2020-03-22 11:24:59'),
	(16, 'OvidiuCotei', 1, 0, 'sdfsd', '2020-03-22 11:27:07'),
	(17, 'OvidiuCotei', 1, 0, 'gdfgd', '2020-03-22 11:27:59'),
	(18, 'OvidiuCotei', 1, 0, 'ffghgf', '2020-03-22 11:30:15'),
	(19, 'OvidiuCotei', 1, 0, 'sfsd', '2020-03-22 11:33:35'),
	(20, 'OvidiuCotei', 1, 0, 'hjfggr', '2020-03-22 11:35:57'),
	(21, 'OvidiuCotei', 1, 0, 'cvbcv', '2020-03-22 11:44:41'),
	(22, 'OvidiuCotei', 1, 0, 'iyuyujy', '2020-03-22 11:47:35'),
	(23, 'OvidiuCotei', 1, 0, 'dfgffgd', '2020-03-22 11:56:23'),
	(24, 'OvidiuCotei', 1, 0, 'hgjgh', '2020-03-22 12:01:00'),
	(25, 'OvidiuCotei', 1, 0, 'gddgdf', '2020-03-22 12:06:13'),
	(26, 'OvidiuCotei', 1, 25, 'fsdfsdfs', '2020-03-22 12:06:21'),
	(27, 'OvidiuCotei', 1, 0, 'bnbv', '2020-03-22 12:28:07'),
	(28, 'OvidiuCotei', 1, 0, 'bbb', '2020-03-22 12:34:23'),
	(29, 'OvidiuCotei', 1, 0, 'ngh', '2020-03-22 12:37:53'),
	(30, 'OvidiuCotei', 1, 29, 'this is a response', '2020-03-22 13:12:18'),
	(31, 'OvidiuCotei', 1, 30, 'dfsdfds', '2020-03-22 13:40:48'),
	(32, 'OvidiuCotei', 1, 31, 'GO', '2020-03-22 13:42:48'),
	(33, 'OvidiuCotei', 1, 28, 'Hey', '2020-03-22 13:48:49'),
	(34, 'OvidiuCotei', 1, 33, 'There', '2020-03-22 13:49:02'),
	(35, 'OvidiuCotei', 1, 27, 'Hey', '2020-03-22 13:49:41'),
	(36, 'OvidiuCotei', 1, 35, 'There', '2020-03-22 13:49:45'),
	(37, 'OvidiuCotei', 1, 36, 'Man', '2020-03-22 13:49:50'),
	(38, 'OvidiuCotei', 1, 37, 'common', '2020-03-22 13:49:56');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.dislikes
CREATE TABLE IF NOT EXISTS `dislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `commentId` int(11) NOT NULL DEFAULT 0,
  `videoId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.dislikes: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `dislikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dislikes` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.likes
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `commentId` int(11) NOT NULL DEFAULT 0,
  `videoId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.likes: ~1 rows (aproximativ)
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
	(58, 'OvidiuCotei', 0, 1);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.subscribes
CREATE TABLE IF NOT EXISTS `subscribes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userTo` varchar(50) NOT NULL DEFAULT '0',
  `userFrom` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.subscribes: ~1 rows (aproximativ)
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
INSERT INTO `subscribes` (`id`, `userTo`, `userFrom`) VALUES
	(127, 'OvyKode', 'OvidiuCotei');
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.thumbnails
CREATE TABLE IF NOT EXISTS `thumbnails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoId` int(11) NOT NULL DEFAULT 0,
  `filePath` varchar(255) NOT NULL DEFAULT '0',
  `selected` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.thumbnails: ~5 rows (aproximativ)
/*!40000 ALTER TABLE `thumbnails` DISABLE KEYS */;
INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
	(1, 1, 'uploads/videos/thumbnails/1-5e5fad8a47089.jpg', 1),
	(2, 1, 'uploads/videos/thumbnails/1-5e5fad8abdf01.jpg', 0),
	(3, 1, 'uploads/videos/thumbnails/1-5e5fad8b2e979.jpg', 0),
	(4, 2, 'uploads/videos/thumbnails/2-5e775b834dfce.jpg', 0),
	(5, 2, 'uploads/videos/thumbnails/2-5e775b83be958.jpg', 0),
	(6, 2, 'uploads/videos/thumbnails/2-5e775b842b6d0.jpg', 1);
/*!40000 ALTER TABLE `thumbnails` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) NOT NULL DEFAULT '0',
  `lastName` varchar(25) NOT NULL DEFAULT '0',
  `username` varchar(25) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0',
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.users: ~2 rows (aproximativ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
	(1, 'Ovidiu', 'Cotei', 'OvidiuCotei', 'Ovidiu_metallica@yahoo.com', 'd8582e47e2a7dc04b83cb460695a438e9dc9538d32f2b68332cd7859093dfa90ee617dd02d05fa0fbbc9bbfa0b479762f6771cb9518275ca588e00f864a0a231', '2020-03-04 14:11:17', 'assets/images/profilePictures/default-male.png'),
	(2, 'Ovy', 'Kode', 'OvyKode', 'ovykode@gmail.com', 'd8582e47e2a7dc04b83cb460695a438e9dc9538d32f2b68332cd7859093dfa90ee617dd02d05fa0fbbc9bbfa0b479762f6771cb9518275ca588e00f864a0a231', '2020-03-04 14:17:52', 'assets/images/profilePictures/default-male.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Descarcă structura pentru tabelă ovykodewatch.videos
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploadedBy` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(70) NOT NULL DEFAULT '0',
  `description` text NOT NULL DEFAULT '0',
  `privacy` int(11) NOT NULL DEFAULT 0,
  `filePath` varchar(250) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT 0,
  `uploadDate` datetime DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Descarcă datele pentru tabela ovykodewatch.videos: ~2 rows (aproximativ)
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
	(1, 'OvyKode', 'Countdown', 'Countdown, timer in After Effects.', 1, 'uploads/videos/5e5fad8756835.mp4', 2, '2020-03-04 15:30:47', 482, '00:11'),
	(2, 'OvidiuCotei', 'Awesome Counter', 'My super counter animation', 1, 'uploads/videos/5e775b7e1bdf4.mp4', 2, '2020-03-22 14:35:10', 25, '00:11');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
