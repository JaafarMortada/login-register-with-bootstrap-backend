-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 02:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `password_manager_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`) VALUES
(1, 'jj2', '$2y$10$h6MfcXXKGEBxfg06Ck.HmumCBG4GqzGUt7Vq7aEurQMvT5yODcUPy', 'jaafar', 'mortada'),
(2, 'bm', '$2y$10$pSg3hbpigqfen.9N.k/cfOFguBkg2oGewoh1ntF9zz8aWWZoCiQwO', 'bayan', 'mortada'),
(3, 'rm', '$2y$10$Bt9kzQn3sm4mSOCyU8LCqeveMqFQNxvg4gARH24Z/eSP36v7DnU2C', 'reda', 'mortada'),
(4, 'rm2', '$2y$10$eVGO5mBfLeMmapHvReq0aecC5C69RvF.u58Qo59IRhAI9JUaPiHl.', 'reda', 'mortada'),
(5, '4', '$2y$10$ukurbN2caMGTkBdgDxnrNe33aozfNotJhGqd1cgt9XFRNJ/fgk9OC', 'reda', 'mortada'),
(6, 'hadi', '$2y$10$eNJCv6pz4J4JmnZ3UWgjoeGWZfWzYjV0PVu4xFxZByT3LBGeuAaDW', 'hadi', 'sh3ayto'),
(7, 'ahmad', '$2y$10$YSxAz3AauVR8UcrLpCoRi.n5gz511juTZzysUddME1lui3KknQJJW', 'ahmad', 'hmed'),
(8, 'ahmadaaa', '$2y$10$wA.mWkiuMMRWHW..Cz6rMugGK7c5MUp1RVwR6e65VPkjQrboht7oi', 'ahmadaaa', 'hmedaa'),
(9, 'alloosh', '$2y$10$pTynfNI0jeLj6HyzYAbtuOcNFp1X4lvr1XcDh243fU9XQK627aKPm', 'ali', 'mortada'),
(10, 'jamila', '$2y$10$FXJEvzzp4HSHdfP49Ri7cuvFzA2Jxhpx0hfquHbV..BVwLdTSaJNq', 'jamila', 'jamila'),
(11, 'soso', '$2y$10$XCjF1ggVilMUOraGWnfvz.tLjPhg8SsWwmQIujaPMN0SGYA1Ctp/G', 'so3ad', 'fat7e'),
(12, 'semsom', '$2y$10$KY.A4KGIsSMvvsaBcVGk7uEE2pJkwz5lrHFOAC4RD.rR3rcr2BWZC', 'sami', 'banks');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
