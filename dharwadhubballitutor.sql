-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2022 at 12:04 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


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
  `id` int NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT IGNORE INTO `admin` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'dharwadhubballitutor', 'tutor@123');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
CREATE TABLE IF NOT EXISTS `admissions` (
  `enquiry_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
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
  `Resume` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Feesstatus` tinyint(1) NOT NULL DEFAULT '1',
  `Courseid` int NOT NULL,
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_enquiry_id` (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `admissionsforlastq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `admissionsforlastq`;
CREATE TABLE IF NOT EXISTS `admissionsforlastq` (
`Admissions` bigint
,`MONTH` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `businessdetails`
--

DROP TABLE IF EXISTS `businessdetails`;
CREATE TABLE IF NOT EXISTS `businessdetails` (
  `businessId` int NOT NULL AUTO_INCREMENT,
  `businessName` varchar(250) NOT NULL,
  `businessAddress` varchar(250) NOT NULL,
  `businessContact` varchar(15) NOT NULL,
  `businessTagLine` varchar(500) NOT NULL,
  `businessEmail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `businessGSTIN` varchar(15) DEFAULT NULL,
  `logoImage` varchar(100) DEFAULT NULL,
  `aboutBusiness` longtext NOT NULL,
  PRIMARY KEY (`businessId`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `businessdetails`
--


-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Trainings` varchar(40) NOT NULL,
  `Internship` varchar(40) NOT NULL,
  `Demo` varchar(100) NOT NULL,
  `Services` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--


-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(200) NOT NULL,
  `categoryDescription` varchar(500) NOT NULL,
  `categoryCreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoryCreatedBy` varchar(200) NOT NULL,
  `categoryModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `categorytModifiedBy` varchar(200) NOT NULL,
  `HasSubcategory` varchar(120) NOT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `categoryName` (`categoryName`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--


-- --------------------------------------------------------

--
-- Table structure for table `catsubcatmapping`
--

DROP TABLE IF EXISTS `catsubcatmapping`;
CREATE TABLE IF NOT EXISTS `catsubcatmapping` (
  `catId` int NOT NULL,
  `sucatId` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catsubcatmapping`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `coursebasedenq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `coursebasedenq`;
CREATE TABLE IF NOT EXISTS `coursebasedenq` (
`NUMBER` bigint
,`Trainings` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CName` varchar(100) NOT NULL,
  `Ctype` varchar(100) NOT NULL,
  `Cduration` varchar(100) NOT NULL,
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--


--
-- Stand-in structure for view `enqueriesforlastq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `enqueriesforlastq`;
CREATE TABLE IF NOT EXISTS `enqueriesforlastq` (
`Enqueries` bigint
,`MONTH` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Trainings` varchar(40) NOT NULL,
  `Internship` varchar(40) NOT NULL,
  `Demo` varchar(100) NOT NULL,
  `Services` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--


-- --------------------------------------------------------

--
-- Table structure for table `enquiry_followup`
--

DROP TABLE IF EXISTS `enquiry_followup`;
CREATE TABLE IF NOT EXISTS `enquiry_followup` (
  `followup_id` int NOT NULL AUTO_INCREMENT,
  `followup_enq_id` int DEFAULT NULL,
  `followup_comments` varchar(200) NOT NULL,
  `followup_createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `followup_by` varchar(100) NOT NULL,
  PRIMARY KEY (`followup_id`),
  KEY `followup_enq_id` (`followup_enq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry_followup`
--


-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `feesid` int NOT NULL AUTO_INCREMENT,
  `Admissionid` int DEFAULT NULL,
  `Courseid` int DEFAULT NULL,
  `TotalFees` int NOT NULL,
  `PaidFees` int NOT NULL,
  `PendingFees` int NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--



-- --------------------------------------------------------

--
-- Stand-in structure for view `feescollectionlastm`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `feescollectionlastm`;
CREATE TABLE IF NOT EXISTS `feescollectionlastm` (
`Course` varchar(200)
,`DueDate` date
,`Id` int
,`Name` varchar(100)
,`PaidFees` decimal(65,0)
,`TotalFees` int
);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `postId` int NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(100) NOT NULL,
  `postUrl` varchar(100) NOT NULL,
  `LinkUnder` int NOT NULL,
  `appearOnHome` varchar(1) NOT NULL DEFAULT '0',
  `postDescription` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `postCreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postCreatedBy` varchar(100) NOT NULL,
  `postModifiedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `titleTag` varchar(100) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `modifiedBy` varchar(100) NOT NULL,
  PRIMARY KEY (`postId`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--


-- --------------------------------------------------------

--
-- Table structure for table `postcatmapping`
--

DROP TABLE IF EXISTS `postcatmapping`;
CREATE TABLE IF NOT EXISTS `postcatmapping` (
  `postId` int NOT NULL,
  `catId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postcatmapping`
--

------------------------------------------------

--
-- Table structure for table `postimages`
--

DROP TABLE IF EXISTS `postimages`;
CREATE TABLE IF NOT EXISTS `postimages` (
  `postImageId` int NOT NULL AUTO_INCREMENT,
  `postImage` longblob NOT NULL,
  `createdOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(100) NOT NULL,
  `modifiedBy` varchar(100) NOT NULL,
  `imageAlternateText` varchar(100) NOT NULL,
  `postId` int NOT NULL,
  PRIMARY KEY (`postImageId`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postimages`
--


-- --------------------------------------------------------

--
-- Table structure for table `postkeywords`
--

DROP TABLE IF EXISTS `postkeywords`;
CREATE TABLE IF NOT EXISTS `postkeywords` (
  `keywordId` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL,
  `createdOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(100) NOT NULL,
  `modifiedBy` varchar(100) NOT NULL,
  PRIMARY KEY (`keywordId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `postsubcatmapping`
--

DROP TABLE IF EXISTS `postsubcatmapping`;
CREATE TABLE IF NOT EXISTS `postsubcatmapping` (
  `postId` int NOT NULL,
  `subCatId` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

DROP TABLE IF EXISTS `privacypolicy`;
CREATE TABLE IF NOT EXISTS `privacypolicy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privacypolicy`
--


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

-- --------------------------------------------------------

--
-- Table structure for table `sliderimages`
--

DROP TABLE IF EXISTS `sliderimages`;
CREATE TABLE IF NOT EXISTS `sliderimages` (
  `imageId` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `createdOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alternatetext` varchar(200) NOT NULL,
  `imageCaption` varchar(500) NOT NULL,
  `modifiedBY` varchar(100) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliderimages`
--


-- --------------------------------------------------------

--
-- Table structure for table `socialmediahandle`
--

DROP TABLE IF EXISTS `socialmediahandle`;
CREATE TABLE IF NOT EXISTS `socialmediahandle` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `handle` varchar(500) NOT NULL,
  `icon` varchar(2000) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(500) NOT NULL,
  `modifiedBy` varchar(500) NOT NULL,
  `modifiedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socialmediahandle`
--


-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(200) NOT NULL,
  `subCategoryDescription` varchar(500) NOT NULL,
  `subCategoryCreatedBy` varchar(200) NOT NULL,
  `subCategoryCreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subCategoryModifiedBy` varchar(200) NOT NULL,
  `subCategoryModifiedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `termsandconditions`
--

DROP TABLE IF EXISTS `termsandconditions`;
CREATE TABLE IF NOT EXISTS `termsandconditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `termsandconditions`
--


-- --------------------------------------------------------

--
-- Table structure for table `trainercoursemapping`
--

DROP TABLE IF EXISTS `trainercoursemapping`;
CREATE TABLE IF NOT EXISTS `trainercoursemapping` (
  `trainerid` int NOT NULL,
  `courseid` int NOT NULL,
  KEY `trainerid` (`trainerid`),
  KEY `courseid` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
CREATE TABLE IF NOT EXISTS `trainers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Coursesassigned` varchar(100) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `AdhaarNo` varchar(20) NOT NULL,
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AdhaarFile` varchar(100) NOT NULL,
  `PhotoFile` varchar(100) NOT NULL,
  `Resume` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainers`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(250) NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_type` enum('Admin','Manager') NOT NULL,
  `user_status` enum('Enable','Disable') NOT NULL,
  `user_created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT  INTO `user` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_password`, `user_type`, `user_status`, `user_created_on`) VALUES
(2, 'info@acedecors.in', '9742367112', 'info@acedecors.in', 'Acedecors@123', 'Admin', 'Enable', '2021-05-01 18:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `feescollectionlastm`  AS  select `a`.`id` AS `Id`,`a`.`Name` AS `Name`,`a`.`CoursesOpted` AS `Course`,`f`.`TotalFees` AS `TotalFees`,`f`.`DueDate` AS `DueDate`,sum(`f`.`PaidFees`) AS `PaidFees` from (`admissions` `a` join `fees` `f` on((`a`.`id` = `f`.`Admissionid`))) group by `f`.`TotalFees`,`a`.`Name`,`a`.`CoursesOpted` order by `a`.`id` desc ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;