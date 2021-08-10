-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 10, 2021 at 12:36 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Gender`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`, `Feesstatus`, `Courseid`, `Modified_Date`) VALUES
(NULL, 1, 'prashant myageri', '9986254524', 'prashant007@gmail.com', '1996-06-07', 'Male', 'MBA', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', '', 'Dummy-Icon-Female.jpg', '', 1, 1, '2021-01-11 00:00:00'),
(NULL, 2, 'prashantsm', '77007700', 'prashant007@gmail.com', '1996-06-07', '', 'puc', 'Sangappa', '8884093745', 'Civil Design Softwares', 'bangalore', '631854645846', 'IMG_8996.JPG', 'RESUME.docx', '', 1, 1, '2021-01-18 00:00:00'),
(NULL, 3, 'prashant', '2345234523', 'prashant@gmail.com', '1996-06-07', '', 'MbA', 'bheemappa', '5566987444', 'School Academics', 'gajendragada', '254666254545', 'IMG_20190414_170031.jpg', 'IMG_8985.JPG', 'varsh. abhi.pptx', 1, 1, '2021-03-31 00:00:00'),
(NULL, 4, 'hifza shaikh', '7400845696', 'hifza@gmail.com', '1980-10-12', '', 'be', 'shareef', '8884093745', '1', 'dharwad', '254666254545', '__ BillDesk Payment Gateway __.pdf', 'IMG_9049.JPG', 'Web designing and development Syllabus.docx', 1, 1, '2021-02-01 00:00:00'),
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
(0, 39, 'Humza', '8007961759', 'gomzyr3@gmail.com', '2021-03-17', 'Male', 'BE', 'asdasdsadas', '1234567890', 'Basic Computers', 'Gandhi Nagar Dharwad', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'HifzaResume.docx', 1, 1, '2021-03-31 00:00:00'),
(0, 40, 'www', '23456', 'bjcg@gmail.com', '1997-01-07', 'Male', 'be', 'ewere', '1234', 'Etabs', 'dqw3d', '234567856445', 'Pluck_Spencer_Rise_HP-1600x1067.jpg', '5c74ee3432fe3.jpg', '__ BillDesk Payment Gateway __.pdf', 1, 5, NULL);

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
  `enq_createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modified_Date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `Email`, `Phone`, `Qualification`, `Trainings`, `Internship`, `Demo`, `Services`, `status`, `enq_createdon`, `Modified_Date`) VALUES
(1, 'swathibk', 'fueyfr@gmail.com', '4354667868', '', 'Etabs', '', '', '', 1, '2021-07-15 16:36:14', '2021-07-14 17:07:05'),
(2, 'akashbheemappa', 'abk@gmail.com', '9987676555', '', '', 'Digital Marketing', '', '', 1, '2021-07-15 16:36:14', '2021-07-14 17:07:54'),
(3, 'prashant', 'prashanth@gmail.com', '7864566543', '', '', 'Digital Marketing', '', '', 1, '2021-07-15 16:36:14', '2021-07-14 16:22:42'),
(4, 'tasleem', 'tasleem@gmail.com', '6767676767', '', '', 'Android Development', '', '', 1, '2021-07-15 16:36:14', '2021-07-14 16:22:58'),
(5, 'tazeen', 'tazeen@gmail.com', '7867877878', '', '', '', '', 'Python Programming', 1, '2021-07-15 16:36:14', '2021-07-14 16:23:15'),
(6, 'sushila', 'sushila@gmail.com', '8989898989', '', '', '', '', 'Branding', 1, '2021-07-15 16:36:14', '2021-07-14 16:23:29'),
(8, 'gopal', 'gopal@gmail.com', '78676767676', '', 'Web Design and Development', '', '', '', 1, '2021-07-15 16:39:37', '2021-07-15 16:40:15');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `CName`, `Ctype`, `Cduration`, `Modified_Date`) VALUES
(1, 'Web Design and Development', 'Classroom Training', '60 Day', NULL),
(2, 'Civil Revit', 'Classroom Training', '30 Day', NULL),
(3, 'Python Programming', 'Classroom Training', '3 months', NULL),
(4, 'Cloud Computing', 'Classroom Training', '3 months', NULL),
(5, 'Etabs', 'Online', '1 month', NULL);

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
-- Table structure for table `enquiry_followup`
--

DROP TABLE IF EXISTS `enquiry_followup`;
CREATE TABLE IF NOT EXISTS `enquiry_followup` (
  `followup_id` int(11) NOT NULL AUTO_INCREMENT,
  `followup_enq_id` int(11) DEFAULT NULL,
  `followup_comments` varchar(200) NOT NULL,
  `followup_createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `followup_by` varchar(100) NOT NULL,
  PRIMARY KEY (`followup_id`),
  KEY `followup_enq_id` (`followup_enq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry_followup`
--

INSERT INTO `enquiry_followup` (`followup_id`, `followup_enq_id`, `followup_comments`, `followup_createdon`, `followup_by`) VALUES
(8, 27, 'testtt', '2021-07-13 17:03:52', 'admin1'),
(9, 27, 'test222', '2021-07-13 17:06:25', 'admin1'),
(10, 52, 'intern test', '2021-07-14 12:51:05', 'admin1'),
(11, 1, 'bekfeyg;l', '2021-08-10 17:00:46', 'admin1');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`feesid`, `Admissionid`, `Courseid`, `TotalFees`, `PaidFees`, `PendingFees`, `Feesplan`, `DueDate`, `PaymentMode`, `PaymentDescription`, `lastpaiddate`, `Modified_Date`, `feesreceipt`) VALUES
(14, 1, 1, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'GooglePay', NULL, '2021-03-25 18:04:32', ''),
(15, 4, 1, 25000, 2500, 22500, 'Part Payment', '2021-04-30', 'Cash', 'Cash', NULL, '2021-03-27 20:03:05', 'hifza shaikh2021-03-27.pdf'),
(16, 4, 1, 25000, 20000, 2500, 'Part Payment', '2021-04-14', 'Debit/Credit Card', 'pending in installments', NULL, '2021-04-02 16:07:54', 'hifza shaikh2021-04-02.pdf'),
(17, 37, 1, 40000, 12000, 28000, 'Part Payment', '2021-04-28', 'Net Banking', 'dfgtfry', NULL, '2021-04-12 17:45:56', 'Junaid2021-04-12.pdf'),
(18, 37, 1, 40000, 20000, 8000, 'Part Payment', '2021-04-29', 'UPI transaction', 'dfgtfry', NULL, '2021-04-12 17:46:35', 'Junaid2021-04-12.pdf'),
(19, 2, 1, 40000, 20000, 20000, 'Part Payment', '2021-05-05', 'Net Banking', 'dfgtfry', NULL, '2021-04-12 18:12:08', 'prashantsm2021-04-12.pdf'),
(20, 2, 1, 40000, 10000, 10000, 'Part Payment', '2021-05-04', 'Debit/Credit Card', 'dfgtfry', NULL, '2021-04-12 18:12:24', 'prashantsm2021-04-12.pdf'),
(21, 2, 1, 40000, 5000, 5000, 'Part Payment', '2021-08-10', 'Cash', 'afeetsf', NULL, '2021-08-07 17:26:36', 'prashantsm2021-08-07.pdf');

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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `Candidateid` varchar(100) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Services` varchar(100) NOT NULL,
  `TotalAmount` varchar(100) NOT NULL,
  `PaidAmount` varchar(100) NOT NULL,
  `PendingAmount` varchar(100) NOT NULL,
  `PaymentMode` varchar(100) NOT NULL,
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paymentreceipt` varchar(100) NOT NULL,
  KEY `Candidateid` (`Candidateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`Candidateid`, `Name`, `Email`, `Phone`, `Services`, `TotalAmount`, `PaidAmount`, `PendingAmount`, `PaymentMode`, `Modified_Date`, `paymentreceipt`) VALUES
('40', 'tazeen', 'tazeen123@gmail.com', '1233232223', 'DIGITAL MARKETING', '30000', '10000', '20000', 'Net Banking', '2021-04-12 18:10:05', ''),
('40', 'tazeen', 'tazeen123@gmail.com', '1233232223', 'DIGITAL MARKETING', '30000', '15000', '5000', 'Net Banking', '2021-04-12 18:10:41', ''),
('40', 'tazeen', 'tazeen123@gmail.com', '1233232223', 'DIGITAL MARKETING', '30000', '2500', '2500', 'Net Banking', '2021-04-12 18:23:54', ''),
('40', 'tazeen', 'tazeen123@gmail.com', '1233232223', 'DIGITAL MARKETING', '30000', '2000', '500', 'Debit/Credit Card', '2021-04-12 18:24:12', ''),
('40', 'tazeen', 'tazeen123@gmail.com', '1233232223', 'DIGITAL MARKETING', '30000', '500', '0', 'Net Banking', '2021-04-12 18:34:22', ''),
('38', 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', 'CIVIL DESIGN SOFTWARES', '30000', '10000', '20000', 'Net Banking', '2021-04-12 18:34:40', ''),
('38', 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', 'CIVIL DESIGN SOFTWARES', '30000', '10000', '20000', 'Net Banking', '2021-04-12 18:36:21', ''),
('38', 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', 'CIVIL DESIGN SOFTWARES', '30000', '10000', '20000', 'Net Banking', '2021-04-12 18:37:17', ''),
('38', 'tasleem', 'tasleemnadaf@gmail.com', '23456789000', 'CIVIL DESIGN SOFTWARES', '30000', '10000', '20000', 'Net Banking', '2021-04-12 18:38:04', 'tasleem2021-04-12.pdf');

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
