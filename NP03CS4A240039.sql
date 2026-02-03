-- phpMyAdmin SQL Dump
-- version 5.2.3-1.el10_2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2026 at 09:46 AM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NP03CS4A240039`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `food_name`, `price`, `image`) VALUES
(1, 'Burger', 200.00, '69817b20474d4.png'),
(2, 'Chaumin', 120.00, '698189c777aea.png'),
(5, 'Momoooo`', 200.00, '69818ebf8a7b6.png'),
(6, 'Samosa', 15.00, '69818eadbc7e8.png'),
(8, 'Noodles', 80.00, '69819049e91fc.png'),
(12, 'Sandwitch', 65.00, '698193f7e5813.png'),
(13, 'Fries', 60.00, '6981944a405f0.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` enum('pending','completed') DEFAULT 'pending',
  `order_date` datetime DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `food_id`, `quantity`, `total_price`, `phone`, `location`, `status`, `order_date`, `completed_at`) VALUES
(1, 1, 1, 1, 200.00, '9761720511', 'Swoyambhu', 'completed', '2026-02-03 10:21:16', '2026-02-03 10:54:25'),
(2, 1, 1, 2, 400.00, '9761720511', 'Swoyambhu', 'completed', '2026-02-03 10:54:11', '2026-02-03 12:12:13'),
(3, 1, 2, 1, 123.00, '9761720511', 'Swoyambhu', 'completed', '2026-02-03 12:08:33', '2026-02-03 12:11:50'),
(4, 1, 8, 1, 80.00, '9761720511', 'Swoyambhu', 'pending', '2026-02-03 12:08:33', NULL),
(5, 4, 13, 2, 120.00, '8888888888', 'thamel', 'pending', '2026-02-03 12:37:39', NULL),
(6, 1, 8, 1, 80.00, '9761720511', 'Swoyambhu', 'pending', '2026-02-03 13:54:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','customer') DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phone`, `location`) VALUES
(1, 'nijal', 'nijal@gmail.com', '$2y$10$MjbAjW7Gvn0f9F52diLNmucLA893XxnIH7AX8TprYKIRolK4rLqC6', 'customer', '9761720511', 'Swoyambhu'),
(2, 'Admin', 'admin@college.com', '$2y$10$a0imAXo.tjzWlxclTlVBMOAP4N.FIqeP7Q2dlLYnyz/ldN4G2f5T.', 'admin', NULL, NULL),
(3, 'Prajal', 'prajal@gmail.com', '$2y$10$gYO2cUMiQU6HKKyaO7Ck0evFuOehoWkCOjD/yUauvUmR62MnWaI2m', 'customer', '9999999922', 'dallu'),
(4, 'Prince', 'prince@gmail.com', '$2y$10$DfH0RnZoxgtoI1DJuCwYUe0DXwcEwKoumYX4dj.k/7uWBMxw31NSi', 'customer', '8888888888', 'thamel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
