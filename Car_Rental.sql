-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2025 at 10:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Car_Rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cabrio_Cars`
--

CREATE TABLE `Cabrio_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(7) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Cabrio_Cars`
--

INSERT INTO `Cabrio_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(2, 'Mercedes', 'SLS', 2011, 1900);

-- --------------------------------------------------------

--
-- Table structure for table `Compact_Cars`
--

CREATE TABLE `Compact_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(7) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Compact_Cars`
--

INSERT INTO `Compact_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(3, 'Subaro', 'Impreza', 2015, 55);

-- --------------------------------------------------------

--
-- Table structure for table `Economy_Cars`
--

CREATE TABLE `Economy_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(40) NOT NULL,
  `Model` varchar(32) NOT NULL,
  `Year` int(4) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Economy_Cars`
--

INSERT INTO `Economy_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(1, 'Volkswagen', 'Golf VII', 2018, 130),
(2, 'Opel', 'Astra', 2019, 200),
(4, 'Mercedes', 'B-Class', 2017, 95),
(5, 'Subaro', 'Impreza', 2023, 240);

-- --------------------------------------------------------

--
-- Table structure for table `Electric_Cars`
--

CREATE TABLE `Electric_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(7) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Electric_Cars`
--

INSERT INTO `Electric_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(2, 'Volkswagen', 'ID.4', 2021, 250);

-- --------------------------------------------------------

--
-- Table structure for table `Gamification`
--

CREATE TABLE `Gamification` (
  `Userid` int(12) NOT NULL,
  `User_points` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Gamification`
--

INSERT INTO `Gamification` (`Userid`, `User_points`) VALUES
(3, 120),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Luxury_Cars`
--

CREATE TABLE `Luxury_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(40) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Luxury_Cars`
--

INSERT INTO `Luxury_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(2, 'Rolls-Royce', 'Ghost', 2022, 2200);

-- --------------------------------------------------------

--
-- Table structure for table `Orskyan_Tokens`
--

CREATE TABLE `Orskyan_Tokens` (
  `Usrid` int(12) NOT NULL,
  `Tokens` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Orskyan_Tokens`
--

INSERT INTO `Orskyan_Tokens` (`Usrid`, `Tokens`) VALUES
(3, 196000000),
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Promotion`
--

CREATE TABLE `Promotion` (
  `id` int(11) NOT NULL,
  `Make` varchar(12) NOT NULL,
  `Model` varchar(32) NOT NULL,
  `Year` int(4) NOT NULL,
  `Tokens` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Promotion`
--

INSERT INTO `Promotion` (`id`, `Make`, `Model`, `Year`, `Tokens`) VALUES
(1, 'Mercedes', 'C-Class', 2012, 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `Prom_Reserve`
--

CREATE TABLE `Prom_Reserve` (
  `user_id` int(12) NOT NULL,
  `Car_id` int(15) NOT NULL,
  `Make` varchar(40) NOT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prom_Reserve`
--

INSERT INTO `Prom_Reserve` (`user_id`, `Car_id`, `Make`, `Start_date`, `End_date`) VALUES
(3, 1, 'Mercedes', NULL, NULL),
(3, 1, 'Mercedes', '2023-09-28', '2023-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `Date_1` varchar(12) NOT NULL,
  `Date_2` varchar(12) NOT NULL,
  `Time_1` varchar(6) NOT NULL,
  `Time_2` varchar(6) NOT NULL,
  `Car_Model` varchar(60) NOT NULL,
  `reservid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`Date_1`, `Date_2`, `Time_1`, `Time_2`, `Car_Model`, `reservid`, `user_id`) VALUES
('Thu Jun 08 0', '2023-06-24', '12:00a', '3:00am', 'Mercedes', 29, 1),
('Fri Jun 09 0', '2023-06-18', '4:00am', '5:30am', 'Volkswagen', 30, 1),
('Thu Jun 29 0', '2023-06-30', '8:30pm', '10:30p', 'Mercedes', 31, 10),
('Sat Jul 15 0', '2023-07-22', '10:00a', '10:00a', 'Mercedes', 32, 3),
('Sun Jul 23 0', '2023-07-25', '7:30am', '1:30pm', 'Opel', 33, 3),
('0001-08-08', '2023-08-11', '7:00pm', '9:00pm', 'Range Rover', 34, 3),
('Mon Aug 14 0', '2023-08-17', '12:00a', '1:00am', 'Mercedes', 35, 3),
('Sat Aug 05 0', '2023-08-07', '9:00pm', '10:00p', 'Subaro', 37, 3),
('Fri Aug 18 0', '2023-08-25', '2:00am', '6:30pm', 'Mercedes', 38, 3),
('Mon Sep 25 0', '2023-09-29', '1:00am', '1:00am', 'Subaro', 39, 3),
('Sat Nov 18 0', '2023-11-26', '3:30am', '4:30am', 'Opel', 40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Sedan_Cars`
--

CREATE TABLE `Sedan_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(7) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Sedan_Cars`
--

INSERT INTO `Sedan_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(2, 'Mercedes', 'E-Class', 2019, 230),
(3, 'BMW', '5-Series', 2018, 170),
(4, 'Audi', 'A5', 2021, 320);

-- --------------------------------------------------------

--
-- Table structure for table `Sign_in`
--

CREATE TABLE `Sign_in` (
  `First_Name` varchar(32) NOT NULL,
  `Last_Name` varchar(32) NOT NULL,
  `Phone_Number` int(9) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(19) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Sign_in`
--

INSERT INTO `Sign_in` (`First_Name`, `Last_Name`, `Phone_Number`, `Email`, `Password`, `id`) VALUES
('Skerdi', 'Shkoza', 2877273, 'bvzhvw@gmail.com', '123456789', 1),
('a', 'b', 1234, 'c@cit.edu.al', '233', 3),
('w', 'w', 122, 'ab@cit.edu.al', '1234', 8),
('Skerdi', 'Shkoza', 23213, 'skerdi.shkoza@cit.edu.al', '000', 9),
('Fatijon', 'Shkoza', 37382, 'nxjjnx@gmail.com', '111', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Sport_Cars`
--

CREATE TABLE `Sport_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(7) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Sport_Cars`
--

INSERT INTO `Sport_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(2, 'Bugatti', 'Chiron', 2017, 2400);

-- --------------------------------------------------------

--
-- Table structure for table `SUV_Cars`
--

CREATE TABLE `SUV_Cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(32) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `Year` int(7) NOT NULL,
  `Price` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SUV_Cars`
--

INSERT INTO `SUV_Cars` (`id`, `Make`, `Model`, `Year`, `Price`) VALUES
(2, 'Range Rover', 'Vogue', 2020, 340);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cabrio_Cars`
--
ALTER TABLE `Cabrio_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Compact_Cars`
--
ALTER TABLE `Compact_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Economy_Cars`
--
ALTER TABLE `Economy_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Electric_Cars`
--
ALTER TABLE `Electric_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Luxury_Cars`
--
ALTER TABLE `Luxury_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Promotion`
--
ALTER TABLE `Promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reservid`),
  ADD UNIQUE KEY `Date_` (`Date_1`),
  ADD UNIQUE KEY `Date_2` (`Date_2`),
  ADD UNIQUE KEY `Date_1` (`Date_1`),
  ADD UNIQUE KEY `Date_1_2` (`Date_1`,`Date_2`,`Time_1`,`Time_2`),
  ADD KEY `reserve_ibfk_1` (`user_id`);

--
-- Indexes for table `Sedan_Cars`
--
ALTER TABLE `Sedan_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sign_in`
--
ALTER TABLE `Sign_in`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `Sport_Cars`
--
ALTER TABLE `Sport_Cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SUV_Cars`
--
ALTER TABLE `SUV_Cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cabrio_Cars`
--
ALTER TABLE `Cabrio_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Compact_Cars`
--
ALTER TABLE `Compact_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Economy_Cars`
--
ALTER TABLE `Economy_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Electric_Cars`
--
ALTER TABLE `Electric_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Luxury_Cars`
--
ALTER TABLE `Luxury_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Promotion`
--
ALTER TABLE `Promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reservid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Sedan_Cars`
--
ALTER TABLE `Sedan_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Sign_in`
--
ALTER TABLE `Sign_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Sport_Cars`
--
ALTER TABLE `Sport_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `SUV_Cars`
--
ALTER TABLE `SUV_Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Sign_in` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
