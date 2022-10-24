-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 окт 2022 в 17:41
-- Версия на сървъра: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts`
--

-- --------------------------------------------------------

--
-- Структура на таблица `mycontacts`
--

CREATE TABLE `mycontacts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `mycontacts`
--

INSERT INTO `mycontacts` (`id`, `name`, `phone`, `email`, `user_id`) VALUES
(1, 'Petar', 123456789, 'petar@petar.com', 1),
(2, 'Sano', 2147483647, 'sano@sano.com', 1),
(4, 'Ivan', 214748364, 'Ivan@Ivan.com', 2),
(5, 'Elena', 698564586, 'elena@elena.com', 2),
(6, 'Pencho', 325689152, 'pencho@pencho.com', 2),
(7, 'Stefcho', 656565656, 'stefcho@stefcho.com', 2),
(8, 'Asq', 214748364, 'asq@asq.com', 3),
(9, 'Cveti', 987566458, 'cveti@cveti.com', 3),
(10, 'Ivan', 356898745, 'ivan@ivan.com', 3);

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Ivan', '123456'),
(2, 'Petar', '123456'),
(3, 'Simona', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mycontacts`
--
ALTER TABLE `mycontacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mycontacts`
--
ALTER TABLE `mycontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
