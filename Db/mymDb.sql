-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 06:39 PM
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
-- Database: `mym_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `job` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `salary` int(255) NOT NULL,
  `facebookLink` varchar(255) NOT NULL,
  `githubLink` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `age`, `job`, `position`, `salary`, `facebookLink`, `githubLink`, `image_url`) VALUES
(3, 'Abdo', 21, '', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688827374474.jpg'),
(4, 'Abdo', 21, '', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688827375156.jpg'),
(5, 'Abdo', 21, '', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688827375839.jpg'),
(6, 'yousef', 21, '', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688827927772.jpg'),
(7, 'yousef', 21, '', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688830252230.jpg'),
(8, 'yousef', 21, '', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688840629068.jpg'),
(9, 'yousef', 21, 'UI/UX', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688909007631.jpg'),
(10, 'yousef', 21, 'Backend', 'backend', 45, 'https://www.facebook.com/', 'https://www.facebook.com/', '1688909384600.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `id` int(11) NOT NULL,
  `InternshipName` varchar(255) NOT NULL,
  `InternshipEnvironment` varchar(255) NOT NULL DEFAULT 'In Office' COMMENT '[''In Office'',''remotly'']',
  `InternshipTime` varchar(255) NOT NULL DEFAULT 'Full Time' COMMENT '[''Full Time'',''Part Time'']',
  `InternshipResponsability` varchar(255) NOT NULL COMMENT '[''Develop'',''Design'']'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`id`, `InternshipName`, `InternshipEnvironment`, `InternshipTime`, `InternshipResponsability`) VALUES
(1, 'UI/UX', 'UI/UX', 'fvgnvgnv', 'UI/UX'),
(2, 'UI/UX', 'UI/UX', 'fvgnvgnv', 'UI/UX');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `jobName` varchar(255) NOT NULL,
  `jobEnvironment` varchar(255) NOT NULL DEFAULT 'In Office' COMMENT '''In Office'',''remotly''',
  `jobTime` varchar(255) NOT NULL DEFAULT 'Full Time' COMMENT '''Full Time'',''Part Time''',
  `jobResponsability` varchar(255) NOT NULL COMMENT '''Develop'',''Design''',
  `requirments` varchar(255) NOT NULL,
  `jobType` varchar(255) NOT NULL,
  `jobLocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobName`, `jobEnvironment`, `jobTime`, `jobResponsability`, `requirments`, `jobType`, `jobLocation`) VALUES
(1, 'UI/UX', 'UI/UX', 'fvgnvgnv', 'UI/UX', 'UI/UX', 'UI/UX', 'UI/UX'),
(2, 'UI/UX', 'UI/UX', 'fvgnvgnv', 'UI/UX', 'UI/UX', 'UI/UX', 'UI/UX');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `collectionName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `collectionName`, `image`) VALUES
(2, 'UI/UX', '1688849266416.jpeg'),
(3, 'Backend', '1688906353922.jpeg'),
(4, 'Marketing', '1688906417010.webp'),
(5, 'Marketing', '1688906424821.webp'),
(6, 'Business', '1688906439689.webp'),
(7, 'Business', '1688906441692.webp'),
(8, 'Development', '1688906455835.webp'),
(9, 'Development', '1688906456631.webp'),
(10, 'Art & Design', '1688906482054.webp'),
(11, 'Art & Design', '1688906483573.webp');

-- --------------------------------------------------------

--
-- Table structure for table `userschema`
--

CREATE TABLE `userschema` (
  `id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL,
  `EducationalLevel` varchar(255) NOT NULL,
  `Grade` varchar(255) NOT NULL,
  `AdditionalInfo` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `internshipId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userschema`
--

INSERT INTO `userschema` (`id`, `FullName`, `email`, `Address`, `Phone`, `EducationalLevel`, `Grade`, `AdditionalInfo`, `file`, `internshipId`) VALUES
(1, 'Abdo', 'ah0383@gamail.com', 'fgbcv nhb nm', 1210201342, 'gvjhbnmnb', 'good', 'mhgvfhbvm', '1688916862832.pdf', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userschema`
--
ALTER TABLE `userschema`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userschema`
--
ALTER TABLE `userschema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
