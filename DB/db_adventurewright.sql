-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 10:36 AM
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
-- Database: `db_adventurewright`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_contact` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_name`, `admin_email`, `admin_contact`, `admin_password`, `admin_id`, `admin_image`) VALUES
('AdventureWright', 'adventurewright2@gmail.com', '8137892540', '123456', 10, 'Screenshot (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_title` varchar(200) NOT NULL,
  `complaint_description` varchar(300) NOT NULL,
  `complaint_status` int(50) NOT NULL,
  `complaint_reply` varchar(300) NOT NULL,
  `user_id` int(50) NOT NULL,
  `complaint_date` date NOT NULL,
  `complaint_reply_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_name`, `district_id`) VALUES
('Idukki', 1),
('Thrissur', 2),
('Kozhikode', 3),
('Malappuram', 4),
('Thiruvananthapuram', 5),
('Kollam', 6),
('Alappuzha', 7),
('Ernakulam', 8),
('Kannur', 9),
('Pathanamthitta', 10),
('Kasarkode', 11),
('Kottayam', 13),
('Palakkad', 14),
('Wayanad', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guide`
--

CREATE TABLE `tbl_guide` (
  `guide_first_name` varchar(100) NOT NULL,
  `guide_last_name` varchar(100) NOT NULL,
  `guide_contact` varchar(100) NOT NULL,
  `guide_email` varchar(100) NOT NULL,
  `guide_address` varchar(101) NOT NULL,
  `guide_gender` varchar(101) NOT NULL,
  `guide_photo` varchar(200) NOT NULL,
  `guide_proof` varchar(200) NOT NULL,
  `guide_experience` varchar(100) NOT NULL,
  `guide_password` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL,
  `guide_status` int(100) NOT NULL DEFAULT 0,
  `guide_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guide`
--

INSERT INTO `tbl_guide` (`guide_first_name`, `guide_last_name`, `guide_contact`, `guide_email`, `guide_address`, `guide_gender`, `guide_photo`, `guide_proof`, `guide_experience`, `guide_password`, `place_id`, `guide_status`, `guide_id`) VALUES
('Gude', 'In', '9876543210', 'guide@gmail.com', 'fvfvfv', 'Male', 'file_1598.png', 'file_1261.png', 'fffff', 'Qwerty@123', 1, 1, 2),
('Gude', 'In', '9876543210', 'guide@gmail.com', 'fvfvfv', 'Male', 'file_1888.jpg', 'file_1298.jpg', 'fffff', 'fvfvfv', 3, 1, 3),
('Lanzz', 'dfhjg', '8137892540', 'lanzz21@gmail.com', 'sdghj', 'Male', 'file_1801.jpg', 'file_1464.jpg', 'asdfghj', '123456', 2, 1, 4),
('Lanzz', 'dfhjg', '8137892540', 'lanzzz123@gmail.com', 'sdfgf', 'Male', 'file_1820.jpg', 'file_1421.jpg', 'sdfgh', '123456', 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL,
  `place_id` int(100) NOT NULL,
  `location_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `place_id`, `location_name`) VALUES
(1, 1, 'Edavetty'),
(2, 3, 'Thrissur'),
(3, 7, 'Kothamangalam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location_gallery`
--

CREATE TABLE `tbl_location_gallery` (
  `location_gallery_id` int(11) NOT NULL,
  `location_id` int(100) NOT NULL,
  `location_gallery_caption` varchar(500) NOT NULL,
  `location_gallery_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_location_gallery`
--

INSERT INTO `tbl_location_gallery` (`location_gallery_id`, `location_id`, `location_gallery_caption`, `location_gallery_image`) VALUES
(2, 1, 'ddsadc', 'file_1586.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `package_name` varchar(200) NOT NULL,
  `package_rate` varchar(100) NOT NULL,
  `package_details` varchar(500) NOT NULL,
  `package_type_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_photo` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`package_name`, `package_rate`, `package_details`, `package_type_id`, `package_id`, `package_photo`, `district_id`) VALUES
('', '', '', 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packagebooking`
--

CREATE TABLE `tbl_packagebooking` (
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `guide_id` int(11) NOT NULL,
  `booking_date` varchar(50) NOT NULL,
  `booking_to_date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_status` int(11) NOT NULL DEFAULT 0,
  `guide_status` varchar(50) NOT NULL DEFAULT '0',
  `person_count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_cancellation`
--

CREATE TABLE `tbl_package_cancellation` (
  `package_cancellation_id` int(11) NOT NULL,
  `cancellation_reason` varchar(500) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(500) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `cancellation_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_location`
--

CREATE TABLE `tbl_package_location` (
  `package_location_id` int(11) NOT NULL,
  `package_id` int(15) NOT NULL,
  `location_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_type`
--

CREATE TABLE `tbl_package_type` (
  `package_type_name` varchar(100) NOT NULL,
  `package_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `district_id` int(50) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`district_id`, `place_name`, `place_id`) VALUES
(1, 'Thodupuzha', 1),
(2, 'Vadakkunnathan', 2),
(2, 'Athirappilly', 3),
(2, 'Nelliyampathy', 4),
(1, 'Vagamon', 6),
(8, 'Munnar', 7),
(3, 'Kozhikode Beach', 8),
(7, 'Allappi', 9),
(8, 'Marinedrive', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promocode`
--

CREATE TABLE `tbl_promocode` (
  `promocode_id` int(11) NOT NULL,
  `promocode_name` varchar(500) NOT NULL,
  `promocode_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usedpromocode`
--

CREATE TABLE `tbl_usedpromocode` (
  `used_promocode_id` int(11) NOT NULL,
  `promocode_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_first_name` varchar(500) NOT NULL,
  `user_last_name` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(500) NOT NULL,
  `user_dob` date NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_place_id` int(100) NOT NULL,
  `user_photo` varchar(250) NOT NULL,
  `user_proof` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_first_name`, `user_last_name`, `user_contact`, `user_email`, `user_address`, `user_dob`, `user_gender`, `user_password`, `user_place_id`, `user_photo`, `user_proof`, `user_id`) VALUES
('Suraj ', 'K S', '8765432190', 'surajks@gmail.com', 'Qwerty@123', '2024-03-09', 'male', 'fvfsfvfvfv', 1, 'file_1032.png', 'file_1884.png', 1),
('Lanzz', 'dfhjg', '8137892540', 'lanzzz123@gmail.com', '1234567', '2002-09-20', 'male', 'dfghftfr', 3, 'file_1604.jpg', 'file_1914.jpg', 2),
('dghjkh', 'sdfgh', '9587464572', 'aswerty21@gmail.com', '123456', '2001-04-01', 'male', 'sdgfh', 6, 'file_1631.jpg', 'file_1544.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tbl_location_gallery`
--
ALTER TABLE `tbl_location_gallery`
  ADD PRIMARY KEY (`location_gallery_id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `tbl_packagebooking`
--
ALTER TABLE `tbl_packagebooking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_package_cancellation`
--
ALTER TABLE `tbl_package_cancellation`
  ADD PRIMARY KEY (`package_cancellation_id`);

--
-- Indexes for table `tbl_package_location`
--
ALTER TABLE `tbl_package_location`
  ADD PRIMARY KEY (`package_location_id`);

--
-- Indexes for table `tbl_package_type`
--
ALTER TABLE `tbl_package_type`
  ADD PRIMARY KEY (`package_type_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  ADD PRIMARY KEY (`promocode_id`);

--
-- Indexes for table `tbl_usedpromocode`
--
ALTER TABLE `tbl_usedpromocode`
  ADD PRIMARY KEY (`used_promocode_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_location_gallery`
--
ALTER TABLE `tbl_location_gallery`
  MODIFY `location_gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_packagebooking`
--
ALTER TABLE `tbl_packagebooking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package_cancellation`
--
ALTER TABLE `tbl_package_cancellation`
  MODIFY `package_cancellation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package_location`
--
ALTER TABLE `tbl_package_location`
  MODIFY `package_location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package_type`
--
ALTER TABLE `tbl_package_type`
  MODIFY `package_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  MODIFY `promocode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_usedpromocode`
--
ALTER TABLE `tbl_usedpromocode`
  MODIFY `used_promocode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
