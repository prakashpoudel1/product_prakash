-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 09:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_funolympics`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(2, 'Sujan', 'Ghimire', 'sujan@gmail.com', '74b87337454200d4d33f80c4663dc5e5'),
(3, 'Prakash', 'Poudel', 'prakash1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Prakash', 'Poudel', 'Prakash@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `admins_otp`
--

CREATE TABLE `admins_otp` (
  `id` int(11) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins_otp`
--

INSERT INTO `admins_otp` (`id`, `otp_code`, `created_at`) VALUES
(1, '56', '2024-04-05 03:33:38'),
(2, '83', '2024-04-05 03:34:47'),
(3, '45', '2024-04-05 03:34:49'),
(4, '12', '2024-04-05 07:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `game` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`) VALUES
(1, 'Over 4,000 children gather at Porte de La Chapelle Arena for the Paris launch of Olympic and Paralympic Week 2024, with educational activities for more than 2 million young people throughout France', 'The eighth edition of Olympic and Paralympic Week was launched today at an event organised by Paris 2024 in partnership with Danone, the Ile de France academic region, the Ile de France Regional Olympic and Sports Committee (CROSIF), the French Paralympic and Sports Committee (CPSF), the City of Paris, the sports movement and school and university sports federations. Held at the Porte de La Chapelle Arena, the event was attended by more than 4,000 children, who were given the chance to learn about and try out various physical activities alongside Typhaine Soldé and Jackson Richardson.\r\n\r\n““Celebrating the Games and athletes from around the world”: the motto of this eighth and final edition of Olympic and Paralympic Week before the Paris 2024 Games rings out louder than ever as the countdown to an exceptional summer nears its climax. Since 2017, Olympic and Paralympic Week has raised awareness among more than 5 million young people with regard to the benefits of sport and other key topics such as disability and inclusion through sport. This year has seen even more projects with a Para sports dimension, 6,200 in all.” Tony Estanguet, Paris 2024 President\r\n\r\n“I am very proud to be a patron of this latest Paris 2024 Olympic and Paralympic Week as a Danone athlete because I believe teaching young people about sport and disability is vital. At the launch event, I was able to meet thousands of children and encourage them to exercise more and enjoy a balanced diet to enhance their mental and physical well-being. People’s mindsets and habits must be changed, and for that we need everyone.” Typhaine Soldé, Paralympic athlete', '1.jpg'),
(2, 'The Paris 2024 Board of Directors approves new location for the Paralympic Games Main Press Centre', 'The Paris 2024 Board of Directors met on Tuesday 26 March 2024 at the headquarters of the Organising Committee.   \r\n\r\nDuring the meeting, the Paris 2024 Board of Directors confirmed, subject to the approval of the IPC Governing Board, a change of location for the Main Press Centre (MPC) for the Paralympic Games.   \r\n\r\nPreviously planned to be housed in temporary facilities adjacent to the Olympic Aquatics Centre, it will now be located within “Pulse”, the Paris 2024 headquarters in Saint-Denis.  \r\n\r\nThis decision is in line with an approach based on simplification and optimisation of resources that has guided the Organising Committee and its stakeholders from the outset. The original location proposed for the Paralympic Games MPC would have required additional work to fit out the space identified.  \r\n\r\nWith this decision, the media will be able to work from the heart of the Paris 2024 operation. Bright and fully accessible, with catering facilities and the capacity to host press conferences, Pulse, which already houses the Main Operations Centre (MOC) for the duration of the Olympic and Paralympic Games, also has the advantage of being directly served by public transport.                                                ', '3.png'),
(3, '2023 U.S. Swimming Championships TV, live stream schedule', 'lorem ipusum lorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusumlorem ipusum', 'images.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Sujan', 'Ghimire', 'sujan@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(2, 'Prakash', 'Poudel', 'prakash@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(3, 'manish', 'acharya', 'manish@gmail.com', 'b59c67bf196a4758191e42f76670ceba');

-- --------------------------------------------------------

--
-- Table structure for table `users_otp`
--

CREATE TABLE `users_otp` (
  `id` int(11) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_otp`
--

INSERT INTO `users_otp` (`id`, `otp`, `created_at`) VALUES
(2, '42', '2024-04-05 03:21:02'),
(3, '92', '2024-04-05 03:23:28'),
(4, '42', '2024-04-05 03:40:38'),
(5, '47', '2024-04-05 03:48:48'),
(6, '64', '2024-04-05 06:34:27'),
(7, '73', '2024-04-05 06:49:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `admins_otp`
--
ALTER TABLE `admins_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_otp`
--
ALTER TABLE `users_otp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins_otp`
--
ALTER TABLE `admins_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_otp`
--
ALTER TABLE `users_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
