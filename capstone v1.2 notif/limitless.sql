-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 10:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `limitless`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `venue_name` varchar(255) DEFAULT NULL,
  `venue_address` text DEFAULT NULL,
  `expected_guests` int(11) DEFAULT NULL,
  `special_requests` text DEFAULT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepted_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `package_id`, `full_name`, `event_date`, `contact_number`, `email`, `venue_name`, `venue_address`, `expected_guests`, `special_requests`, `event_type`, `status`, `is_read`, `created_at`, `accepted_at`, `declined_at`) VALUES
(1, 3, 6, 'Kris', '2024-11-20', '09636466496', 'kris@gmail.com', 'Sports  Complex', 'Sports Poblacion Cordova Cebu', 1134, '10 Feet Cake', 'Wedding', 'Accepted', 1, '2024-11-10 06:29:50', '2024-11-10 07:10:19', NULL),
(2, 4, 8, 'Arias Yaso', '2024-11-05', '09599494949499', 'arias@gmail.com', 'Lapu-lapu Hoopsdome', 'Lapu-lapu humay humay', 100, 'With random Artist Singer', 'Kiddie Party', 'Accepted', 1, '2024-11-10 06:35:30', '2024-11-10 13:33:39', NULL),
(3, 3, 7, 'Kris', '2024-11-13', '09452188603', 'kris@gmail.com', 'Sports Complex', 'Complex Poblacion Cordova Cebu', 11, '20 Feet Cake', 'Christening', 'Accepted', 1, '2024-11-10 07:44:50', '2024-11-10 13:33:38', NULL),
(4, 3, 8, 'Kris', '2024-11-12', '09452188603', 'kris@gmail.com', 'Sports Complex', 'poblacion cordova cebu', 21, '20 Feet Cake', 'Kiddie Party', 'Accepted', 1, '2024-11-10 07:46:06', '2024-11-10 13:33:39', NULL),
(5, 3, 9, 'Kris Cañete ', '2024-12-30', '09452188603', 'kris@gmail.com', 'Sports Complex', 'Poblacion Cordova Cebu', 21, '20 Feet Cake', 'Debut', 'Accepted', 1, '2024-11-10 07:47:54', '2024-11-10 13:31:02', NULL),
(6, 3, 6, 'kris', '2024-11-05', '09636466496', 'iamshado@gmail.com', 'sports complex', 'sports complex poblacion cordova cebu', 212, '20 feet cake', 'Wedding', 'Accepted', 0, '2024-11-10 13:28:20', '2024-11-10 13:33:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `feedback_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `related_content` text DEFAULT NULL,
  `action_user_id` int(11) DEFAULT NULL,
  `read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `type`, `related_content`, `action_user_id`, `read`, `created_at`) VALUES
(1, 3, 'Your booking for Wedding on 2024-11-20 has been accepted.', 'success', NULL, NULL, 1, '2024-11-10 07:10:19'),
(2, 3, 'Your booking for Debut on 2024-12-30 has been accepted.', 'success', NULL, NULL, 1, '2024-11-10 13:31:02'),
(3, 3, 'Your booking for Christening on 2024-11-13 has been accepted.', 'success', NULL, NULL, 1, '2024-11-10 13:33:38'),
(4, 3, 'Your booking for Kiddie Party on 2024-11-12 has been accepted.', 'success', NULL, NULL, 1, '2024-11-10 13:33:39'),
(5, 4, 'Your booking for Kiddie Party on 2024-11-05 has been accepted.', 'success', NULL, NULL, 0, '2024-11-10 13:33:39'),
(6, 3, 'Your booking for Wedding on 2024-11-05 has been accepted.', 'success', NULL, NULL, 1, '2024-11-10 13:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `images`, `created_at`) VALUES
(1, 2, 'Hello Guys, Its Christmas Discount all the packages we provide!\r\n', '', '2024-11-09 16:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `image_path`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Gold Wedding Package', 'Unli Rice', 212132.00, 'wedding', '/uploads/1731219860052.jpg', 'active', '2024-11-10 06:24:20', '2024-11-10 06:24:20'),
(7, 'Premium Christening Package', 'UnliCake', 123123.00, 'christening', '/uploads/1731219913751.jpg', 'active', '2024-11-10 06:24:53', '2024-11-10 06:25:13'),
(8, 'Fun Party Package', 'UnliCake Video Sound System', 55414.00, 'kiddieparty', '/uploads/1731247225814.png', 'active', '2024-11-10 06:25:50', '2024-11-10 14:00:25'),
(9, 'Grand Debut Package', 'Unli Wine With Full Sound System', 315556.00, 'debut', '/uploads/1731220015651.jpg', 'active', '2024-11-10 06:26:55', '2024-11-10 06:26:55'),
(10, 'Luxurious Wedding Package Offerings', 'Venue & Setup\r\n8-hour venue rental\r\nCeremony and reception space\r\nBasic decorations and lighting\r\nTables, chairs, and linens for up to 100 guests\r\nSetup and cleanup\r\nCatering\r\nBuffet dinner service\r\n3 appetizers\r\n2 main course options\r\n2 side dishes\r\nComplimentary cake cutting\r\nNon-alcoholic beverages\r\nServices\r\nWedding coordinator (day-of)\r\nBasic sound system\r\n6-hour photography coverage\r\nGuest book and gift table', 511112.00, 'wedding', NULL, 'active', '2024-11-10 13:06:00', '2024-11-10 13:06:00');

--
-- Triggers `products`
--
DELIMITER $$
CREATE TRIGGER `before_product_delete` BEFORE DELETE ON `products` FOR EACH ROW BEGIN
    -- Delete related records
    DELETE FROM bookings WHERE package_id = OLD.id;
    DELETE FROM ratings WHERE product_id = OLD.id;
    DELETE FROM feedback WHERE product_id = OLD.id;
    DELETE FROM comments WHERE product_id = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fb_ref` int(11) NOT NULL,
  `feedback` int(11) DEFAULT NULL,
  `fb_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(20) DEFAULT 'user',
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactNo` varchar(20) DEFAULT NULL,
  `termsAccepted` tinyint(1) DEFAULT 0,
  `profilePicture` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `fullName`, `email`, `password`, `contactNo`, `termsAccepted`, `profilePicture`, `is_active`, `created_at`) VALUES
(1, 'admin', 'Admin User', 'admin@gmail.com', '$2b$10$5QpuMCYtHxZY.HhfIQqzKO8x9T9Oj8MoHHJQe8kO1.zPxA0WlYYyq', '1234567890', 1, NULL, 1, '2024-11-09 16:34:08'),
(2, 'admin', 'Mark', 'mark@gmail.com', '$2b$10$56KcYJZXkFRuuXBWkeb.NOyx2cQTMVX1HBKf5vrilV08emoDExV..', '09636466496', 1, NULL, 1, '2024-11-09 16:37:55'),
(3, 'user', 'Kris Luci', 'kris@gmail.com', '$2b$10$gCPPK3umpORGtwNLnPWx1evRNpIxdGGkuL4WR.uJ6Uvf1XD2fcZ4a', '09452188603', 1, '/uploads/profiles/profile-1731242638698.jpg', 1, '2024-11-09 17:38:30'),
(4, 'user', 'arias', 'arias@gmail.com', '$2b$10$pbxYeljEKCfEuJkHa1IGneIQXTj5yJNdMCsFVqEVnwVeDfCpe2cHu', '09645649494594', 1, NULL, 1, '2024-11-10 06:31:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `action_user_id` (`action_user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`action_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
