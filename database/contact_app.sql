-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 10:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `user_id`, `name`, `company`, `phone`, `email`, `date_added`, `is_deleted`) VALUES
(26, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(27, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(28, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(29, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(30, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(31, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(33, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(34, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(35, 6, 'Ericka Montano', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 1),
(37, 6, 'kiara23', 'Jeffs', '09381737187', 'amabaderek@gmail.com', '2020-06-23 09:51:47', 1),
(38, 6, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 09:06:28', 1),
(39, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(40, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(41, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(42, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(43, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(44, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(45, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(46, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(47, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(48, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(49, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(50, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(51, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(52, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(53, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(54, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(55, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(56, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(57, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(58, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(59, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(60, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(61, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(62, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(63, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(64, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(65, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(66, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(67, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(68, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(69, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(70, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(71, 7, 'Proweaver Test', 'Jeffs', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:36', 0),
(72, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(73, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0),
(74, 7, 'Matthew Derek Amaba', 'Proweaver', '09381737187', 'mamaba@proweaver.net', '2020-06-23 10:00:53', 0),
(75, 6, 'Matthew Derek Amaba', 'Proweaver', '09959505511', 'amabaderek@gmail.com', '2020-06-23 13:38:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email_address`, `password`, `date_added`) VALUES
(1, 'test', 'web2.derek@gmail.com', 'test', '2020-06-22 00:00:00'),
(6, 'Proweaver Test', 'amabadddurk@gmail.com', '$2y$10$s7f0nwBcGMi0rikk35qfvebymeF/Ms86wtZV82yHQJanp42wdkcdq', '2020-06-22 04:55:18'),
(7, 'Ericka Montact', 'montano@gmail.com', '$2y$10$pXO8a8yua/qyfzDf77Th5OUArdoiVi7GNB3tKp65FJwqCz7mqk4hW', '2020-06-23 09:59:18'),
(8, 'Proweaver Test', 'test@gmail.com', '$2y$10$nu9OrqbMgbbYbVJQ45q02OrwR5Wju7jJll1YGDNYgJ.hWFHuCvEqy', '2020-06-23 10:28:23'),
(9, 'Epoy', 'poy@gmail.com', '$2y$10$Kg9tmLi.V.iaPSQnjo.CMOo5B1MgkIsRJF8.UakSFxrk8/.Xmysoa', '2020-06-23 10:29:24'),
(10, 'JR', 'jr@gmail.com', '$2y$10$Xmrvj5yvad43MbqywcaV9eBi3kQYcJ3qUKlUKjZr/yv.q3GMzug9G', '2020-06-23 10:30:50'),
(11, 'Ynah', 'ynah@gmail.com', '$2y$10$H0.jv2bCwIzy1DNVynQfAe1CQCJMJkkmvHKhzfWJAz7UTIYSsyrN6', '2020-06-23 10:32:06'),
(12, 'nicole', 'nicole@gmail.com', '$2y$10$SFv2PN7MOZn6jbWKQfmVJuPTtsXHseE0cIf5Vq7eQwQ86/o5PzX1i', '2020-06-23 10:33:40'),
(13, 'durk', 'durk@gmail.com', '$2y$10$6QBEAedhXiNp6DTLMybNSOx2/liJf2syjOoRQH2.tzKf2tAwETeyi', '2020-06-23 10:34:40'),
(14, 'durrek', 'durek@gmail.com', '$2y$10$7EtkJ0FWKtx.rq10R/7eyOR2SSoDJQggvUNxiHK63RscYXBcLkqGW', '2020-06-23 10:35:45'),
(15, 'max', 'max@gmail.com', '$2y$10$6nD5zwnbu7.OWSafBKTZg.VT/0j7Ma9WrvvdVsCbLrItxOHcvGh5y', '2020-06-23 10:37:18'),
(16, 'kiaraa@gmail.com', 'kiar@gmail.com', '$2y$10$a8.X9/vB74bPU5knEzD8auq0zmvviskPomOColYTKP2JNjnm6srNW', '2020-06-23 10:39:00'),
(17, 'maxxy', 'maxxy@gmail.com', '$2y$10$tPg4WSqB6RQg1O7E390Wee2hdVyxqVCJwon74llkEVuwUkifOcESS', '2020-06-23 10:41:58'),
(18, 'maxxxxxxy', 'maxy@gmail.com', '$2y$10$pFl7X4rF/Y9PwYV.q8mtXOP3UnQVzXSsDB3NFqifpwQOthhwG85YC', '2020-06-23 10:42:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
