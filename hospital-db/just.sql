-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 03:05 PM
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
-- Database: `just`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `doctor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `date`, `doctor_id`) VALUES
(1, '2025-03-12', 1),
(2, '2025-03-06', 2),
(3, '2025-03-28', 2),
(4, '2025-03-09', 1),
(5, '2025-03-12', 20),
(6, '2025-03-27', 1),
(7, '2025-03-04', 1),
(8, '2025-03-27', 1),
(9, '2025-03-21', 1),
(10, '2025-03-27', 1),
(11, '2025-03-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` bigint(20) NOT NULL,
  `consultation_fee` double NOT NULL,
  `experience` int(11) NOT NULL,
  `is_available` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  `available` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `consultation_fee`, `experience`, `is_available`, `name`, `specialization`, `hospital_id`, `available`) VALUES
(1, 1500, 12, b'0', 'Dr. Anjali Sharma', 'Cardiologist', 1, b'1'),
(2, 800, 8, b'0', 'Dr. Rajeev Mehta', 'Dermatologist', 2, b'1'),
(3, 1000, 5, b'0', 'Dr. Neha Verma', 'Pediatrician', 3, b'0'),
(4, 1200, 10, b'0', 'Dr. Karan Kapoor', 'Orthopedic', 4, b'1'),
(5, 1100, 7, b'0', 'Dr. Sneha Reddy', 'Gynecologist', 5, b'1'),
(6, 2000, 15, b'0', 'Dr. Mohan Das', 'Neurologist', 1, b'0'),
(7, 900, 6, b'0', 'Dr. Ritu Sinha', 'ENT Specialist', 2, b'1'),
(8, 1800, 11, b'0', 'Dr. Arjun Patil', 'Oncologist', 3, b'1'),
(9, 700, 4, b'0', 'Dr. Priya Nair', 'Dentist', 4, b'0'),
(10, 1600, 9, b'0', 'Dr. Saurabh Jain', 'Psychiatrist', 5, b'1'),
(11, 950, 5, b'0', 'Dr. Megha Joshi', 'Ophthalmologist', 1, b'1'),
(12, 1700, 13, b'0', 'Dr. Deepak Rao', 'Pulmonologist', 2, b'1'),
(13, 1900, 14, b'0', 'Dr. Kavita Saxena', 'Gastroenterologist', 3, b'0'),
(14, 600, 3, b'0', 'Dr. Nikhil Thakur', 'General Physician', 4, b'1'),
(15, 1550, 10, b'0', 'Dr. Alok Srivastava', 'Cardiologist', 5, b'1'),
(16, 850, 6, b'0', 'Dr. Swati Bansal', 'Dermatologist', 1, b'0'),
(17, 1650, 9, b'0', 'Dr. Harshita Goyal', 'Psychiatrist', 2, b'1'),
(18, 1300, 11, b'0', 'Dr. Rohit Shetty', 'Orthopedic', 3, b'0'),
(19, 950, 5, b'0', 'Dr. Isha Malhotra', 'Pediatrician', 4, b'1'),
(20, 1950, 12, b'0', 'Dr. Manish Tiwari', 'Neurologist', 5, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` bigint(20) NOT NULL,
  `departments` varchar(255) DEFAULT NULL,
  `facilities` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `departments`, `facilities`, `location`, `name`) VALUES
(1, 'Cardiology, Neurology', 'ICU, Labs, Pharmacy', 'Mumbai', 'City Care Hospital'),
(2, 'Dermatology, ENT', 'X-Ray, Labs, OPD', 'Delhi', 'Sunshine Clinic'),
(3, 'Pediatrics, Oncology', 'Pharmacy, Operation Theatre', 'Bangalore', 'Green Leaf Hospital'),
(4, 'Orthopedics, Gynecology', 'ICU, Ambulance', 'Chennai', 'Healwell Hospital'),
(5, 'Cardiology, Psychiatry', 'ICU, Pathology, Pharmacy', 'Hyderabad', 'LifeCare Multispeciality');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoeb98n82eph1dx43v3y2bcmsl` (`doctor_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKds7ws3yyj4c5wj35fpefpeny0` (`hospital_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FKoeb98n82eph1dx43v3y2bcmsl` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `FKds7ws3yyj4c5wj35fpefpeny0` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
