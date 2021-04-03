-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2021 at 01:19 PM
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
  `Gender` varchar(20) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Guardians_Name` varchar(100) NOT NULL,
  `Guardians_Phone` varchar(40) NOT NULL,
  `CoursesOpted` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `AdhaarNo` varchar(50) NOT NULL,
  `AdhaarFile` varchar(200) NOT NULL,
  `PhotoFile` varchar(200) NOT NULL,
  `Resume` varchar(100) NOT NULL,
  `Feesstatus` tinyint(1) DEFAULT '1',
  `Courseid` int(50) DEFAULT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enquiry_id` (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Gender`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`, `Feesstatus`, `Courseid`, `Modified_Date`) VALUES
(NULL, 1, 'prashant myageri', '9986254524', 'prashant007@gmail.com', '1996-06-07', 'Male', 'MBA', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', 'Dummy-Icon-Female.jpg', '', 1, 1, '2021-01-11 00:00:00'),
(NULL, 2, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', 'IMG_8996.JPG', 'RESUME.docx', '', 1, 1, '2021-01-18 00:00:00'),
(NULL, 3, 'prashant', '2345234523', 'prashant@gmail.com', '1996-06-07', '', 'MbA', 'bheemappa', '5566987444', 'School Academics', 'gajendragada', '254666254545', 'IMG_20190414_170031.jpg', 'IMG_8985.JPG', 'varsh. abhi.pptx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 4, 'hifza shaikh', '7400845696', 'hifza@gmail.com', '1980-10-12', '', 'be', 'shareef', '8884093745', 'Cloud Computing', 'dharwad', '254666254545', 'IMG_8996.JPG', 'IMG_9049.JPG', 'abhi. rasume.docx', 1, 1, '2021-02-01 00:00:00'),
(NULL, 5, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', 'Web designing and development Syllabus.docx', 1, 1, '2021-02-08 00:00:00'),
(NULL, 6, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', 'Web designing and development Syllabus.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 7, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 8, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 9, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 10, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 11, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 12, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gamangatti', '254666254545', 'IMG_8985.JPG', 'IMG_8996.JPG', 'Case Study.southwest.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 13, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gamangatti', '254666254545', 'IMG_8985.JPG', 'IMG_8996.JPG', 'Case Study.southwest.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 14, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gajendragada', '631854645846', 'IMG_9093.JPG', 'IMG_9101.JPG', 'abhi.anay.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 15, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gajendragada', '631854645846', 'IMG_9093.JPG', 'IMG_9101.JPG', 'abhi.anay.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 16, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-07-06', '', 'Bsc', 'bheemappa', '8884920642', 'Web Designing and Development', 'gamangatti', '254666254545', 'IMG_9200.JPG', 'IMG_9201.JPG', 'FINAL REPORT 1.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 17, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', '', '', 1, 1, '2021-03-31 00:00:00'),
(NULL, 18, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', '', '', 1, 1, '2021-03-31 00:00:00'),
(NULL, 19, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', '', '', 1, 1, '2021-03-31 00:00:00'),
(0, 36, 'Athar Shaikh', '8007961759', 'atharshaikh1@gmail.com', '2021-03-02', 'Male', 'BE', 'Savitri Gatade', '9480296486', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'MSSQL-Tutorial.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 29, 'swat', '2336785595', 'swat@gmail.com', '2021-03-24', '', 'be', 'asdasdsadas', '1234567890', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'download.jpg', 'aadhar-card-1.jpg', 'Contingent Staff Exit .doc', 1, 1, '2021-03-31 00:00:00'),
(NULL, 30, 'swat', '2336785595', 'swat@gmail.com', '2021-02-15', '', 'be', 'asdasdsadas', '1234567890', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'download.jpg', 'aadhar-card-1.jpg', 'Contingent Staff Exit .doc', 1, 1, '2021-03-31 00:00:00'),
(NULL, 31, 'swat', '2336785595', 'swat@gmail.com', '2021-03-18', 'Female', 'BE', 'asdasdsadas', '9480296486', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'dummyresume.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 32, 'swat', '2336785595', 'swat@gmail.com', '2021-03-18', 'Female', 'BE', 'asdasdsadas', '9480296486', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'MSSQL-Tutorial.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 33, 'swat', '2336785595', 'swat@gmail.com', '2021-03-18', 'Female', 'BE', 'asdasdsadas', '9480296486', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'MSSQL-Tutorial.docx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 34, 'swat', '2336785595', 'swat@gmail.com', '2021-03-18', 'Female', 'BE', 'asdasdsadas', '9480296486', 'Web Designing and Development', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'MSSQL-Tutorial.docx', 1, 1, '2021-03-31 00:00:00'),
(23, 35, 'akash', '346777589000', '', '2021-03-18', 'Female', 'be', 'asdasdsadas', '1234567890', 'Civil Design Softwares', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'MSSQL-Tutorial.docx', 1, 1, '2021-03-31 00:00:00'),
(0, 37, 'Junaid', '9880137833', 'atharshaikh1@gmail.com', '2021-03-01', 'Male', 'BE', 'Savitri Gatade', '1234567890', 'Python Programming', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'Gauri Resume.docx', 1, 1, '2021-03-31 00:00:00'),
(0, 38, 'Azhar', '9845067824', 'atharshaikh1@gmail.com', '2021-03-23', 'Male', 'BE', 'asdasdsadas', '9480296486', 'Android Development', 'asdfsfdsfd', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'MSSQL-Tutorial.docx', 1, 1, '2021-03-31 00:00:00'),
(0, 39, 'Humza', '8007961759', 'gomzyr3@gmail.com', '2021-03-17', 'Male', 'BE', 'asdasdsadas', '1234567890', 'Basic Computers', 'Gandhi Nagar Dharwad', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'HifzaResume.docx', 1, 1, '2021-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admissionsforlastq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `admissionsforlastq`;
CREATE TABLE IF NOT EXISTS `admissionsforlastq` (
`Admissions` bigint(21)
,`MONTH` varchar(9)
);

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
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Modified_Date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `Email`, `Phone`, `Qualification`, `Trainings`, `Internship`, `Demo`, `Services`, `status`, `Modified_Date`) VALUES
(1, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1, '2021-03-30 00:00:00'),
(2, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1, '2021-03-30 00:00:00'),
(3, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1, '2021-03-30 00:00:00'),
(4, 'swathi bk', 'swathibk95@gmail.com', '70199626333', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1, '2021-03-30 00:00:00'),
(5, 'swathi bk', 'swathibk95@gmail.com', '70199626333', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1, '2021-03-30 00:00:00'),
(6, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', '', 1, '2021-03-30 00:00:00'),
(7, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', '', 1, '2021-03-30 00:00:00'),
(8, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', '', 1, '2021-03-30 00:00:00'),
(10, 'swathi bk', 'dnsguydas@hshaj.com', '234365464', '', '', 'Python Programming', '', '', 1, '2021-03-30 00:00:00'),
(11, 'swathi bk', 'swathibk95@gmail.com', '56788899', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(12, 'swathi bk', 'swathibk95@gmail.com', '56788899', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(14, 'swarah', 'swarah@gmail.com', '2345678912', '', '', 'Python Programming', '', '', 1, '2021-03-30 00:00:00'),
(15, 'swarah', 'swarah@gmail.com', '34565454543', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(16, 'swarah', 'swarah@gmail.com', '34565454543', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(17, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Android Development', '', '', 1, '2021-03-30 00:00:00'),
(18, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00'),
(19, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00'),
(20, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00'),
(21, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00'),
(22, 'akash', 'akash@gmail.com', '35489348280', '', '', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(23, 'akash', 'akash9@gmail.com', '346777589000', '', '', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(24, 'prashant', 'prashant@gmail.com', '2345234523', '', '', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(25, 'prashant', 'prashant10@gmail.com', '23123123123', '', '', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(26, 'prashant', 'prashanth20@gmail.com', '2345677889', '', '', 'Android Development', '', '', 1, '2021-03-30 00:00:00'),
(27, 'akash', 'akash06@gmail.com', '1234567890', '', 'Cloud Computing', '', '', '', 1, '2021-03-30 00:00:00'),
(28, 'akash29', 'dnsguydas@hshaj.com', '2409090909', '', 'Web Designing and Development', '', '', '', 1, '2021-03-30 00:00:00'),
(29, 'akash29', 'dnsguydas@hshaj.com', '99009900', '', 'Cloud Computing', '', '', '', 1, '2021-03-30 00:00:00'),
(30, 'prashant', 'prashanth201@gmail.com', '8884093745', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(31, 'prashant', 'prashant100@gmail.com', '8884093745', '', '', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(32, 'prashantsm', 'prashant007@gmail.com', '77007700', '', '', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(33, 'prashantsm', 'prashant00007@gmail.com', '7700077000', '', 'Web Designing and Development', 'SELECT YOUR INTEREST', '', '', 1, '2021-03-30 00:00:00'),
(35, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1, '2021-03-30 00:00:00'),
(36, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1, '2021-03-30 00:00:00'),
(37, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1, '2021-03-30 00:00:00'),
(38, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1, '2021-03-30 00:00:00'),
(39, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'MOBILE APP DEVELOPMENT', 1, '2021-03-30 00:00:00'),
(40, 'tazeen', 'tazeen123@gmail.com', '1233232223', '', '', '', '', 'DIGITAL MARKETING', 1, '2021-03-30 00:00:00'),
(41, 'rahul', 'rahulrap@gmail.com', '9035804741', '', '', '', 'ANDROID DEVELOPMENT', '', 1, '2021-03-30 00:00:00'),
(42, 'swarah', 'dnsguydas@hshaj.com', '3456789999', '', 'Python Programming', '', '', '', 1, '2021-03-30 00:00:00'),
(43, 'akash29', 'dnsguydas@hshaj.com', '0', '', 'Cloud Computing', '', '', '', 1, '2021-03-30 00:00:00'),
(44, 'qwerty', 'qwerty@gmail.com', '2233223322', '', '', 'Python Programming', '', '', 1, '2021-03-30 00:00:00'),
(45, 'qwerty', 'qwerty@gmail.com', '2233223322', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(46, 'qwerty1', 'qwerty21@gmail.com', '4545454545', 'bsc(cs)', '', 'web desiging and development', '', '', 1, '2021-03-30 00:00:00'),
(47, 'qwerty1', 'qwerty34@gmail.com', '1112223333', '', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(48, 'prashant11', 'prashanth20@gmail.com', '2345677889', 'B.E', '', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00'),
(49, 'qwerty', 'qwerty@gmail.com', '8884093745', 'B.E(cs)', '', 'Android Development', '', '', 1, '2021-03-30 00:00:00'),
(50, 'qwerty1', 'qwerty@gmail.com', '2233223322', 'B.E', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(51, 'qwerty1', 'qwerty@gmail.com', '2233223322', 'B.E', '', 'Digital Marketing', '', '', 1, '2021-03-30 00:00:00'),
(52, 'athar', 'athar@gmail.com', '88899900000', 'B.e(CS)', '', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00'),
(53, 'Gauri Gatade', 'gomzyr3@gmail.com', '7019353194', '', 'Python Programming', 'Web Designing and Development', '', '', 1, '2021-03-30 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `coursebasedenq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `coursebasedenq`;
CREATE TABLE IF NOT EXISTS `coursebasedenq` (
`Trainings` varchar(40)
,`NUMBER` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `CName` varchar(100) NOT NULL,
  `Ctype` varchar(100) NOT NULL,
  `Cduration` varchar(100) NOT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `CName`, `Ctype`, `Cduration`, `Modified_Date`) VALUES
(1, 'Web Design and Development', 'Classroom Training', '60 Day', NULL),
(2, 'Civil Revit', 'Classroom Training', '30 Day', NULL),
(3, 'Python Programming', 'Classroom Training', '3 months', NULL),
(4, 'Cloud Computing', 'Classroom Training', '3 months', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `enqueriesforlastq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `enqueriesforlastq`;
CREATE TABLE IF NOT EXISTS `enqueriesforlastq` (
`Enqueries` bigint(21)
,`MONTH` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `feesid` int(10) NOT NULL AUTO_INCREMENT,
  `Admissionid` int(11) DEFAULT NULL,
  `Courseid` int(11) DEFAULT NULL,
  `TotalFees` int(50) NOT NULL,
  `PaidFees` int(50) NOT NULL,
  `PendingFees` int(50) NOT NULL,
  `Feesplan` varchar(50) NOT NULL,
  `DueDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) NOT NULL,
  `PaymentDescription` varchar(250) NOT NULL,
  `lastpaiddate` date DEFAULT NULL,
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `feesreceipt` varchar(100) NOT NULL,
  PRIMARY KEY (`feesid`),
  KEY `Courseid` (`Courseid`),
  KEY `Admissionid` (`Admissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`feesid`, `Admissionid`, `Courseid`, `TotalFees`, `PaidFees`, `PendingFees`, `Feesplan`, `DueDate`, `PaymentMode`, `PaymentDescription`, `lastpaiddate`, `Modified_Date`, `feesreceipt`) VALUES
(14, 1, 1, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'GooglePay', NULL, '2021-03-25 18:04:32', ''),
(15, 4, 1, 25000, 2500, 22500, 'Part Payment', '2021-04-30', 'Cash', 'Cash', NULL, '2021-03-27 20:03:05', 'hifza shaikh2021-03-27.pdf'),
(16, 4, 1, 25000, 20000, 2500, 'Part Payment', '2021-04-14', 'Debit/Credit Card', 'pending in installments', NULL, '2021-04-02 16:07:54', 'hifza shaikh2021-04-02.pdf');

-- --------------------------------------------------------

--
-- Stand-in structure for view `feescollectionlastm`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `feescollectionlastm`;
CREATE TABLE IF NOT EXISTS `feescollectionlastm` (
`Name` varchar(100)
,`TotalFees` int(50)
,`PaidFees` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `trainercoursemapping`
--

DROP TABLE IF EXISTS `trainercoursemapping`;
CREATE TABLE IF NOT EXISTS `trainercoursemapping` (
  `trainerid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  KEY `trainerid` (`trainerid`),
  KEY `courseid` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainercoursemapping`
--

INSERT INTO `trainercoursemapping` (`trainerid`, `courseid`) VALUES
(2, 1),
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
CREATE TABLE IF NOT EXISTS `trainers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `AdhaarNo` varchar(20) NOT NULL,
  `AdhaarFile` varchar(100) NOT NULL,
  `PhotoFile` varchar(100) NOT NULL,
  `Resume` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `Name`, `Phone`, `Email`, `Qualification`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`) VALUES
(2, 'Athar Shaikh', '8007961759', 'atharshaikh1@gmail.com', 'BE', 'Gandhi Nagar Dharwad', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'dummyresume.docx'),
(3, 'Athar Shaikh', '8007961759', 'atharshaikh1@gmail.com', 'BE', 'Gandhi Nagar Dharwad', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'dummyresume.docx'),
(4, 'Hema Narayankar', '9880137833', 'atharshaikh1@gmail.com', 'BE', 'Gandhi Nagar Dharwad', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'MSSQL-Tutorial.docx');

-- --------------------------------------------------------

--
-- Structure for view `admissionsforlastq`
--
DROP TABLE IF EXISTS `admissionsforlastq`;

DROP VIEW IF EXISTS `admissionsforlastq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admissionsforlastq`  AS  select count(0) AS `Admissions`,monthname((curdate() + interval -(3) month)) AS `MONTH` from `admissions` where (monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(3) month))) union select count(0) AS `Admissions`,monthname((curdate() + interval -(2) month)) AS `MONTH` from `admissions` where (monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(2) month))) union select count(0) AS `Admissions`,monthname((curdate() + interval -(1) month)) AS `MONTH` from `admissions` where (monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(1) month))) ;

-- --------------------------------------------------------

--
-- Structure for view `coursebasedenq`
--
DROP TABLE IF EXISTS `coursebasedenq`;

DROP VIEW IF EXISTS `coursebasedenq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coursebasedenq`  AS  select `candidates`.`Trainings` AS `Trainings`,count(`candidates`.`id`) AS `NUMBER` from `candidates` where ((`candidates`.`Trainings` <> '') and (`candidates`.`Modified_Date` between (curdate() + interval -(3) month) and curdate())) group by `candidates`.`Trainings` ;

-- --------------------------------------------------------

--
-- Structure for view `enqueriesforlastq`
--
DROP TABLE IF EXISTS `enqueriesforlastq`;

DROP VIEW IF EXISTS `enqueriesforlastq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `enqueriesforlastq`  AS  select count(0) AS `Enqueries`,monthname((curdate() + interval -(3) month)) AS `MONTH` from `candidates` where (monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(3) month))) union select count(0) AS `Enqueries`,monthname((curdate() + interval -(2) month)) AS `MONTH` from `candidates` where (monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(2) month))) union select count(0) AS `Enqueries`,monthname((curdate() + interval -(1) month)) AS `MONTH` from `candidates` where (monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(1) month))) ;

-- --------------------------------------------------------

--
-- Structure for view `feescollectionlastm`
--
DROP TABLE IF EXISTS `feescollectionlastm`;

DROP VIEW IF EXISTS `feescollectionlastm`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `feescollectionlastm`  AS  select `a`.`Name` AS `Name`,`f`.`TotalFees` AS `TotalFees`,sum(`f`.`PaidFees`) AS `PaidFees` from (`admissions` `a` join `fees` `f` on((`a`.`id` = `f`.`Admissionid`))) where (`f`.`Modified_Date` > (curdate() + interval -(1) month)) group by `f`.`TotalFees`,`a`.`Name` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
