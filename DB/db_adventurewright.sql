-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 05:34 PM
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
('Travel-get', 'travelget1@gmail.com', '9961294655', '123456', 10, 'Screenshot (2).png');

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
('Kasargod', 13),
('Malapuram', 16),
('Thrissur', 17),
('Ernakulam', 18),
('Alapuzha', 19),
('Pathanamthitta', 20),
('Kollam', 21),
('Wayanad', 22),
('Idukki', 23),
('Trivandrum', 24),
('Kottayam', 25),
('palakkad', 26),
('Kozhikode', 27),
('Kannur', 28);

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
  `guide_status` int(100) NOT NULL,
  `guide_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guide`
--

INSERT INTO `tbl_guide` (`guide_first_name`, `guide_last_name`, `guide_contact`, `guide_email`, `guide_address`, `guide_gender`, `guide_photo`, `guide_proof`, `guide_experience`, `guide_password`, `place_id`, `guide_status`, `guide_id`) VALUES
('Abhishek', 'Ramesh', '9072515306', 'midlajmuhammed75@gmail.com', 'kozhipilly House', 'Male', 'Screenshot (8).png', 'Screenshot (7).png', '5 yrs', 'ramesh', 27, 1, 4),
('Abhinav', 'Gopi', '9961294690', 'jazzz7080@gmail.com', 'manapattil House', 'Male', 'Screenshot (1).png', 'Screenshot (3).png', '3 yrs\r\n', 'gopi', 19, 1, 5),
('Joyal', 'bBastin', '1212121212', 'travelguide@gmail.com', 'poiuytreeh', 'Male', 'Screenshot (4).png', 'Screenshot (8).png', '56565', '00000', 35, 1, 6),
('Mohammed', 'Yaseen', '6457645765', 'surajks28101999@gmail.com', 'parakkatt House', 'Male', 'Screenshot (2).png', 'Screenshot (1).png', '1 year', '909090', 30, 1, 7),
('Midlaj', 'Midhu', '9961294690', 'jaasim@gmail.com', 'Vattaparambil(H)chammanur', 'Male', 'Screenshot (4).png', 'Screenshot (4).png', 'hello', '12345', 21, 2, 8),
('Abhishek', 'Ramesh', '9961294690', 'hello@gmail.com', 'fewfefe', 'Male', '20220212_115816.jpg', '20220212_115816.jpg', 'wws', 'hello', 30, 0, 9);

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
(23, 29, 'sweet meat street'),
(24, 19, 'Muziris beach'),
(26, 21, 'Athirapally'),
(27, 26, 'Kakkadampoyil'),
(28, 31, 'Areekodu waterfalls'),
(29, 32, 'Riveka river safari'),
(30, 36, 'Illikal kallu'),
(31, 37, 'Echo poiint'),
(32, 22, 'Temple'),
(33, 27, 'Kariyathumpaara'),
(34, 34, 'Silent valley forest'),
(35, 35, 'Kumarakam backwaters'),
(36, 21, 'Wonderla'),
(37, 19, 'Muziris fort'),
(38, 26, 'Mukkam blackwaters'),
(39, 35, 'Kumarakam beach');

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
(8, 24, 'Aazhikode beach is nearly 35 km from Chalakudi and comes after the Kodungalur Bagavathi temple. Frequent buses are available from Kodungalur. The beach is clean , beautiful and less crowded. One can see the river joining the ocean. Typical Kerala fishing nets can be seen', 'beach.jfif'),
(9, 37, 'During ancient times, this fort was poised on a strategic place and helped control the movements of ships and boats to and from the Malabar. But today it is in ruins. Built by the Portuguese in 1523 CE, the Kottapuram Fort, also known as Cranganore Fort or Kodungallur Fort, was located in the mouth of the Periyar.', 'the-remains-of-the-kottappuram-fort-built-by-the-portugese-in-1523.jpeg'),
(10, 33, 'Kariathumpara is a beautiful cool place, almost like a hill station. It is in Kozhikode District of Kerala, and is just 45 kilometers away from the Kozhikode city. Direction-wise, coming from Kozhikode, Kariyathumpara is enroute the Kakkayam dam.', 'kariyathumpara.jpg'),
(11, 35, 'Kumarakom is a popular tourism destination located near the city of Kottayam (10 kilometres (6 mi)), in Kerala, India, famous for its backwater tourism. It is set in the backdrop of the Vembanad Lake, the largest lake in the state of Kerala. In January 2023,', 'kuma.jfif'),
(12, 31, 'Echo Point in Munnar is a popular tourist spot among the picturesque Nilgiri Hills. It lies on the banks of a serene lake and offers a panoramic view of the surrounding hills and evergreen forest cover. Three mountain ranges – Mudrapuzha, Nallathanni, and Kundala, meet at the Echo Point.', 'echo-point-munnar-tourism-opening-time-closing.jpg'),
(13, 27, 'Kakkadampoyil is a hill station located in the Malabar region of Kerala, India. Kakkadampoyil is known for its picturesque views and lush greenery. Visitors can explore waterfalls like Kozhippara Waterfalls and Valamthode Waterfalls as well as the ancient famous Pazhassi Tomb and spectacular Teak Museum.', 'aa-Cover-4u70uaphr0u0pts0lbk5t9j3n6-20170811221240.Medi.jpeg'),
(14, 39, 'At a distance of 2 km from Alappuzha Railway Station, Alappuzha beach is a lovely white sand beach on the Arabian Sea coast. It is one of the famous beaches in Kerala, and among the top places to visit as part of Alleppey holiday packages.', 'bbbb.jfif');

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
('kozhikode Round Up', '3500', 'This package includes 12 hours of outdoor visit which we cover most of the all major locations in kozhikode district.Food is included in the package.', 2, 4, 'Kozhikode.jpeg', 27),
('Into the Cold Munnar', '5000', 'This package includes Travel facilities ,food,Accomodation and more adventures activities in it. 24 by 7 service assistance is provided for premium 2 class package.This package will explore eastern side of munnar.', 4, 5, 'munnar.jfif', 23),
('Through the history of Kodungallur', '4250', 'In this package we try to explore our ancient cultutal background in kodungallur.Food is provided.', 3, 6, 'cheraman-juma-masjid-kodungallur-kerala-tourism-entry-fee-timings-holidays-reviews-small.jpg', 17),
('Into Alappi backwaters', '2000', 'Will explore gods own country finest natural backwaters in alappi', 2, 7, 'alapi.jfif', 19);

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

--
-- Dumping data for table `tbl_packagebooking`
--

INSERT INTO `tbl_packagebooking` (`booking_id`, `package_id`, `guide_id`, `booking_date`, `booking_to_date`, `user_id`, `booking_status`, `guide_status`, `person_count`) VALUES
(89, 4, 4, '2023-10-08', '2023-10-11', 18, 4, 'Yes', '5'),
(90, 6, 0, '2023-10-09', '2023-10-17', 12, 0, 'Yes', '2'),
(91, 6, 5, '2023-10-09', '2023-10-19', 12, 4, 'Yes', '2'),
(92, 6, 0, '2023-10-09', '2023-10-28', 18, 0, 'Yes', '2'),
(93, 6, 0, '2023-10-09', '', 18, 0, '', ''),
(94, 6, 0, '2023-10-09', '', 18, 0, '', ''),
(95, 6, 0, '2023-10-09', '', 18, 0, '', ''),
(96, 6, 0, '2023-10-14', '', 0, 0, '', ''),
(97, 6, 0, '2023-10-14', '2023-10-25', 18, 1, 'Yes', '2');

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

--
-- Dumping data for table `tbl_package_cancellation`
--

INSERT INTO `tbl_package_cancellation` (`package_cancellation_id`, `cancellation_reason`, `user_id`, `user_name`, `booking_id`, `package_id`, `cancellation_date`) VALUES
(9, 'service issues', 10, 'Jasim', 62, 0, ''),
(10, 'service issues', 10, 'Jasim', 62, 0, ''),
(11, 'service issues', 10, 'Jasim', 62, 0, ''),
(12, 'rate issuesz', 10, 'Jasim', 62, 0, ''),
(13, 'rate issuesz', 10, 'Jasim', 62, 0, ''),
(14, 'health issues\r\n', 10, 'Jasim', 63, 6, ''),
(15, 'oooo', 10, 'Jasim', 64, 5, '2023-10-06'),
(16, 'sorry', 10, 'Jasim', 68, 7, '2023-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_location`
--

CREATE TABLE `tbl_package_location` (
  `package_location_id` int(11) NOT NULL,
  `package_id` int(15) NOT NULL,
  `location_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_package_location`
--

INSERT INTO `tbl_package_location` (`package_location_id`, `package_id`, `location_id`) VALUES
(6, 4, 23),
(8, 7, 35),
(9, 7, 39),
(10, 6, 24),
(11, 6, 37),
(12, 4, 33),
(13, 4, 27),
(14, 4, 38),
(15, 5, 31);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_type`
--

CREATE TABLE `tbl_package_type` (
  `package_type_name` varchar(100) NOT NULL,
  `package_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_package_type`
--

INSERT INTO `tbl_package_type` (`package_type_name`, `package_type_id`) VALUES
('Normal', 2),
('Classic', 3),
('Premium-2', 4),
('Premium-1', 5);

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
(17, 'Kodungallur', 19),
(17, 'Chalakudi', 21),
(17, 'Thrissur town', 22),
(22, 'Kalpetta', 23),
(22, 'Manandhavaadi', 24),
(22, 'Batheri', 25),
(27, 'Mukkam', 26),
(27, 'Perambra', 27),
(27, 'Maananchira', 28),
(27, 'kozhikode town', 29),
(16, 'Nilambur', 30),
(0, 'Areekodu', 31),
(16, 'Kondotty', 32),
(26, 'Nelliyampathy', 33),
(26, 'Silent valley', 34),
(19, 'Kumarakam', 35),
(25, 'Kurupamthara', 36),
(23, 'Munnar', 37),
(23, 'Kumali', 38),
(23, 'Thodupuzha', 39),
(23, 'Cheruthoni', 40),
(21, 'Munroe', 41),
(18, 'Kothamangalam', 42),
(18, 'Kochi', 45),
(18, 'Sn junction', 46),
(24, 'Ponmudi', 47),
(28, 'Irutti', 48);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promocode`
--

CREATE TABLE `tbl_promocode` (
  `promocode_id` int(11) NOT NULL,
  `promocode_name` varchar(500) NOT NULL,
  `promocode_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_promocode`
--

INSERT INTO `tbl_promocode` (`promocode_id`, `promocode_name`, `promocode_rate`) VALUES
(3, 'vedishek69', 100),
(4, 'HellotravelGet1', 250),
(5, 'ashnamiss1', 500),
(6, 'jasim101', 250);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usedpromocode`
--

CREATE TABLE `tbl_usedpromocode` (
  `used_promocode_id` int(11) NOT NULL,
  `promocode_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_usedpromocode`
--

INSERT INTO `tbl_usedpromocode` (`used_promocode_id`, `promocode_name`, `user_id`) VALUES
(8, 'vedishek69', 10),
(27, 'vedishek69', 18),
(28, 'vedishek69', 12),
(29, 'ashnamiss1', 12),
(30, 'jasim101', 18);

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
('Mohammed', 'Midlaj', '9072515306', 'midlajmuhammed@gmail.com', 'Vattaparambil(H)chammanur', '2023-09-20', 'male', '907251', 22, 'Screenshot (2).png', 'Screenshot (5).png', 9),
('Jasim', 'Fayas', '9961294690', 'jazzz7080@gmail.com', 'mantiruthi House kodungallur', '2023-09-06', 'male', '123456', 19, 'Screenshot (8).png', 'Screenshot (13).png', 10),
('arjun', 'asokan', '9961294690', 'jazzz7080@gmail.com', 'manapattil House', '2023-09-16', 'male', '5555', 35, 'Screenshot (2).png', 'Screenshot (2).png', 11),
('Abhishek', 'Ramesh', '9961294690', 'abhisheknr120@gmail.com', 'mukkam', '2023-09-22', 'male', '12345', 26, 'Screenshot (2).png', 'Screenshot (2).png', 12),
('Rasha ', 'Zehra', '9961294690', 'jazzz7080@gmail.com', 'manapattil House', '2023-09-23', 'female', 'hello', 48, 'Screenshot (4).png', 'Screenshot (2).png', 13),
('Sajeev', 'Abhinav', '9961294690', 'abhinavssajeev@gmail.com', 'hello', '2023-09-15', 'male', '12345', 35, 'Screenshot (2).png', 'Screenshot (2).png', 15),
('Midlaj', 'Midhu', '9961294690', 'midlajmuhammed75@gmail.com', 'Vattaparambil(H)chammanur', '2023-10-06', 'male', '1111', 30, 'Screenshot (6).png', 'Screenshot (6).png', 16),
('Jasim', 'Fayas', '9961294690', 'jazzz7080@gmail.com', 'pkd', '2023-10-12', 'male', 'hello', 36, 'Screenshot (2).png', 'Screenshot (3).png', 17),
('Abhishek', 'Ramesh', '9961294690', 'abhishekramesh@gmail.com', 'vggffgf', '2023-10-27', 'male', '12345', 30, '20220212_115816.jpg', '20220212_115816.jpg', 18);

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_location_gallery`
--
ALTER TABLE `tbl_location_gallery`
  MODIFY `location_gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_packagebooking`
--
ALTER TABLE `tbl_packagebooking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_package_cancellation`
--
ALTER TABLE `tbl_package_cancellation`
  MODIFY `package_cancellation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_package_location`
--
ALTER TABLE `tbl_package_location`
  MODIFY `package_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_package_type`
--
ALTER TABLE `tbl_package_type`
  MODIFY `package_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  MODIFY `promocode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_usedpromocode`
--
ALTER TABLE `tbl_usedpromocode`
  MODIFY `used_promocode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
