-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 28, 2022 at 02:32 PM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurants` (
    `id` int NOT NULL,
    `name` text NOT NULL, 
    `description` text NOT NULL, 
    `address` text NOT NULL, 
    `phone` text NOT NULL, 
    `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `restaurants` (`id`, `name`, `address`, `phone`, `description`, `pic`) VALUES 
(1, 'Japo Santa Catalina', 'Carrer de Sant Magí, 25, 07013 Palma de Mallorca, Mallorca España\r\n', '+34 971 73 83 21', 'Japanese Food', 'https://media-cdn.tripadvisor.com/media/photo-s/1d/1d/ae/1c/carpaccio-rol.jpg'), 
(2, 'Cannibal Cantina Bistro','Plaça de Sant Antoni 8, 07002 Palma de Mallorca, Mallorca España\r\n', '+34 662 54 20 89', 'Gourmet sheeeeeeet', 'https://media-cdn.tripadvisor.com/media/photo-p/18/94/a0/c8/cannibal-cantina-bistro.jpg'), 
(3, 'Izakaya Mallorca','Carrer dEspartero, 15, 07014 Palma de Mallorca, Mallorca España\r\n', '+34 871 03 76 33', 'Japo traditional food', 'https://media-cdn.tripadvisor.com/media/photo-s/1d/39/e8/cb/izakaya-mallorca.jpg'), 
(4, 'FaBrick food & more','Calle San Magín 84, 07013 Palma de Mallorca, Mallorca España\r\n', '+34 610 89 06 21', 'Innovative cuisine', 'https://media-cdn.tripadvisor.com/media/photo-s/17/d0/c3/7a/fabrick-food-more.jpg'),
(5, 'Pizzeria Los Dos Hermanos','Carrer de la Reina Maria Cristina, 61, 07004 Palma de Mallorca, Mallorca España\r\n', '+34 871 53 09 63', 'Italian Food', 'https://media-cdn.tripadvisor.com/media/photo-p/1b/d4/05/f6/genovese-pesto-de-albahaca.jpg');

CREATE TABLE `users` (
    `id` int NOT NULL,
    `username` text NOT NULL,
    `name` text NOT NULL,
    `surname` text NOT NULL,
    `email` text NOT NULL,
    `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `users` (`id`, `username`, `name`, `surname`, `email`, `password`) VALUES
(1, 'yuki', 'yuki', '', 'yuki@admin.com',  '32250170a0dca92d53ec9624f336ca24'),
/* Password 'pass123' with 'md5' */
(2, 'admin', 'Administrator', '', 'admin@iesfbmoll.org', '3f28c9e5f49efe2ce08c056ec6ecc5d1'),
/* Password 'Admin.1234' with 'md5' */
(3, 'jsmith', 'John', 'Smith', 'jsmith@iesfbmoll.org', '25d55ad283aa400af464c76d713c07ad'),
/* Password '12345678' with 'md5' */
(4, 'pjohnson', 'Peter', 'Johnson', 'pjohnson@iesfbmoll.org', '81dc9bdb52d04dc20036dbd8313ed055');
/* Password '1234' with 'md5' */


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
