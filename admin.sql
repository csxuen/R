-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2026 at 10:03 AM
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
-- Database: `assignment`
--
CREATE DATABASE IF NOT EXISTS `assignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `pointsdistribution`
--

CREATE TABLE `pointsdistribution` (
  `id` int(11) NOT NULL,
  `points_activity` varchar(255) NOT NULL,
  `points_description` varchar(255) NOT NULL,
  `points_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pointsdistribution`
--

INSERT INTO `pointsdistribution` (`id`, `points_activity`, `points_description`, `points_points`) VALUES
(1, 'Event Completion', 'Attend an event', 10),
(2, 'Feedback Submission', 'Providing event feedback', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_phoneNumber` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_profilePicture` varchar(255) DEFAULT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_organization` varchar(255) DEFAULT NULL,
  `user_reason` varchar(255) DEFAULT NULL,
  `user_document` varchar(255) DEFAULT NULL,
  `user_status` varchar(255) NOT NULL,
  `user_registerDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fullname`, `user_email`, `user_username`, `user_phoneNumber`, `user_password`, `user_profilePicture`, `user_role`, `user_organization`, `user_reason`, `user_document`, `user_status`, `user_registerDate`) VALUES
(1, 'Chai Shi Xuen', 'jessicacsx0118@gmail.com', 'sxuen', '0176869989', '$2y$10$49Jp.Wq4CKcpcOrvClwe/utd4qvKjKXoXRd1sQmZA8Gnz2Z2vwBV6', 'defaultProfile.img', 'Admin', '', '', '', 'Active', '2026-03-08 20:29:55'),
(2, 'Yee Tze Ying', 'yingtyee@gmail.com', 'ying', '0123456789', '$2y$10$dqdPCKfaOE8R2zAC9hgc2uQ1Txq2yJ5nlaU4mKzz27szqB8x5BMtG', 'defaultProfile.png', 'Event Organizer', 'ABC Organization', 'Wants to attract more people join sustainable event', 'RWDD Assignment.pdf', 'Active', '2026-03-08 20:31:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pointsdistribution`
--
ALTER TABLE `pointsdistribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pointsdistribution`
--
ALTER TABLE `pointsdistribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
