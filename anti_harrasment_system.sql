-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 07:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anti_harrasment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@ku.edu.com', 'pakistan123');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `location_of_harrasment` varchar(255) NOT NULL,
  `type_of_harrasment` int(11) NOT NULL,
  `date_of_harrasment` varchar(255) NOT NULL,
  `complaint_details` varchar(255) NOT NULL,
  `complaint_related_docs` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `student_id`, `location_of_harrasment`, `type_of_harrasment`, `date_of_harrasment`, `complaint_details`, `complaint_related_docs`, `status`, `created_at`) VALUES
(19, 5, 'Voluptate necessitat', 7, '1981-06-04', 'Qui nostrum exercita', 'fashion-01.jpg', 2, '2022-11-23 11:37:20'),
(23, 7, 'Porro qui placeat s', 2, '1991-03-19', 'Et sit velit nulla harum rem ullam', 'fashion-01.jpg', 2, '2022-11-25 06:24:12'),
(24, 7, 'Asperiores dolores e', 3, '2015-06-08', 'Cupiditate ratione laborum officia cum libero dolorum sed voluptatem amet cumque et omnis perferendis quia sit adipisicing incidunt et', '', 1, '2022-11-25 07:26:36'),
(25, 8, 'Doloremque aut ut qu', 5, '2015-10-21', 'Earum necessitatibus consequuntur iste doloribus vel reprehenderit reiciendis eum', '', 0, '2022-11-25 08:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_reports`
--

CREATE TABLE `complaint_reports` (
  `id` int(11) NOT NULL,
  `complaint_detail` varchar(5000) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_reports`
--

INSERT INTO `complaint_reports` (`id`, `complaint_detail`, `dept`, `complaint_id`, `created_at`, `status`) VALUES
(1, 'Maminoo', 'Student Affair', 19, '2022-12-05', 0),
(2, 'Maminoo', 'Police', 19, '2022-12-05', 0),
(3, 'Maminoo', 'Girls Rescue', 19, '2022-12-05', 2),
(4, 'Perspiciatis explic', 'Student Affair', 24, '2022-12-06', 0),
(5, 'Qui quis alias repel', 'Girls Rescue', 19, '2022-12-06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `harrasment_type`
--

CREATE TABLE `harrasment_type` (
  `id` int(11) NOT NULL,
  `harrasment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harrasment_type`
--

INSERT INTO `harrasment_type` (`id`, `harrasment_type`) VALUES
(1, 'Personal Harassment'),
(2, 'Discriminatory Harassment'),
(3, 'Psychological Harassment'),
(4, 'Verbal Abuse'),
(5, 'Sexual Harassments'),
(6, 'Quid Pro Quo Sexual Harassment'),
(7, 'Cyberbullying');

-- --------------------------------------------------------

--
-- Table structure for table `official_login`
--

CREATE TABLE `official_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `official_login`
--

INSERT INTO `official_login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Girls Rescue', 'girlsrescue@ku.edu.com', 'ku12345'),
(2, 'Student Affair', 'studentaffair@ku.edu.com', 'KU12345'),
(3, 'Police', 'police@ku.edu.com', 'ku12345');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `profile_pic` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `full_name`, `email`, `roll_number`, `department`, `contact_number`, `password`, `gender`, `created_at`, `profile_pic`) VALUES
(3, ' Safder', 'safder@gmail.com', '098', 'B.Com', '872', 'pakistan', 'Male', '2022-11-22 05:55:18', ''),
(4, 'Syed Mubashir Ali', 'mubashir@gmail.com', '074', 'BSCS', '6327463284', 'pakistan786ali110', 'Male', '2022-11-23 11:11:14', ''),
(5, 'Farhan', 'farhan@gmail.com', '282', 'BSIT', '828329', '123456789', 'Male', '2022-11-23 11:36:56', ''),
(7, ' Dua Fatima', 'dua@gmail.com', '098', 'UBIT', '197219873', 'pakistan', 'Male', '2022-11-25 06:23:52', ''),
(8, 'munawer', 'munawer@gmail.com', '232', 'BSIT', '91', 'munawer@gmail.com', 'Female', '2022-11-25 08:05:15', ''),
(9, 'Britanney Boone', 'dijyvupun@mailinator.com', 'Voluptatem provident', 'Nobis maxime in et c', '220', 'Pa$$w0rd!', 'Male', '2022-11-25 11:51:32', ''),
(10, 'Tyler Williams', 'jovecyw@mailinator.com', 'Adipisicing quaerat ', 'Assumenda autem aute', '630', 'Pa$$w0rd!', 'Male', '2022-11-25 11:51:44', ''),
(11, 'Inga Lynn', 'zoxinyryki@mailinator.com', 'Et impedit duis sus', 'Necessitatibus quo l', '338', 'Pa$$w0rd!', 'Female', '2022-11-25 11:51:52', ''),
(12, 'Lucas Whitley', 'puranob@mailinator.com', 'Aliquam blanditiis d', 'Consequuntur placeat', '24', 'Pa$$w0rd!', 'Female', '2022-11-25 11:52:23', ''),
(13, 'Cyrus Joyner', 'xavigicur@mailinator.com', 'Nisi itaque laboris ', 'Assumenda ex perspic', '234', 'Pa$$w0rd!', 'Female', '2022-11-25 11:52:47', ''),
(14, 'Paul Roberson', 'fyxecikyze@mailinator.com', 'Quod voluptas libero', 'Do non qui nisi enim', '7', 'Pa$$w0rd!', 'Male', '2022-11-25 11:53:26', ''),
(15, 'Miranda Anderson', 'puvocoti@mailinator.com', 'In sint non non eni', 'Quos sunt quae maxim', '828', 'Pa$$w0rd!', 'Female', '2022-11-25 11:54:03', ''),
(16, 'Gail Hess', 'meqocuxyba@mailinator.com', 'Aut dolor consequunt', 'Perspiciatis ullamc', '200', 'Pa$$w0rd!', 'Male', '2022-11-25 11:56:00', ''),
(17, 'Hadassah Dawson', 'lisiwysyra@mailinator.com', 'Fuga Ipsum harum di', 'Voluptatem molestia', '273', 'Pa$$w0rd!', 'Male', '2022-11-25 11:57:40', ''),
(18, 'Mannix Warner', 'hydux@mailinator.com', 'Soluta magni quod re', 'Odit Nam voluptatibu', '715', 'Pa$$w0rd!', 'Female', '2022-11-25 11:58:56', ''),
(19, 'Malcolm Riley', 'javedukoz@mailinator.com', 'Mollitia proident v', 'Tempor hic ut velit ', '193', 'Pa$$w0rd!', 'Female', '2022-11-25 12:04:19', ''),
(20, 'Honorato Roy', 'wehebu@mailinator.com', 'Debitis obcaecati in', 'Ut voluptatibus offi', '246', 'Pa$$w0rd!', 'Male', '2022-11-25 12:05:44', ''),
(21, 'Scarlett Hutchinson', 'jumohosib@mailinator.com', 'Numquam voluptas lau', 'Minima omnis aut ali', '379', 'Pa$$w0rd!', 'Female', '2022-11-25 12:06:33', 'book-01.jpg'),
(23, ' Mehdi Haider', 'mehdihaider@gmail.com', '987', 'BSCS', '09291372173', '123456', 'Female', '2023-01-07 03:13:12', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `harrasment_type` (`type_of_harrasment`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `complaint_reports`
--
ALTER TABLE `complaint_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_id` (`complaint_id`);

--
-- Indexes for table `harrasment_type`
--
ALTER TABLE `harrasment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `official_login`
--
ALTER TABLE `official_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `complaint_reports`
--
ALTER TABLE `complaint_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `harrasment_type`
--
ALTER TABLE `harrasment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `official_login`
--
ALTER TABLE `official_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `harrasment_type` FOREIGN KEY (`type_of_harrasment`) REFERENCES `harrasment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complaint_reports`
--
ALTER TABLE `complaint_reports`
  ADD CONSTRAINT `complaint_reports_ibfk_1` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
