-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 09:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `admin_user` text NOT NULL,
  `admin_password` text NOT NULL,
  `admin_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `admin_user`, `admin_password`, `admin_status`) VALUES
(15, 'Computer', 'cs@gmail.com', '$2y$12$gBbtMJRQpLc8PAO082ov4ONGcDFbGnXT8dC532YHJV.NufeLr/y5W', ''),
(16, 'Chemical', 'cs1@gmail.com', '$2y$12$XfyoXL/yAmakuRLLPzYOEu91NTRl7D3qTfuJESvdLmHSbdJuvvN1.', ''),
(17, 'zhcet', 'admin@gmail.com', '$2y$12$I6pOGunJogBFtcfNfvabieNOPPPlOS0dScxpUyZ2qjFyBhVCYLKnO', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `email_address` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `id`, `email_address`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 2, 'abc@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-22-2022 12:53 AM', ''),
(0, 2, 'abc@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-22-2022 01:02 AM', ''),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 07:19 PM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 07:20 PM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 07:25 PM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 08:05 PM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 08:06 PM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:39 AM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:44 AM', 'Dec-13-2022 01:49 AM'),
(0, 4, 'test@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 11:07 AM', ''),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 12:56 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 12:57 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:11 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:25 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:31 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 02:23 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-14-2022 06:19 PM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 02:48 AM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 11:30 AM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 11:39 AM', 'Jan-09-2023 12:06 PM'),
(0, 5, 'user@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 12:06 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_log1`
--

CREATE TABLE `history_log1` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `admin_user` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log1`
--

INSERT INTO `history_log1` (`log_id`, `id`, `admin_user`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-23-2022 12:21 AM', 'Nov-23-2022 04:14 AM'),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-23-2022 12:37 AM', 'Nov-23-2022 04:14 AM'),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-23-2022 02:20 AM', 'Nov-23-2022 04:14 AM'),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-23-2022 01:24 PM', ''),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-23-2022 02:42 PM', ''),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-29-2022 02:32 AM', ''),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-30-2022 01:57 AM', ''),
(0, 15, 'cs@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Nov-30-2022 01:48 PM', ''),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-03-2022 01:24 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-08-2022 01:29 AM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-08-2022 09:49 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-08-2022 09:49 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-08-2022 09:51 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 07:30 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-12-2022 11:24 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 11:10 AM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 12:50 PM', 'Dec-15-2022 12:30 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 12:55 PM', 'Jun-02-2023 10:25 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:03 PM', 'Dec-15-2022 12:30 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:07 PM', 'Dec-15-2022 12:30 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:17 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:21 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:26 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 01:31 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 02:21 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-13-2022 02:41 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-14-2022 06:18 PM', 'Jun-02-2023 10:25 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-15-2022 12:15 PM', 'Dec-15-2022 12:30 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Dec-15-2022 12:15 PM', 'Jun-02-2023 10:25 PM'),
(0, 16, 'cs1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 02:41 AM', ''),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 02:48 AM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 11:29 AM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 11:38 AM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jan-09-2023 12:07 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Feb-20-2023 05:52 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Feb-20-2023 05:56 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Feb-20-2023 05:57 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jun-02-2023 10:22 PM', 'Jun-02-2023 10:25 PM'),
(0, 17, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'LAPTOP-BFB0FSV9', 'Jul-23-2023 03:39 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_address` text NOT NULL,
  `user_password` text NOT NULL,
  `user_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `email_address`, `user_password`, `user_status`) VALUES
(5, 'student', 'user@gmail.com', '$2y$12$UVdxPwxqJjSGhhXMXID0w.08sIC9Kr5qHXtF3sjAfjsok9UomkhMi', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `upload_files`
--

CREATE TABLE `upload_files` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  `DOWNLOAD` varchar(200) NOT NULL,
  `TIMERS` varchar(200) NOT NULL,
  `ADMIN_STATUS` varchar(300) NOT NULL,
  `EMAIL` text NOT NULL,
  `aname` char(128) DEFAULT NULL,
  `issn` int(10) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `yearp` int(4) DEFAULT NULL,
  `depart` char(20) DEFAULT NULL,
  `ni` char(15) DEFAULT NULL,
  `review` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_files`
--

INSERT INTO `upload_files` (`ID`, `NAME`, `SIZE`, `DOWNLOAD`, `TIMERS`, `ADMIN_STATUS`, `EMAIL`, `aname`, `issn`, `link`, `yearp`, `depart`, `ni`, `review`) VALUES
(2, 'css_tutorial.pdf', '910221', '2', 'Nov-19-2019 02:36 PM', 'Admin', 'Computer', 'User2', 123457654, 'www.google.com', 2017, 'Computer', 'International', 'SCI'),
(3, 'Web Dev Resources.pdf', '291702', '2', 'Nov-22-2022 12:55 AM', 'Admin', 'Computer', 'User3', 123456765, 'www.google.com', 2021, 'Computer', 'National', 'SCIE'),
(5, 'CHO4260_AS_2_2223.pdf', '545010', '1', 'Nov-29-2022 04:06 AM', 'Admin', 'Computer', 'Random', 1234567890, 'www.google.com', 2020, 'Chemical', 'International', 'Pear Reviewed'),
(7, 'dkan.pdf', '948245', '1', 'Nov-30-2022 02:11 AM', 'Admin', 'Computer', 'Galelio', 1234567891, 'www.google.com', 2020, 'Electrical', 'International', 'SCI'),
(8, 'Web Dev Resources.pdf', '291702', '0', 'Dec-04-2022 09:04 PM', 'Admin', 'Chemical', 'Domenic', 2147483647, 'https://zxcvbabc123.000webhostapp.com/filemanagement/index.php', 2021, 'Chemical', 'National', 'IEEE'),
(14, 'ajax_tutorial.pdf', '618379', '0', 'Dec-15-2022 12:21 PM', 'Admin', 'Zhcet', 'Userx', 2147483647, 'www.wikipedia.com', 2021, 'Computer', 'International', 'SCIE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_files`
--
ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upload_files`
--
ALTER TABLE `upload_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
