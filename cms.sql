-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 05:09 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `total_budget` bigint(20) NOT NULL,
  `material_wages` bigint(20) NOT NULL,
  `salary_wages` bigint(20) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `project_id`, `total_budget`, `material_wages`, `salary_wages`, `balance`, `datetime`) VALUES
(3, 3, 7090250, 10, 20, 7090220, '2022-05-03 07:44:26'),
(4, 2, 9452350, 0, 0, 9452350, '2022-05-03 07:50:50'),
(5, 1, 4189500, 0, 30, 4189470, '2022-05-03 07:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `adduser`
--

CREATE TABLE `adduser` (
  `id` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `workplace` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `squarefeet` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `butget` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adduser`
--

INSERT INTO `adduser` (`id`, `username`, `address`, `workplace`, `email`, `phone`, `squarefeet`, `floor`, `butget`) VALUES
(1, 'Rokanraja', 'hjbjcbsd', 'jhh', 'rokanraja@gmail.com', 3266723, 700, 3, 4189500),
(2, 'Ram', 'jkdsj', 'djkj', 'rokan@gmail.com', 3748, 790, 7, 9452350),
(3, 'jhdh', 'sdhfhjs', 'sihg', 'raja@gmail.com', 3473748, 790, 5, 7090250);

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `id` int(11) NOT NULL,
  `con_name` varchar(100) NOT NULL,
  `con_address` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `experience` int(11) NOT NULL,
  `tot_employee` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`id`, `con_name`, `con_address`, `email`, `phone`, `experience`, `tot_employee`, `status`) VALUES
(1, 'ghds', 'jhj', 'rokanraja@gmail.com', 63267, 6, 1, 'Active'),
(2, 'djfjj', 'dhfjdh', 'rokanraja@gmail.com', 67377, 6, 0, 'Active'),
(3, 'tydwt', 'hjsdjh', 'ram@gmail.com', 347877, 7, 0, 'Active'),
(4, 'gdh', 'hjjhd', 'rokan@gmail.com', 62667, 6, 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `emp_phone` bigint(20) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_type` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `experience` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `con_id`, `team_id`, `emp_phone`, `emp_name`, `emp_address`, `emp_type`, `status`, `experience`, `datetime`) VALUES
(1, 1, 4, 3788, 'hddjhh', 'hdhd', 'Mason', 'Active', 7, '2022-05-03 20:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `measure` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `work_detail` varchar(100) NOT NULL,
  `percentage` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `st_date` varchar(100) NOT NULL,
  `com_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_id`, `customer_name`, `work_detail`, `percentage`, `status`, `st_date`, `com_date`) VALUES
(1, 1, 'Rokanraja', '', 0, 'Running', '2022-05-04 16:03:57', '2022-05-03 16:33:31'),
(2, 2, 'Ram', '', 0, 'Running', '2022-05-04 16:04:00', ''),
(3, 3, 'jhdh', '', 0, 'Completed', '2022-05-04 16:04:15', '2022-05-04 16:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `worker_type` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `worker_type`, `salary`, `datetime`) VALUES
(1, 'Mason', 1000, '2022-05-03 20:44:52'),
(2, 'Labour', 800, '2022-05-03 20:44:52'),
(3, 'Painter', 1000, '2022-05-03 20:45:50'),
(4, 'Plumber', 1000, '2022-05-03 20:45:50'),
(5, 'Electrician', 1000, '2022-05-03 20:46:54'),
(6, 'Barbender', 1000, '2022-05-03 20:46:54'),
(7, 'Carpender', 1000, '2022-05-03 20:47:35'),
(8, 'Welder', 1000, '2022-05-03 20:47:35'),
(9, 'Contractor', 1500, '2022-05-03 20:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `salary_payment`
--

CREATE TABLE `salary_payment` (
  `id` int(11) NOT NULL,
  `worker_type` varchar(100) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `con_name` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `con_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `con_name`, `status`, `datetime`, `con_id`, `project_id`) VALUES
(5, 'tydwt', 'Disabled', '2022-05-03 20:12:16', 3, 3),
(6, 'ghds', 'Disabled', '2022-05-03 20:15:14', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_material`
--

CREATE TABLE `t_material` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `measure` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_work_entry`
--

CREATE TABLE `t_work_entry` (
  `id` bigint(20) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_work_entry`
--

INSERT INTO `t_work_entry` (`id`, `worker_id`, `team_id`, `project_id`, `emp_name`, `emp_type`, `date`) VALUES
(13, 1, 4, 2, 'hddjhh', 'Mason', '05.03.2022');

-- --------------------------------------------------------

--
-- Table structure for table `work_entry`
--

CREATE TABLE `work_entry` (
  `id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_entry`
--

INSERT INTO `work_entry` (`id`, `worker_id`, `team_id`, `project_id`, `emp_name`, `emp_type`, `date`) VALUES
(32, 1, 4, 2, 'hddjhh', 'Mason', '05.03.2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `adduser`
--
ALTER TABLE `adduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_payment`
--
ALTER TABLE `salary_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `con_id` (`con_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `t_material`
--
ALTER TABLE `t_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`project_id`);

--
-- Indexes for table `t_work_entry`
--
ALTER TABLE `t_work_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_entry`
--
ALTER TABLE `work_entry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adduser`
--
ALTER TABLE `adduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contractor`
--
ALTER TABLE `contractor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salary_payment`
--
ALTER TABLE `salary_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_material`
--
ALTER TABLE `t_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_work_entry`
--
ALTER TABLE `t_work_entry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `work_entry`
--
ALTER TABLE `work_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`con_id`) REFERENCES `contractor` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `adduser` (`id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`con_id`) REFERENCES `contractor` (`id`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `t_material`
--
ALTER TABLE `t_material`
  ADD CONSTRAINT `t_material_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
