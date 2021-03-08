-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2021 at 11:58 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dharwadhubballitutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(30) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin1', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
CREATE TABLE IF NOT EXISTS `admissions` (
  `enquiry_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DateofBirth` varchar(50) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Guardians_Name` varchar(100) NOT NULL,
  `Guardians_Phone` varchar(40) NOT NULL,
  `CoursesOpted` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `AdhaarNo` varchar(50) NOT NULL,
  `AdhaarFile` varchar(200) NOT NULL,
  `PhotoFile` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enquiry_id` (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`) VALUES
(NULL, 1, 'akash b k', '35489348280', 'akash06@gmail.com', '1997-06-06', 'MBA', 'sushila b kokkannavar', '8884093745', 'Civil Design Softwares', 'bangalore', '254666254545', 'IMG_8964.JPG', 'IMG_8962.JPG'),
(NULL, 2, 'Swathi bk', '70199626333', 'swathibk95@gmail.com', '1995-01-29', 'BSc', 'bheemappa', '2255889966', 'Programming Languages', '874a,keshawpur,hubballi', '456874566664', 'IMG_8968.JPG', 'IMG_9012.JPG'),
(NULL, 3, 'sushila bk', '8884920642', 'sushila@gmail.com', '1976-06-01', 'sslc', 'hanamappa', '5566987444', 'School Academics', '#874A,1st cross new badami nagar ,nagashettikoppa', '254666254545', 'IMG_9201.JPG', 'IMG_8969.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Trainings` varchar(40) NOT NULL,
  `Internship` varchar(40) NOT NULL,
  `Demo` varchar(100) NOT NULL,
  `Services` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `Email`, `Phone`, `Qualification`, `Trainings`, `Internship`, `Demo`, `Services`) VALUES
(1, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', ''),
(2, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', ''),
(3, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', ''),
(4, 'swathi bk', 'swathibk95@gmail.com', '70199626333', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', ''),
(5, 'swathi bk', 'swathibk95@gmail.com', '70199626333', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', ''),
(6, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', ''),
(7, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', ''),
(8, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', ''),
(9, 'swathi bk', 'swat@gmail.com', '21344343', '', 'SELECT YOUR INTEREST', 'Python Programming', '', ''),
(10, 'swathi bk', 'dnsguydas@hshaj.com', '234365464', '', '', 'Python Programming', '', ''),
(11, 'swathi bk', 'swathibk95@gmail.com', '56788899', '', '', 'Digital Marketing', '', ''),
(12, 'swathi bk', 'swathibk95@gmail.com', '56788899', '', '', 'Digital Marketing', '', ''),
(13, 'swat', 'swathibk95@gmail.com', '3456789999', '', 'SELECT YOUR INTEREST', 'Digital Marketing', '', ''),
(14, 'swarah', 'swarah@gmail.com', '2345678912', '', '', 'Python Programming', '', ''),
(15, 'swarah', 'swarah@gmail.com', '34565454543', '', '', 'Digital Marketing', '', ''),
(16, 'swarah', 'swarah@gmail.com', '34565454543', '', '', 'Digital Marketing', '', ''),
(17, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Android Development', '', ''),
(18, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', ''),
(19, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', ''),
(20, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', ''),
(21, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', ''),
(22, 'akash', 'akash@gmail.com', '35489348280', '', '', 'SELECT YOUR INTEREST', '', ''),
(23, 'akash', 'akash9@gmail.com', '346777589000', '', '', 'SELECT YOUR INTEREST', '', ''),
(24, 'prashant', 'prashant@gmail.com', '2345234523', '', '', 'SELECT YOUR INTEREST', '', ''),
(25, 'prashant', 'prashant10@gmail.com', '23123123123', '', '', 'SELECT YOUR INTEREST', '', ''),
(26, 'prashant', 'prashanth20@gmail.com', '2345677889', '', '', 'Android Development', '', ''),
(27, 'akash', 'akash06@gmail.com', '1234567890', '', 'Cloud Computing', '', '', ''),
(28, 'akash29', 'dnsguydas@hshaj.com', '2409090909', '', 'Web Designing and Development', '', '', ''),
(29, 'akash29', 'dnsguydas@hshaj.com', '99009900', '', 'Cloud Computing', '', '', ''),
(30, 'prashant', 'prashanth201@gmail.com', '8884093745', '', '', 'Digital Marketing', '', ''),
(31, 'prashant', 'prashant100@gmail.com', '8884093745', '', '', 'SELECT YOUR INTEREST', '', ''),
(32, 'prashantsm', 'prashant007@gmail.com', '77007700', '', '', 'SELECT YOUR INTEREST', '', ''),
(33, 'prashantsm', 'prashant00007@gmail.com', '7700077000', '', 'Web Designing and Development', 'SELECT YOUR INTEREST', '', ''),
(34, 'athar', 'athar@gmail.com', '8989898989', '', 'SELECT YOUR INTEREST', 'Python Programming', '', ''),
(35, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES'),
(36, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES'),
(37, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES'),
(38, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES'),
(39, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'MOBILE APP DEVELOPMENT'),
(40, 'tazeen', 'tazeen123@gmail.com', '1233232223', '', '', '', '', 'DIGITAL MARKETING'),
(41, 'rahul', 'rahulrap@gmail.com', '9035804741', '', '', '', 'ANDROID DEVELOPMENT', ''),
(42, 'swarah', 'dnsguydas@hshaj.com', '3456789999', '', 'Python Programming', '', '', ''),
(43, 'akash29', 'dnsguydas@hshaj.com', '0', '', 'Cloud Computing', '', '', ''),
(44, 'qwerty', 'qwerty@gmail.com', '2233223322', '', '', 'Python Programming', '', ''),
(45, 'qwerty', 'qwerty@gmail.com', '2233223322', '', '', 'Digital Marketing', '', ''),
(46, 'qwerty1', 'qwerty21@gmail.com', '4545454545', 'bsc(cs)', '', 'web desiging and development', '', ''),
(47, 'qwerty1', 'qwerty34@gmail.com', '1112223333', '', '', 'Digital Marketing', '', ''),
(48, 'prashant11', 'prashanth20@gmail.com', '2345677889', 'B.E', '', 'Web Designing and Development', '', ''),
(49, 'qwerty', 'qwerty@gmail.com', '8884093745', 'B.E(cs)', '', 'Android Development', '', ''),
(50, 'qwerty1', 'qwerty@gmail.com', '2233223322', 'B.E', '', 'Digital Marketing', '', ''),
(51, 'qwerty1', 'qwerty@gmail.com', '2233223322', 'B.E', '', 'Digital Marketing', '', ''),
(52, 'athar', 'athar@gmail.com', '88899900000', 'B.e(CS)', '', 'Web Designing and Development', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
