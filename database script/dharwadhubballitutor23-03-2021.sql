-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2021 at 09:19 AM
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
  `Gender` varchar(50) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Guardians_Name` varchar(100) NOT NULL,
  `Guardians_Phone` varchar(40) NOT NULL,
  `CoursesOpted` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `AdhaarNo` varchar(50) NOT NULL,
  `AdhaarFile` varchar(200) NOT NULL,
  `PhotoFile` varchar(200) NOT NULL,
  `Resume` varchar(100) NOT NULL,
  `Feesstatus` tinyint(1) NOT NULL DEFAULT '1',
  `Courseid` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enquiry_id` (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Gender`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`, `Feesstatus`, `Courseid`) VALUES
(NULL, 1, 'prashant myageri', '9986254524', 'prashant007@gmail.com', '1996-06-07', '', 'MBA', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', 'IMG_2068.JPG', '', 1, 1),
(NULL, 2, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', 'IMG_8996.JPG', 'RESUME.docx', '', 1, 1),
(NULL, 3, 'prashant', '2345234523', 'prashant@gmail.com', '1996-06-07', '', 'MbA', 'bheemappa', '5566987444', 'School Academics', 'gajendragada', '254666254545', 'IMG_20190414_170031.jpg', 'IMG_8985.JPG', 'varsh. abhi.pptx', 1, 1),
(NULL, 4, 'hifza shaikh', '7400845696', 'hifza@gmail.com', '1980-10-12', '', 'be', 'shareef', '8884093745', 'Cloud Computing', 'dharwad', '254666254545', 'IMG_8996.JPG', 'IMG_9049.JPG', 'abhi. rasume.docx', 1, 1),
(NULL, 5, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', 'Web designing and development Syllabus.docx', 1, 1),
(NULL, 6, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', 'Web designing and development Syllabus.docx', 1, 1),
(NULL, 7, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1),
(NULL, 8, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1),
(NULL, 9, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1),
(NULL, 10, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1),
(NULL, 11, 'tazeen', '1233232223', 'tazeen123@gmail.com', '2000-06-04', '', 'ba', 'Sangappa', '8884093745', 'Programming Languages', 'hubballi', '254666254545', 'scanner_20171125_190628 (1).jpeg', 'New Doc 2018-05-25.jpg', '2.docx', 1, 1),
(NULL, 12, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gamangatti', '254666254545', 'IMG_8985.JPG', 'IMG_8996.JPG', 'Case Study.southwest.docx', 1, 1),
(NULL, 13, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gamangatti', '254666254545', 'IMG_8985.JPG', 'IMG_8996.JPG', 'Case Study.southwest.docx', 1, 1),
(NULL, 14, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gajendragada', '631854645846', 'IMG_9093.JPG', 'IMG_9101.JPG', 'abhi.anay.docx', 1, 1),
(NULL, 15, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-05-07', '', 'MbA', 'bheemappa', '8884920642', 'Python Programming', 'gajendragada', '631854645846', 'IMG_9093.JPG', 'IMG_9101.JPG', 'abhi.anay.docx', 1, 1),
(NULL, 16, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1998-07-06', '', 'Bsc', 'bheemappa', '8884920642', 'Web Designing and Development', 'gamangatti', '254666254545', 'IMG_9200.JPG', 'IMG_9201.JPG', 'FINAL REPORT 1.docx', 1, 1),
(NULL, 17, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', '', '', 1, 1),
(NULL, 18, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', '', '', 1, 1),
(NULL, 19, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', '', '', 1, 1),
(NULL, 40, 'qwerty', '8884093745', 'qwerty@gmail.com', '1996-06-03', '', 'be', 'ycafdvb', '34567654342', 'School Academics', 'hdsjdkkkdsdae', '234567889080', 'IMG-20181129-WA0039.jpg', 'IMG-20190101-WA0000.jpg', '__ BillDesk Payment Gateway __.pdf', 1, 1),
(22, 45, 'akash', '35489348280', 'akash@gmail.com', '1996-06-06', 'Male', 'PU', 'bheemappa', '8852369996', 'Basic Computers', 'hubballi', '145623658541', '2018-01-26-12-45-27-195.jpg', '2017-12-17-08-37-42-593.jpg', 'RESUME.docx', 1, 1),
(NULL, 42, 'amit', '4565456445', 'amit@gmail.com', '1994-04-05', '', 'bcom', 'dggggggg', '1254888555', 'Digital Marketing', 'hdsjdkkkdsdae', '564555889996', 'IMG-20190122-WA0011.jpg', 'IMG-20190104-WA0004.jpg', 'PAN.pdf', 1, 1),
(NULL, 43, 'amit', '4565456445', 'amit@gmail.com', '1992-03-21', '', 'mtec', 'hfgtyt', '34567654342', 'Python Programming', 'hdsjdkkkdsdae', '234567889080', 'hgkjgkf.jpg', 'images inno.jpg', 'hcm.abhi.pptx', 1, 1),
(NULL, 44, 'amit', '4565456445', 'amit@gmail.com', '1996-08-05', 'gender', 'mtec', 'hfgtyt', '34567654342', 'Cloud Computing', 'hdsjdkkkdsdae', '564555889996', 'innovation-management-for-bu-syllabus-32-638.jpg', 'RVCE_New_Logo.JPG', 'IT CASE STUDY.docx', 1, 1),
(22, 46, 'akash', '35489348280', 'akash@gmail.com', '1996-06-06', 'Male', 'PU', 'bheemappa', '8852369996', 'Basic Computers', 'hubballi', '145623658541', '2018-01-26-12-45-27-195.jpg', '2017-12-17-08-37-42-593.jpg', 'RESUME.docx', 1, 1),
(22, 47, 'akash', '35489348280', 'akash@gmail.com', '1993-11-10', 'Male', 'PU', 'bheemappa', '8852369996', 'Cloud Computing', 'hubballi', '145623658541', '2018-01-26-12-45-27-195.jpg', '2018-01-26-12-45-45-878.jpg', 'RESUME.docx', 1, 1),
(22, 48, 'akash', '35489348280', 'akash@gmail.com', '1993-11-10', 'Male', 'PU', 'bheemappa', '8852369996', 'Cloud Computing', 'hubballi', '145623658541', '2018-01-26-12-45-27-195.jpg', '2018-01-26-12-45-45-878.jpg', 'RESUME.docx', 1, 1),
(52, 49, 'athar', '88899900000', 'athar@gmail.com', '1988-05-03', 'Male', 'B.e(CS)', 'hifza', '8954623146', 'Python Programming', 'hubballi', '369825417456', 'unnamed.png', 'Untitled.png', '4.pdf', 1, 1),
(46, 50, 'qwerty1', '4545454545', 'qwerty21@gmail.com', '1998-11-10', 'Male', 'bsc(cs)', 'bheemappa', '8852369996', 'School Academics', 'dharwad', '145623658541', 'unnamed.png', 'Untitled.png', '10.pdf', 1, 1),
(45, 51, 'qwerty', '2233223322', 'qwerty@gmail.com', '1993-02-10', 'Female', 'PU', 'bheemappa', '8754693523', 'Civil Design Softwares', 'dharwad', '563214525896', 'unnamed.png', 'Untitled.png', '3.pdf', 1, 1),
(45, 52, 'qwerty', '2233223322', 'qwerty@gmail.com', '1993-02-10', 'Female', 'PU', 'bheemappa', '8754693523', 'Civil Design Softwares', 'dharwad', '563214525896', 'unnamed.png', 'Untitled.png', '3.pdf', 1, 1),
(0, 53, 'sushila bk', '8884920642', 'sudhilabk01@gmail.com', '1974-06-01', 'Female', 'SSLC', 'hanumappa', '7789562563', 'Cloud Computing', 'keshawpur,hubballi', '563241451236', 'FB_IMG_1515116195982.jpg', '1439399778218.jpg', '6.pdf', 1, 1),
(40, 54, 'tazeen', '1233232223', 'tazeen123@gmail.com', '1999-03-10', 'Female', 'BA', 'shareef', '8456245625', 'School Academics', 'dharwad', '563214525896', 'ADAR.pdf', 'unnamed.png', '10.pdf', 1, 1),
(0, 55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1);

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
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `Email`, `Phone`, `Qualification`, `Trainings`, `Internship`, `Demo`, `Services`, `Status`) VALUES
(1, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1),
(2, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1),
(3, 'swat', 'swat@gmail.com', '2336785595', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1),
(4, 'swathi bk', 'swathibk95@gmail.com', '70199626333', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1),
(5, 'swathi bk', 'swathibk95@gmail.com', '70199626333', '', 'WEB DESIGNING AND DEVELOPMENT', '', '', '', 1),
(6, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', '', 1),
(7, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', '', 1),
(8, 'swat', 'swat@gmail.com', '3456543678', '', 'Web Designing and Development', '', '', '', 1),
(9, 'swathi bk', 'swat@gmail.com', '21344343', '', 'SELECT YOUR INTEREST', 'Python Programming', '', '', 1),
(10, 'swathi bk', 'dnsguydas@hshaj.com', '234365464', '', '', 'Python Programming', '', '', 1),
(11, 'swathi bk', 'swathibk95@gmail.com', '56788899', '', '', 'Digital Marketing', '', '', 1),
(12, 'swathi bk', 'swathibk95@gmail.com', '56788899', '', '', 'Digital Marketing', '', '', 1),
(13, 'swat', 'swathibk95@gmail.com', '3456789999', '', 'SELECT YOUR INTEREST', 'Digital Marketing', '', '', 1),
(14, 'swarah', 'swarah@gmail.com', '2345678912', '', '', 'Python Programming', '', '', 1),
(15, 'swarah', 'swarah@gmail.com', '34565454543', '', '', 'Digital Marketing', '', '', 1),
(16, 'swarah', 'swarah@gmail.com', '34565454543', '', '', 'Digital Marketing', '', '', 1),
(17, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Android Development', '', '', 1),
(18, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1),
(19, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1),
(20, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1),
(21, 'swa', 'swa@gmail.com', '2345678901', '', '', 'Web Designing and Development', '', '', 1),
(22, 'akash', 'akash@gmail.com', '35489348280', '', '', 'SELECT YOUR INTEREST', '', '', 1),
(23, 'akash', 'akash9@gmail.com', '346777589000', '', '', 'SELECT YOUR INTEREST', '', '', 1),
(24, 'prashant', 'prashant@gmail.com', '2345234523', '', '', 'SELECT YOUR INTEREST', '', '', 1),
(25, 'prashant', 'prashant10@gmail.com', '23123123123', '', '', 'SELECT YOUR INTEREST', '', '', 1),
(26, 'prashant', 'prashanth20@gmail.com', '2345677889', '', '', 'Android Development', '', '', 1),
(27, 'akash', 'akash06@gmail.com', '1234567890', '', 'Cloud Computing', '', '', '', 1),
(28, 'akash29', 'dnsguydas@hshaj.com', '2409090909', '', 'Web Designing and Development', '', '', '', 1),
(29, 'akash29', 'dnsguydas@hshaj.com', '99009900', '', 'Cloud Computing', '', '', '', 1),
(30, 'prashant', 'prashanth201@gmail.com', '8884093745', '', '', 'Digital Marketing', '', '', 1),
(31, 'prashant', 'prashant100@gmail.com', '8884093745', '', '', 'SELECT YOUR INTEREST', '', '', 1),
(32, 'prashantsm', 'prashant007@gmail.com', '77007700', '', '', 'SELECT YOUR INTEREST', '', '', 1),
(33, 'prashantsm', 'prashant00007@gmail.com', '7700077000', '', 'Web Designing and Development', 'SELECT YOUR INTEREST', '', '', 1),
(34, 'athar', 'athar@gmail.com', '8989898989', '', 'SELECT YOUR INTEREST', 'Python Programming', '', '', 1),
(35, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1),
(36, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1),
(37, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1),
(38, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'CIVIL DESIGN SOFTWARES', 1),
(39, 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', '', '', '', '', 'MOBILE APP DEVELOPMENT', 1),
(40, 'tazeen', 'tazeen123@gmail.com', '1233232223', '', '', '', '', 'DIGITAL MARKETING', 0),
(41, 'rahul', 'rahulrap@gmail.com', '9035804741', '', '', '', 'ANDROID DEVELOPMENT', '', 1),
(42, 'swarah', 'dnsguydas@hshaj.com', '3456789999', '', 'Python Programming', '', '', '', 1),
(43, 'akash29', 'dnsguydas@hshaj.com', '0', '', 'Cloud Computing', '', '', '', 1),
(44, 'qwerty', 'qwerty@gmail.com', '2233223322', '', '', 'Python Programming', '', '', 1),
(45, 'qwerty', 'qwerty@gmail.com', '2233223322', '', '', 'Digital Marketing', '', '', 0),
(46, 'qwerty1', 'qwerty21@gmail.com', '4545454545', 'bsc(cs)', '', 'web desiging and development', '', '', 0),
(47, 'qwerty1', 'qwerty34@gmail.com', '1112223333', '', '', 'Digital Marketing', '', '', 1),
(48, 'prashant11', 'prashanth20@gmail.com', '2345677889', 'B.E', '', 'Web Designing and Development', '', '', 1),
(49, 'qwerty', 'qwerty@gmail.com', '8884093745', 'B.E(cs)', '', 'Android Development', '', '', 1),
(50, 'qwerty1', 'qwerty@gmail.com', '2233223322', 'B.E', '', 'Digital Marketing', '', '', 1),
(51, 'qwerty1', 'qwerty@gmail.com', '2233223322', 'B.E', '', 'Digital Marketing', '', '', 1),
(52, 'athar', 'athar@gmail.com', '88899900000', 'B.e(CS)', '', 'Web Designing and Development', '', '', 1),
(53, 'gopal', 'gopal@gmail.com', '5478889668', '', 'Digital Marketing', '', '', '', 1),
(54, 'swathibk', 'swathibk9567@gmail.com', '8857469621', '', 'Python Programming', 'SELECT YOUR INTEREST', '', '', 1),
(55, 'swathibk', 'swathibk9567@gmail.com', '8857469621', '', 'Programming Languages', '', '', '', 1),
(57, 'swathibk', 'swathibk9567@gmail.com', '8857469621', '', '', 'Digital Marketing', '', '', 1),
(59, 'swathibk', 'swathibk9567@gmail.com', '8857469621', '', 'School Academics', '', '', '', 1),
(61, 'sindhu', 'sindhu@gmail.com', '7458963252', '', 'Civil Design Softwares', '', '', '', 1),
(60, 'geeta', 'geeta@gmail.com', '5412369651', '', 'Digital Marketing', '', '', '', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `CName`, `Ctype`, `Cduration`) VALUES
(1, 'Web designing and development', 'Offline', '2 months'),
(2, 'Python Programming', 'Classroom Training', '2 months'),
(3, 'Cloud Computing', 'Classroom Training', '2 months'),
(4, 'Android Development', 'Classroom Training', '2 months'),
(5, 'Civil Deisgn Softwares', 'Classroom Training', '2 months'),
(6, 'Digital Marketing', 'Classroom Training', '2 months'),
(7, 'Basics of computer', 'Classroom Training', '2 months'),
(8, 'Programming Languages', 'Classroom Training', '3-4 months'),
(9, 'IOT', 'Online', '3 months');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `Admissionid` int(11) DEFAULT NULL,
  `Courseid` int(11) DEFAULT NULL,
  `TotalFees` int(50) NOT NULL,
  `PaidFees` int(50) NOT NULL,
  `PendingFees` int(50) NOT NULL,
  `Feesplan` varchar(50) NOT NULL,
  `DueDate` date NOT NULL,
  `PaymentMode` varchar(100) NOT NULL,
  `PaymentDescription` varchar(250) NOT NULL,
  KEY `Courseid` (`Courseid`),
  KEY `Admissionid` (`Admissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`Admissionid`, `Courseid`, `TotalFees`, `PaidFees`, `PendingFees`, `Feesplan`, `DueDate`, `PaymentMode`, `PaymentDescription`) VALUES
(1, 1, 18000, 10000, 0, 'Monthly', '2021-03-25', 'Cash', 'pending in installments'),
(1, 1, 18000, 2000, 0, 'Monthly', '2021-03-25', 'Debit/Credit Card', 'pending in installments');

-- --------------------------------------------------------

--
-- Table structure for table `trainercoursemapping`
--

DROP TABLE IF EXISTS `trainercoursemapping`;
CREATE TABLE IF NOT EXISTS `trainercoursemapping` (
  `trainerid` int(15) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  KEY `courseid` (`courseid`),
  KEY `FK__trainercourse__id` (`trainerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainercoursemapping`
--

INSERT INTO `trainercoursemapping` (`trainerid`, `courseid`) VALUES
(9, 3),
(9, 5),
(12, 1),
(12, 2),
(24, 3),
(24, 4),
(25, 3),
(25, 4),
(26, 1),
(26, 4);

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `Name`, `Phone`, `Email`, `Qualification`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`) VALUES
(1, 'chetana', '5554789696', 'chetana@gmail.com', 'Bcom', 'dharwad', '548796554569', 'IMG_8984.JPG', 'IMG_8983.JPG', ''),
(2, 'chetana', '5554789696', 'chetana@gmail.com', 'Bcom', 'dharwad', '548796554569', 'IMG_8984.JPG', 'IMG_8983.JPG', ''),
(3, 'chetana', '5554789696', 'chetana@gmail.com', 'Bcom', 'dharwad', '548796554569', 'IMG_8984.JPG', 'IMG_8983.JPG', ''),
(4, 'abhishek', '77445562111', 'abhi@gmail.com', 'MBA', 'bangalore', '778899856542', 'IMG_9200.JPG', 'IMG_9201.JPG', ''),
(5, 'abhishek', '77445562111', 'abhi@gmail.com', 'MBA', 'bangalore', '778899856542', 'IMG_9200.JPG', 'IMG_9201.JPG', ''),
(6, 'abhishek', '77445562111', 'abhi@gmail.com', 'MBA', 'bangalore', '778899856542', 'IMG_9200.JPG', 'IMG_9201.JPG', ''),
(7, 'abhishek', '77445562111', 'abhi@gmail.com', 'MBA', 'bangalore', '778899856542', 'IMG_9200.JPG', 'IMG_9201.JPG', ''),
(8, 'prashant', '789564123', 'prashant@gmail.com', 'MBA', 'bangalore', '256888741456', 'IMG_9201.JPG', 'IMG_9012.JPG', ''),
(9, 'prashant', '789564123', 'prashant@gmail.com', 'MBA', 'bangalore', '256888741456', 'IMG_9201.JPG', 'IMG_9012.JPG', ''),
(11, 'akash', '4563258933', 'akash@gmail.com', 'MBA', 'bangalore', '123456987895', 'IMG_8970.JPG', 'IMG_8969.JPG', ''),
(12, 'akash', '4563258933', 'akash@gmail.com', 'MBA', 'bangalore', '123456987895', 'IMG_8970.JPG', 'IMG_8969.JPG', ''),
(26, 'Sweta', '8884920642', 'swethamk@gmail.com', 'BCA', 'hubballi', '985674588569', 'IMG-20181129-WA0039.jpg', 'IMG-20190101-WA0000.jpg', '5.pdf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
