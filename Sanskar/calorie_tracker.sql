-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 09:12 AM
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
-- Database: `calorie_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `calorie_intake`
--

CREATE TABLE `calorie_intake` (
  `intake_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `intake_date` date DEFAULT NULL,
  `calorie_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `height`, `weight`, `age`, `gender`) VALUES
(4, 'chirayu', 'c@gmail.com', 'c12345678', 170, 68, 22, 'Male'),
(6, 'Raunak', 'raunak@gmail.com', 'Raunak123', 183, 86, 20, 'Male'),
(7, 'Kavan', 'kavan@gmail.com', 'Kavan123', 163, 64, 21, 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calorie_intake`
--
ALTER TABLE `calorie_intake`
  ADD PRIMARY KEY (`intake_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calorie_intake`
--
ALTER TABLE `calorie_intake`
  MODIFY `intake_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calorie_intake`
--
ALTER TABLE `calorie_intake`
  ADD CONSTRAINT `calorie_intake_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
