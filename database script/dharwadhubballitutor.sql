-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2024 at 10:07 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

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
  `id` int NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`) VALUES
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
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_enquiry_id` (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`, `Gender`, `Feesstatus`, `Courseid`, `createddate`) VALUES
(NULL, 1, 'Gauri Gatade', '8007961759', 'gomzyr3@gmail.com', '1997-09-11', 'BSCinHomeScience', 'Savitri Gatade', '9480296486', 'Basic Computers', 'H.no. 13 Sharada Residency, Yalakki Shettar Colony, Dharwad 580001', '123456789012', '', 'Dummy-Icon-Female.jpeg', 'Gauri Resume.docx', 'Female', 1, 2, '2021-03-27 07:51:09'),
(NULL, 2, 'Pallavi Hokrani', '8007961759', 'pallavihokrani20@gmail.com', '2000-05-12', 'MBA', 'Omkar Hokrani', '8747851425', 'Advanced Excel Program', 'Bylhallik tq  Bhalki dist  Bidar', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'dummyresume.docx', 'Female', 1, 2, '2021-09-21 21:16:07'),
(NULL, 3, 'Jagadeesh s kalappanavar', '8007961759', 'jagadishkoppanavar@gmail.com', '1974-09-18', 'Bcom', 'jagadish', '9880137833', 'Basic Computers', 'Haveri', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'dummyresume.docx', 'Male', 1, 1, '2021-03-27 07:56:48'),
(0, 4, 'Niyazahmed Garag', '8007961759', 'nzgarag@gmail.com', '1988-09-30', 'Bcom', 'Nazeer', '9743311127', 'Basic Computers', 'Maheboob nagar Last Bus stop near quba masjid 2nd cross Hashmi nagar dharwad', '506125065410', 'IMG-20190223-WA0015 - Niyaz Garag.jpg', 'IMG_20191113_193617 - Niyaz Garag.jpg', 'Resume Niyaz 2 - Niyaz Garag.pdf', 'Male', 1, 2, '2021-03-27 07:56:59'),
(52, 5, 'Hasen dongri', '8007961759', 'hasendongri8@gmail.com', '1993-06-04', 'BCA', 'Bandagisab', '9148990467', 'C Programming', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 3, '2021-09-21 21:16:56'),
(0, 6, 'Hasen dongri', '8007961759', 'hasendongri8@gmail.com', '1993-06-04', 'BCA', 'Bandagisab', '9148990467', 'Advanced Excel Program', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 2, '2021-04-09 02:55:54'),
(0, 13, 'Aparna Devangamath', '8007961759', 'aparnadevangamath@gmail.com', '1978-11-27', 'BABed', 'Meghna', '7022970032', 'Basics of Computers', 'H.no 92 nadiger house lingaraj Nagar hubli', '606819116783', '20210520_201648 - Aparna Devangmath.jpg', '20210611_202315 - Aparna Devangmath.jpg', 'resume - Aparna Devangmath.pdf', 'Female', 1, 1, '2021-06-14 03:16:14'),
(128, 29, 'KHALILULLA HUSSAINI', '8007961759', '0603khalil@gmail.com', '2001-06-03', 'BE', 'kishwar jahan', '7337760376', 'AutoCad', 'behind Vanita sewa samaj, near noorani masjid, azad Nagar, dharward 580001', '814500273810', 'IMG-20210913-WA0005 - KHALILULLA HUSSAINI.jpg', 'IMG-20210807-WA0005 - KHALILULLA HUSSAINI.jpg', 'Khalilulla Hussaini - KHALILULLA HUSSAINI.docx', 'Male', 1, 7, '2021-09-13 03:01:45'),
(0, 7, 'Santhosh Motagi', '8007961759', 'santhoshmotagi99@gmail.com', '1999-07-14', 'BE', 'Sangappa Motagi', '9449539278', 'Etabs', 'Near MGVC College, Behind ZP Compound, Maruti Nagar, Muddebihal (Tq &amp; Post), Vijayapura(Dst)-586212', '469069654423', 'Adhar card.pdf', 'IMG_20210417_133818.jpg', 'SANTHOSH MOTAGI.pdf', 'Male', 1, 12, '2021-04-18 02:25:00'),
(0, 8, 'Mallikarjuna.ST', '8007961759', 'mallikarjun2751999@gmail.com', '1999-05-27', 'BE', 'Shambhulinga', '8073062912', 'Etabs', 'Saptapur 1st  cross, Dharwad', '689175529206', 'Adhar card (Mallikarjun).pdf', '20210417_144726 (1).jpg', 'manjesh.docx', 'Male', 1, 12, '2021-04-17 03:50:45'),
(0, 9, 'Hasen dongri', '8007961759', 'hasendongri8@gmail.com', '1993-06-04', 'BCA', 'Bandagisab', '9148990467', 'C++ Programming', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 4, '2021-05-11 23:36:38'),
(0, 10, 'Mallikarjuna.ST', '8007961759', 'mallikarjun2751999@gmail.com', '1999-05-27', 'BE', 'Shambhulinga', '8073062912', 'AutoCad', 'Saptapur 1st  cross, Dharwad', '689175529206', 'Adhar card (Mallikarjun).pdf', '20210417_144726 (1).jpg', 'manjesh.docx', 'Male', 1, 7, '2021-09-21 21:15:36'),
(0, 11, 'Santhosh Motagi', '8007961759', 'santhoshmotagi99@gmail.com', '1999-07-14', 'BE', 'Sangappa Motagi', '9449539278', 'AutoCad', 'Near MGVC College, Behind ZP Compound, Maruti Nagar, Muddebihal (Tq &amp; Post), Vijayapura(Dst)-586212', '469069654423', 'Adhar card (1).pdf', 'IMG_20210417_133818.jpg', 'SANTHOSH MOTAGI.pdf', 'Male', 1, 7, '2021-05-18 03:18:11'),
(0, 12, 'Fazlur_rehman Mudnal', '8007961759', 'fazlur44rehman@gmail.com', '1993-04-08', 'Diploma', 'Nasrin Mudnal', '7204605340', 'C Programming', 'Pathan street Old Hubli.', '308852398631', 'IMG_20210525_112522 - Fazlur Mudnal.jpg', 'PSX_20201024_141136 - Fazlur Mudnal.jpg', 'IMG_20210525_120713 - Fazlur Mudnal.jpg', 'Male', 1, 3, '2021-05-25 00:42:48'),
(76, 14, 'TAHEERHUSAIN LAGADAK', '8007961759', 'taheer489@gmail.com', '1994-06-17', 'BECIVIL', 'ABDULRASHID', '9731743981', 'Revit Designing Software', 'SANGOLLI RAYANNA NAGAR DHARWAD', '707578640993', '78585b0b-6e2b-40ac-bd75-5ec5875060df - Taheer L.jfif', '716e7ef6-db60-4209-95c7-96e30d237664 - Taheer L.jfif', 'TAHEER CV - Taheer L.pdf', 'Male', 1, 8, '2021-06-19 06:54:10'),
(0, 15, 'Vaibhav Kammar', '8007961759', 'vaibhav.incredible9@gmail.com', '1999-02-01', 'BCA', 'Ashok kammar', '9743197900', 'BCAProject', 'Jaladarshini layout next to RK nagar Dharwad', '917906899941', 'Screenshot_20210630-122747 - vaibhav kammar.jpg', 'IMG_20210602_144618 - vaibhav kammar.jpg', 'Screenshot_20210630-122934 - vaibhav kammar.jpg', 'Male', 1, 14, '2021-06-30 00:07:04'),
(81, 16, 'Nagveni Betgeri', '8007961759', 'nagavenibetageri4@gmail.com', '1999-12-27', 'BCA', 'Basavaraj y betageri', '9483738174', 'BCAProject', 'Hebballi agasi dharwad', '483313064696', 'IMG-20210630-WA0000 - Nagaveni Nagaveni.jpg', '20210515_213846 - Nagaveni Nagaveni.jpg', 'Screenshot_20210630-191400_Gallery - Nagaveni Nagaveni.jpg', 'Female', 1, 14, '2021-07-01 05:25:12'),
(0, 17, 'Nagaratna Nesargi', '8007961759', 'nagaratnanesargi24@gmail.com', '2000-06-24', 'BCA', 'Manjunath Nesargi', '9740826711', 'BCAProject', 'Kamanakatti hosayallapur Dharwad', '431559218388', '1625291917266419336553173459497 - Aishwarya Nesargi.jpg', 'IMG_20210524_000640585 - Aishwarya Nesargi.jpg', 'Document 17 - Aishwarya Nesargi.pdf', 'Female', 1, 14, '2021-07-02 23:15:16'),
(0, 18, 'VINAY V KAMMAR', '8007961759', 'vinaymkammar@gmail.com', '1999-07-17', 'BEIIIyear', 'V M KAMMAR', '8904614918', 'C Programming', 'Malamaddi, dharwad - 580007', '825917165474', 'Screenshot_2021_0726_143251 - VINAY KAMMAR.png', 'Screenshot_2021_0726_143543 - VINAY KAMMAR.png', 'Screenshot_2021_0726_142725 - VINAY KAMMAR.png', 'Male', 1, 3, '2021-07-26 04:29:22'),
(0, 19, 'Dr. Mahantesh Angadi', '8007961759', 'angadimantu@gmail.com', '1979-05-25', 'PhD', 'Amarappa', '9738663353', 'Web Design and Development', 'Raichur', '583243051540', 'Aadhar-30205-2 - Mahantesh Angadi.jpg', 'WhatsApp Image 2021-08-09 at 2.30.11 PM - Mahantesh Angadi.jpeg', 'Resume_MA Angadi - Mahantesh Angadi.pdf', 'Male', 1, 6, '2021-08-09 02:19:58'),
(0, 20, 'Hasen dongri', '8007961759', 'hasendongri8@gmail.com', '1993-07-04', 'BCA', 'Bandagisab', '9148990467', 'Basics of Computers', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 1, '2021-08-16 04:50:08'),
(0, 21, 'Sowmya patil', '8007961759', 'sowmyapatil720@gmail.com', '1998-11-11', 'BEFinalYear', 'Bhemanagouda', '7204253530', 'Python with Machine Learning', 'Shri chennabasava nagar, behind Vinay oil mill, Sindhanur , Raichur', '612152928337', 'soumya adhar.jpeg', 'soumya.jpeg', 'Sowmya_resume.docx', 'Female', 1, 18, '2021-08-22 23:46:03'),
(0, 22, 'Priyanka lokur', '8007961759', 'priyalokur2000@gmail.com', '2000-05-12', 'BEFinalYear', 'Siddappa', '9902104480', 'Python with Machine Learning', 'Halyal tq: athani dist: belgaum', '877520712955', 'priyanka adhar.jpg', 'pppriyanka.jpg', '_Priyanka lokur_resume - Priyanka Lokur.pdf', 'Female', 1, 18, '2021-08-23 21:41:03'),
(0, 23, 'vaishnavi purohit', '8007961759', 'purohit0826@gmail.com', '2002-08-26', 'BE', 'Anant Purohit', '8310937332', 'Python Programming', 'Shivanandnagar 1 st cross dharwad', '599810378222', 'adhaar.pdf', 'photo 239.pdf', 'resume....pdf', 'Female', 1, 5, '2021-08-26 06:32:57'),
(0, 24, 'p pooja', '8007961759', 'poojashipoo57402@gmail.com', '2000-03-21', 'BE', 'p kottesh', '9591993989', 'C Programming', 'near market road teligi', '328597208286', 'WhatsApp Image 2021-08-28 at 3.19.42 PM.jpeg', 'WhatsApp Image 2021-08-28 at 3.19.42 PM (1).jpeg', 'cv pooja 1.pdf', 'Female', 1, 3, '2021-08-28 02:55:00'),
(0, 25, 'Komal Avarsang', '8007961759', 'kavarsang@gmail.com', '2000-10-20', 'Diploma', 'Mallikarjun', '8147493132', 'Python with Machine Learning', '#72, Siddheshwar Nagar unkal cross hubli', '336219278008', 'aadhar_card - Komal Avarsang.pdf', 'WhatsApp Image 2021-08-30 at 1.13.09 PM.jpeg', 'Komal_Avarsang - Komal Avarsang.pdf', 'Female', 1, 18, '2021-09-21 21:18:37'),
(0, 26, 'Veeresh  G', '8007961759', 'veereshgd4@gmail.com', '2000-08-06', 'BE', 'Gururaj Dandagi', '9880909183', 'AutoCad', 'Maradagi (N), tq// Chittapur, ds//Gulbarga, pin code-585218', '798958928169', 'adhar card - Veeresh G Dandagi.pdf', 'IMG_20210609_201759_compress94 - Veeresh G Dandagi.jpg', 'VEERESH G DANDAGI - Veeresh G Dandagi.docx', 'Male', 1, 7, '2021-09-03 23:12:08'),
(0, 27, 'Prateek girish Giriraddi', '8007961759', 'prateekgg23@gmail.com', '2000-09-23', 'BE', 'Girish', '9743664915', 'AutoCad', 'AT- yattinahalli ,post - gudagur ,tal- ranibennur, dist - haveri', '307541717207', 'gg adar - Prateek gg.pdf', 'gg pic - Prateek gg.pdf', 'PRATEEK GIRISH GIRIRADDI - Prateek gg.docx', 'Male', 1, 7, '2021-09-21 21:18:07'),
(0, 28, 'Anuradha Katti', '8007961759', 'akatti04@gmail.com', '1992-03-16', 'MSc', 'Arpana', '9886723696', 'Web Design and Development', 'Kammankatti, Kumbar Oni , Dharwad', '928964421834', '78AED4A2-E640-4288-9A87-B98B8BA95620 - Anu Katti.jpeg', '3EF3401B-DE23-4554-818C-C1D90700B4C4 - Anu Katti.jpeg', 'ANURADHA RESUME - Anu Katti.doc', 'Female', 1, 6, '2021-09-04 02:58:23'),
(0, 30, 'KHALILULLA HUSSAINI', '8007961759', '0603khalil@gmail.com', '2001-06-03', 'BE', 'kishwar jahan', '7337760376', 'Revit Designing Software', 'behind Vanita sewa samaj, near noorani masjid, azad Nagar, dharward 580001', '814500273810', 'IMG-20210913-WA0005 - KHALILULLA HUSSAINI.jpg', 'IMG-20210807-WA0005 - KHALILULLA HUSSAINI.jpg', 'Khalilulla Hussaini - KHALILULLA HUSSAINI.docx', 'Male', 1, 8, '2021-09-13 06:16:22'),
(0, 31, 'Kanchan satush sankangoudar', '8007961759', 'kanchusankangoudar@gmail.com', '1996-05-27', 'BE', 'Satish Sankangoudar', '9901913735', 'Python Programming', 'C/O satish sankangoudar, 5th ward Gajendragad road, Naregal 582119  Dist-Gadag Tq- Gajendragad', '720480398305', 'IMG_20210914_093418 - Kanchu Sankangoudar.jpg', 'IMG_20210914_092445 - Kanchu Sankangoudar (1).jpg', 'KANCHAN Resume (1) - Kanchu Sankangoudar.pdf', 'Female', 1, 5, '2021-09-14 02:01:05'),
(0, 32, 'Abhsihek bhavikatti', '8007961759', 'abhishekbhavikatti1234@gamil.com', '1997-11-25', 'BE', 'Sushma bhavikatti', '98454140306', 'Python Programming', 'U.b.hill 2nd cross near head post bhavikatti compound dharwad', '901289546013', 'aadhaar - Abhishek M. B.pdf', 'photo - Abhishek M. B.pdf', 'Abhishek resum - Abhishek M. B.docx', 'Male', 1, 5, '2021-09-14 20:50:33'),
(0, 33, 'Sukhavindersingh Thakur', '8007961759', 'sukhavindersing@gmail.com', '2000-09-19', 'BE', 'seema s thakur', '9964300737', 'C Programming', '#48 R B Thakur mangal gatti plot sadhankeri dharwad-580008', '444914931241', 'adharr - Sukhavindersingh Thakur.pdf', 'adharr - Sukhavindersingh Thakur.pdf', 'MYRESUME01 - Sukhavindersingh Thakur.pdf', 'Male', 1, 3, '2021-09-14 20:59:09'),
(0, 34, 'Nagarajkumar. Malatesh. Talawar', '8007961759', 'nagarajpower1432@gmail.com', '2000-07-12', 'PUC', 'Ashok. R. Talawar', '8884054744', 'Basics of Computers', 'C/o Ravindra. G. Kundargi Plot no:-63,1st floor Yallamma devi housing society dharwad Dharwad-580004', '995812838204', '16317774155947710734289256290883 - KA27 Creations.jpg', '16317775646122505826318711933813 - KA27 Creations.jpg', '16317777034022581754231735415936 - KA27 Creations.jpg', 'Male', 1, 1, '2021-09-16 07:02:40'),
(0, 35, 'Basavtej N Patil', '8007961759', 'patilbasavatejnpatil@gmail.com', '2002-07-24', 'PUC', 'Neeta Patil', '9844785997', 'C Programming', 'Home number-38, Hanuman Nagar, Baloga Th-khanapur District-Belgaum', '793761943428', 'Adhar card - Basavatej N Patil Patil (1).pdf', 'WhatsApp Image 2021-09-17 at 7.27.04 PM.jpeg', 'Basavtej  - Basavatej N Patil Patil.pdf', 'Male', 1, 3, '2021-09-21 21:17:36'),
(0, 36, 'Anusha Joshi', '8007961759', 'joshipanusha@gmail.com', '2001-05-19', 'BE', 'Jyothi Joshi', '7354861836', 'Core Java', 'Kamitartha building ,fourth cross , Malmaddi , Dharwad , Karnataka', '612947919442', 'anusha_aadhaar_card_new - anusha joshi.pdf', 'WhatsApp Image 2021-09-21 at 7.50.20 PM.jpeg', 'AnushaJoshi_Resume - anusha joshi.pdf', 'Female', 1, 19, '2021-09-21 21:19:19'),
(0, 37, 'Suraj Tanaji Gajakosh', '8007961759', 'surajt028@gmail.com', '1999-04-18', 'BE', 'Tanaji K Gajakosh', '9480693895', 'Mechanical Combo', '5th cross,rudset road,gandhi nagar,Dharwad', '531166202938', 'IMG_MJL_â˜£ï¸-Sharp-&-Natural-ðŸ€_20210922_055210883 - Suraj T.jpg', 'Photo_1 (2) - Suraj T.jpg', 'Surajs Resume - Suraj T.pdf', 'Male', 1, 20, '2021-09-22 07:44:54'),
(0, 38, 'Rudragouda patil', '8007961759', 'rudragoudapatil260@gmail.com', '1997-04-01', 'BE', 'Basangouda patil', '8792798699', 'Python with Machine Learning', 'Bharati nagar dharwad', '607751473050', 'Aadhar - Rudragouda patil.jpg', 'img227 - Rudragouda patil.jpg', 'Resume_Rudragouda (1)-converted (1) - Rudragouda patil.pdf', 'Male', 1, 18, '2021-09-28 23:49:02'),
(109, 39, 'HajiAli MS', '8007961759', 'hajialisadarbhai53@gmail.com', '2000-11-09', 'BE', 'Meheboobali', '9916584171', 'Python Programming', 'Murgamath savdatti road renuka nagar 10t cross Dharwad 5800067546', '754684246007', 'WhatsApp Image 2021-10-05 at 7.39.50 PM.jpeg', 'WhatsApp Image 2021-10-05 at 7.39.52 PM.jpeg', 'resume.pdf', 'Male', 1, 5, '2021-10-05 07:11:28'),
(0, 40, 'Bharati Kusoji', '8007961759', 'kusojibharati@gmail.com', '1986-06-01', 'MBA', 'Mr. Manjunath', '9916312833', 'Python Programming', '178 B block Tapovan Nagar, Behind Magdum Kalyan Mantap, Dharwad.', '828282432634', 'identi_proof_adhar_card.pdf', 'WhatsApp Image 2021-10-07 at 11.01.02 AM.jpeg', 'identi_proof_adhar_card.pdf', 'Female', 1, 5, '2021-10-06 22:31:32'),
(0, 41, 'Manoj M Hatalageri', '8007961759', 'manojhatalgeri2508@gmail.com', '2003-03-22', 'PUC', 'Mallappa Hatalageri', '9482000617', 'C Programming', '5th cross,rudset road,gandhi nagar,Dharwad', '964191987994', 'WhatsApp Image 2021-10-19 at 12.09.01 PM.jpeg', 'WhatsApp Image 2021-10-19 at 12.07.15 PM.jpeg', 'Basavtej N Patil2021-09-17.pdf', 'Male', 1, 3, '2021-10-18 23:43:57'),
(155, 42, 'Sakshi Kampli', '8007961759', 'sakshsk01@gmail.com', '2002-09-01', 'BE', 'Kusum Kampli', '8879737405', 'C Programming', 'Aashirwad building, hallikeri chawl, second cross, haliyal road near K C park Dharwad', '910110722819', 'New Doc 2020-07-11 17.18.56_4 - Sakshi Kampli.jpg', '3020120 - Sakshi Kampli.jpg', '3020120 - Sakshi Kampli.jpg', 'Female', 1, 3, '2021-10-20 22:34:47'),
(157, 43, 'Sneha', '8007961759', 'snehawagh628@gmail.com', '2001-11-24', 'BE', 'Shakuntala Wagh', '9535396046', 'Python Programming', 'Karnataka Vikas Grameena Bank, H/o branch,Opposite PB road. Dharwad', '274488612230', 'WhatsApp Image 2021-10-22 at 6.30.31 PM.jpeg', 'WhatsApp Image 2021-10-22 at 6.34.35 PM.jpeg', 'WhatsApp Image 2021-10-22 at 6.30.31 PM.jpeg', 'Female', 1, 5, '2021-10-22 06:08:24'),
(159, 44, 'Harish Chavan', '8007961759', 'harishchavan97@gmail.com', '1997-05-12', 'BE', 'AppaSaheb Chavan', '7760758852', 'Electrical AutoCAD', 'At Baad ,Dharwad', '662337517462', 'WhatsApp Image 2021-10-23 at 11.23.49 AM.jpeg', 'Soft Copy (1).jpg', 'WhatsApp Image 2021-10-23 at 11.23.49 AM.jpeg', 'Male', 1, 22, '2021-10-22 23:01:27'),
(156, 45, 'Pavan Annigeri', '8007961759', 'annigeripavan077@gmail.com', '2001-07-07', 'BE', 'Manjunath Annigeri', '9964808588', 'Python Programming', 'Mehboob Nagar, Gadi Karkhana ,Sonapur 5th cross ,Dharwad.', '800120593688', 'WhatsApp Image 2021-10-25 at 6.05.34 PM.jpeg', '2SD20ME415.jpg', 'WhatsApp Image 2021-10-25 at 6.05.34 PM.jpeg', 'Male', 1, 5, '2021-10-25 05:37:13'),
(163, 46, 'Ujwal S Bhavikatti', '8007961759', 'bhavikattiujwal@gmail.com', '1997-11-08', 'BE', 'Sanjay Bhavikatti', '8618785314', 'C Programming', 'c/o Y B Suresh Door no 30, MHB colony,Koppadgeri,Dharwad.', '649898103416', 'WhatsApp Image 2021-10-29 at 11.39.14 AM.jpeg', 'WhatsApp Image 2021-10-29 at 11.42.56 AM.jpeg', '', 'Male', 1, 3, '2021-10-28 23:15:29'),
(129, 47, 'Bhavana', '8007961759', 'bhavana.hr123@gmail.com', '1999-07-08', 'BE', 'Padma', '7411438246', 'Digital Media Marketing', 'C/o RavindraKumar,Navneeta Apartment,Flat no 102,Vidyagiri,Sattur Colony,Dharwad.', '743272004438', 'WhatsApp Image 2021-10-30 at 2.49.54 PM.jpeg', 'WhatsApp Image 2021-10-30 at 2.49.54 PM (1).jpeg', 'WhatsApp Image 2021-10-30 at 2.49.54 PM (1).jpeg', 'Female', 1, 15, '2021-10-30 02:44:47'),
(0, 48, 'Rekha Naganagouda Hongal', '8007961759', 'rekhanavalgund@gmail.com', '2001-05-10', 'BE', 'Naganagouda Hongal', '8971718675', 'Python Programming', 'Jawoor,Navalgund', '217205377537', 'Aadhaar card.pdf', 'WhatsApp Image 2021-10-30 at 3.30.27 PM.jpeg', 'WhatsApp Image 2021-10-30 at 3.30.27 PM.jpeg', 'Female', 1, 5, '2021-10-30 03:11:09'),
(161, 49, 'Ayaz kagazi', '8007961759', 'kagaziayaz8186@gmail.com', '1994-05-29', 'Diploma', 'Kifayat Kagazi', '9342584672', '22', 'Hospet Galli,Gokak', '273194712736', 'New Doc 2019-11-18 10.58.05.pdf', 'WhatsApp Image 2021-11-08 at 3.19.56 PM.jpeg', 'New Doc 2019-11-18 10.58.05.pdf', 'Male', 1, 22, '2021-11-08 05:56:47'),
(170, 50, 'Maitri Sulakhe', '8007961759', 'maitrisulakhe99@gmail.com', '1998-09-09', 'BE', 'Shivaran Sulakhe', '9535227400', 'C Programming', 'Krishnadham 2nd cross Daneshwari Nagar, Vidyagiri , Dharwad.', '892912725968', 'WhatsApp Image 2021-11-15 at 7.06.05 PM.jpeg', 'WhatsApp Image 2021-11-15 at 7.06.04 PM.jpeg', 'WhatsApp Image 2021-11-15 at 7.06.05 PM.jpeg', 'Female', 1, 3, '2021-11-15 06:40:25'),
(151, 51, 'Vasudha', '8007961759', 'dadegalvasudha@gmail.com', '1997-07-25', 'BE', 'Pradeep Gouda Patil', '7204722149', 'Web Design and Development', 'Ashirwad Building , Sangolli Rayanna Nagar, Tejaswini Nagar, Dharwad', '323380370701', 'WhatsApp Image 2021-11-24 at 12.19.22 PM.jpeg', 'WhatsApp Image 2021-11-24 at 12.19.21 PM.jpeg', 'WhatsApp Image 2021-11-24 at 12.19.22 PM.jpeg', 'Female', 1, 6, '2021-11-23 23:50:24'),
(169, 52, 'Varsha Patil', '8007961759', 'varshapatil1932002@gmail.com', '2002-03-19', 'BE(3rdsem)', 'Suresh Patil', '9731578423', 'C Programming', 'Drivers Colony, near Rudset, Gandhi Nagar, Dharwad.', '912081305441', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'WhatsApp Image 2021-11-30 at 5.42.21 PM (1).jpeg', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'Female', 1, 3, '2021-11-30 05:13:23'),
(0, 53, 'Netravati Patil', '8007961759', 'netravp28@gmail.com', '2000-09-28', 'BscCS', 'Vighneshwar Gouda', '9880253650', 'Core and Advanced JAVA', 'V V Patil at Shivligeshwar Nagar, Narendra.', '451665350056', 'WhatsApp Image 2021-12-01 at 11.29.08 AM.jpeg', 'WhatsApp Image 2021-12-01 at 11.29.08 AM (1).jpeg', 'WhatsApp Image 2021-12-01 at 11.29.08 AM.jpeg', 'Female', 1, 24, '2021-11-30 23:09:26'),
(185, 54, 'Premkishan Ainapur', '8007961759', '123@gmail.com', '2003-03-25', 'BscCS', 'Rakesh', '9880253650', '3', 'Godavari building 3 rd cross shrinagar Dharwad-580003', '593133166558', 'WhatsApp Image 2021-12-01 at 11.47.27 AM.jpeg', 'WhatsApp Image 2021-12-01 at 11.47.27 AM (1).jpeg', 'WhatsApp Image 2021-12-01 at 11.47.27 AM.jpeg', 'Male', 1, 3, '2021-12-03 07:51:12'),
(186, 55, 'Tarun Karigar', '8007961759', 'tarunkarigar9@gmail.com', '2003-06-27', 'BE', 'Gurusiddappa Karigar', '9964827883', '3', 'Jamadar galli jakani bavi road Dharwad  580001', '582560605911', 'WhatsApp Image 2021-12-01 at 11.55.00 AM.jpeg', 'WhatsApp Image 2021-12-01 at 11.55.00 AM (1).jpeg', 'WhatsApp Image 2021-12-01 at 11.55.00 AM.jpeg', 'Male', 1, 3, '2021-12-03 07:51:31'),
(188, 56, 'Veena Harikantra', '8007961759', 'veenaharikantra4419@gmail.com', '1999-07-10', 'Diploma', 'Vinayak Narayan Harikantra', '9482210498', 'Web Design and Development', 'At Mudangi Gokarna post Tadadi Taluk Kumta Dist Uttara Karnataka', '726287639573', 'WhatsApp Image 2021-12-20 at 10.52.42 AM.jpeg', 'WhatsApp Image 2021-12-20 at 10.54.12 AM.jpeg', 'WhatsApp Image 2021-12-20 at 10.54.12 AM.jpeg', 'Female', 1, 6, '2021-12-19 22:32:11'),
(0, 57, 'Gayatri Naik', '8007961759', 'ngayatri071@gmail.com', '2000-09-08', 'Diploma', 'Renuka Nayak', '6361398658', 'Web Design and Development', 'At Kannegeri post Kannegeri Taluq:Yellapur', '383306130397', 'WhatsApp Image 2021-12-20 at 10.54.25 AM.jpeg', 'WhatsApp Image 2021-12-20 at 10.54.25 AM (1).jpeg', 'WhatsApp Image 2021-12-20 at 10.54.25 AM.jpeg', 'Female', 1, 6, '2021-12-19 22:35:17'),
(0, 58, 'Nagarajkumar. Malatesh. Talawar', '8007961759', 'nagarajpower1432@gmail.com', '2000-07-12', 'PUC', 'Ashok. R. Talawar', '8884054744', 'Advanced Excel Program', 'C/o Ravindra. G. Kundargi Plot no:-63,1st floor Yallamma devi housing society dharwad Dharwad-580004', '995812838204', '16317774155947710734289256290883 - KA27 Creations.jpg', 'nag.jpg', '16317774155947710734289256290883 - KA27 Creations.jpg', 'Male', 1, 2, '2021-12-20 22:27:04'),
(0, 59, 'VINAY V KAMMAR', '8007961759', 'vinaymkammar@gmail.com', '1999-07-17', 'BE', 'V M KAMMAR', '8904614918', '5', 'Malamaddi, dharwad - 580007', '825917165474', 'Screenshot_2021_0726_143251 - VINAY KAMMAR.png', 'vin.png', 'Screenshot_2021_0726_143251 - VINAY KAMMAR.png', 'Male', 1, 5, '2021-12-24 23:51:26'),
(0, 60, 'Mohammed Abrar Rotiwale', '8007961759', 'abrarrotiwale0019@gmail.com', '1998-05-25', 'BPharm', 'Zahir Rotiwale', '9880847042', 'Web Design and Development', 'madhpur, Taj Nagar near AFS hall, Dharwad', '675138317475', 'WhatsApp Image 2022-01-01 at 7.29.22 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.31.22 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.29.22 PM.jpeg', 'Male', 1, 6, '2022-01-01 07:02:07'),
(0, 61, 'Mohammed Suhail Asundi', '8007961759', 'suhailasundi5@gmail.com', '1998-08-01', 'BCA', 'Mehboobsubhani Asundi', '9008775104', 'Web Design and Development', 'Mehboob nagar, Sonapur 3rd cross dharwad', '496434537080', 'WhatsApp Image 2022-01-01 at 7.34.49 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.34.50 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.34.49 PM.jpeg', 'Male', 1, 6, '2022-01-01 07:06:15'),
(0, 62, 'Vanita S Sagrekar', '8007961759', 'vanitasagrekar12@gmail.com', '1999-12-12', 'MCA', 'Sagrekar', '7411612222', 'Web Design and Development', 'Manohar R Pavar, Plot no 32A,Yallakki Settar Colony, Dharwad', '256143017086', 'Aadhar card.pdf', 'Photo .pdf', 'Aadhar card.pdf', 'Female', 1, 6, '2022-01-05 23:05:15'),
(199, 63, 'Vaishnavi Sarjoshi', '8007961759', 'vaishnavisarjoshi18@gmail.com', '2004-05-18', 'PUC', 'Bakulavati Sarjoshi', '9916147617', 'Web Design and Development', 'c/o Suraj Padaki Patil Hanumath nilaya near kariyamma temple Yellakki Shetter colony Dharwad', '786956818821', '1609402206153a55673448_pdf.pdf', 'WhatsApp Image 2022-01-10 at 6.36.54 PM.jpeg', '1609402206153a55673448_pdf.pdf', 'Female', 1, 6, '2022-01-10 06:08:10'),
(0, 64, 'Tasmiya M Shaikh', '8007961759', 'tasmiyashaikh2618@gmail.com', '2000-12-26', 'BCA', 'Mohammad Iqbal Shaikh', '9611157689', 'Placement Assistance', 'Mehboob Nagar near idga Maidan,Dharwad.', '597892743618', 'WhatsApp Image 2022-01-22 at 1.39.33 PM.jpeg', 'WhatsApp Image 2022-01-22 at 1.40.16 PM.jpeg', 'Tasmiya M Shaikh (1).pdf', 'Female', 1, 26, '2022-01-22 01:10:53'),
(0, 65, 'Samuel V Dandin', '8007961759', 'dandinsamuel@gmail.com', '1991-07-13', 'BE', 'VijayKumar dandin', '9845655277', 'Web Design and Development', 'S/o: Vijaykumar Sumitra A.I.R Road Courpalis Compound Dharwad Dharwad Dharwad K.c.park Hubli Dharwad Karnataka 580008', '849618463375', 'Aadhar Card (1).pdf', 'Phtotgraph.pdf', 'Phtotgraph.pdf', 'Male', 1, 6, '2022-01-31 06:42:23'),
(0, 66, 'Spoorthi Kammar', '8007961759', 'spoorthikammar153@gmail.com', '1995-10-28', 'BVoC', 'Vinodha Kammar', '9513269213', 'Web Design and Development', 'Daneshwari Nagar 1st cross chaitanya apartment Dharwad', '302920692448', 'WhatsApp Image 2022-02-01 at 1.18.20 PM.jpeg', 'WhatsApp Image 2022-02-01 at 1.18.20 PM (1).jpeg', 'WhatsApp Image 2022-02-01 at 1.18.20 PM.jpeg', 'Female', 1, 6, '2022-02-01 00:52:21'),
(0, 67, 'Rakesh Naik', '8007961759', 'rakeshnaik7673@gmail.com', '2002-08-13', 'BCA', 'Baburao Naik', '7975743902', 'C Programming', 'Charantimath Garden, Opposite Jai jinendra colony,Hanuman Temple, Dharwad.', '641734867750', 'WhatsApp Image 2022-02-05 at 10.58.22 AM.jpeg', 'WhatsApp Image 2022-02-05 at 10.58.22 AM (1).jpeg', 'WhatsApp Image 2022-02-05 at 10.58.22 AM.jpeg', 'Male', 1, 3, '2022-02-04 22:32:24'),
(205, 68, 'Mahesh Angadi', '8007961759', 'maheshmangadi27@gmail.com', '2000-02-27', 'PUC', 'Malleshappa  Angadi', '7795428836', 'Basics of Computers', 'Shakambari layout 2nd cross behind KMF,Dharwad', '457930908097', 'WhatsApp Image 2022-02-10 at 12.32.12 PM.jpeg', 'WhatsApp Image 2022-02-10 at 12.32.13 PM.jpeg', 'WhatsApp Image 2022-02-10 at 12.32.12 PM.jpeg', 'Male', 1, 1, '2022-02-10 00:03:02'),
(0, 69, 'Mallikarjungouda I Patil', '8007961759', 'mp6418@gmail.com', '1981-07-22', 'MABPED', 'Mallikarjungouda I Patil', '9945216939', 'C Programming', 'At post maradagi, Dharwad-580112', '491476618235', 'WhatsApp Image 2022-02-14 at 11.24.14 AM.jpeg', 'WhatsApp Image 2022-02-14 at 11.24.15 AM.jpeg', 'WhatsApp Image 2022-02-14 at 11.24.14 AM.jpeg', 'Male', 1, 3, '2022-02-13 23:04:50'),
(217, 70, 'Megha Marigoudar', '8007961759', 'meghamarogoudar@gmail.com', '2003-07-04', 'PUC', 'Mallikarjun Marigoudar', '9110686577', 'C Programming', 'Hosa yellapur', '860441087026', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.11.54 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'Female', 1, 3, '2022-02-16 06:44:57'),
(220, 71, 'Fouziya I Byali', '8007961759', 'fouziyabyalli@gmail.com', '1998-05-19', 'BE', 'Imtiyaz Ahmed Byali', '8073446986', 'Web Design and Development', 'Mantur Road, Hubli', '259461952362', 'WhatsApp Image 2022-02-22 at 9.52.16 AM.jpeg', 'WhatsApp Image 2022-02-22 at 9.55.13 AM.jpeg', 'WhatsApp Image 2022-02-22 at 9.52.16 AM.jpeg', 'Female', 1, 6, '2022-02-21 21:26:00'),
(0, 72, 'Pooja Chavoor', '8007961759', 'poojachavoor200b@gmail.com', '2000-11-18', 'BCA', 'Bharati Chavoor', '9008114831', 'Web Design and Development', 'Jaynagar 1st cross, pratiksha building near chi guru library, Dharwad', '875858584132', 'WhatsApp Image 2022-02-23 at 10.34.48 AM (1).jpeg', 'WhatsApp Image 2022-02-23 at 10.34.48 AM (1).jpeg', 'WhatsApp Image 2022-02-23 at 10.34.48 AM (1).jpeg', 'Female', 1, 6, '2022-02-22 22:06:28'),
(224, 73, 'Kiran M Patted', '8007961759', 'kiranpatted072@gmail.com', '2000-08-02', 'PursuingBAEconomics', 'Renuka M Patted', '6361873647', 'Digital Media Marketing', 'Abhyudaya h.no 350,Narayanpur 2nd main,3rd cross Dharwad, 580008', '884671040139', 'WhatsApp Image 2022-02-24 at 4.34.45 PM.jpeg', 'WhatsApp Image 2022-02-24 at 4.34.46 PM.jpeg', 'WhatsApp Image 2022-02-24 at 4.34.45 PM.jpeg', 'Male', 1, 15, '2022-02-24 04:05:18'),
(223, 74, 'Varun Kapali', '8007961759', 'kapalivarun17@gmail.com', '1997-11-01', 'BE', 'Ravindar kapali', '9986447452', 'C Programming', 'Saraswatpur Bhavani Nagar, Dharwad', '899739157613', 'WhatsApp Image 2022-03-01 at 10.22.33 AM.jpeg', 'WhatsApp Image 2022-03-01 at 10.24.08 AM.jpeg', 'WhatsApp Image 2022-03-01 at 10.22.33 AM.jpeg', 'Male', 1, 3, '2022-02-28 21:54:28'),
(225, 75, 'Anoop H C', '8007961759', 'anoophc18@gmail.com', '1999-04-05', 'BSclifescience', 'Geeta H C', '7411085047', 'Basics of Computers', 'Kumareshwar Nagar, Hangal', '867726212988', 'WhatsApp Image 2022-03-07 at 10.57.41 AM.jpeg', 'WhatsApp Image 2022-03-07 at 10.57.40 AM.jpeg', 'WhatsApp Image 2022-03-07 at 10.57.41 AM.jpeg', 'Male', 1, 1, '2022-03-06 22:30:22'),
(230, 76, 'Darshan Jadhav', '8007961759', 'dj006872@gmail.com', '2003-08-10', 'PUC', 'Shankarappa Jadhav', '9902911772', 'Basics of Computers', 'Yadgir,\r\nDharwad', '641035726185', 'darshan aadhar.jpeg', 'darsan photo.jpeg', 'darshan aadhar.jpeg', 'Male', 1, 1, '2022-03-16 22:41:20'),
(233, 77, 'Harsha Jigajinni', '8007961759', 'jigajinniharsha@gmail.com', '2000-02-12', 'BCA', 'Rajeshwari Jigajinni', '8904983048', 'Software Testing', 'Jigajinni Galli,\r\nBazar Road\r\nBailhongal', '678198407136', 'WhatsApp Image 2022-03-21 at 3.46.52 PM.jpeg', 'WhatsApp Image 2022-03-21 at 3.46.52 PM (1).jpeg', 'WhatsApp Image 2022-03-21 at 3.46.52 PM.jpeg', 'Female', 1, 27, '2022-03-21 03:18:29'),
(232, 78, 'Nanda F Karigar', '8007961759', 'nandakarigar18@gmail.com', '1999-04-30', 'BCA', 'Mangala Karigar', '8762105180', 'Software Testing', 'Mahanth Nagar \r\nMatti plot\r\nnear new APMC road\r\nDharwad.', '249266427775', 'WhatsApp Image 2022-03-26 at 7.42.20 PM.jpeg', 'WhatsApp Image 2022-03-26 at 7.42.21 PM.jpeg', 'WhatsApp Image 2022-03-26 at 7.42.20 PM.jpeg', 'Female', 1, 27, '2022-03-26 07:13:18'),
(0, 81, 'Shree Shirahatti', '8007961759', 'shreeshirahatti17@gmail.com', '2012-09-17', 'stdv', 'Shilpa Shirahatti', '9632701996', 'Basics of Computers', 'Shiratti', '334323601222', 'WhatsApp Image 2022-04-05 at 11.18.06 AM.jpeg', 'WhatsApp Image 2022-04-05 at 11.18.06 AM (1).jpeg', 'WhatsApp Image 2022-04-05 at 11.18.06 AM.jpeg', 'Female', 1, 1, '2022-04-05 00:14:50'),
(261, 82, 'Sachit Reddy', '8007961759', 'pbpatil0108@gmail.com', '2012-08-13', 'STD5', 'Dr Preeti Reddy', '9591197196', 'Basics of Computers', 'Dharwad', '925662851909', 'WhatsApp Image 2022-04-13 at 12.21.26 PM (3).jpeg', 'WhatsApp Image 2022-04-13 at 12.21.26 PM (2).jpeg', 'WhatsApp Image 2022-04-13 at 12.21.26 PM (3).jpeg', 'Male', 1, 1, '2022-04-12 23:56:34'),
(265, 83, 'Abhishek Hanabaratti', '8007961759', 'abhishekhanabaratti@gmail.com', '1998-08-12', 'BE(Mech)', 'Manjunath Hanabaratti', '8861520862', 'C Programming', 'C/O chanappa sungar, beerband oni, Old Hubali, Hubballi', '885788448045', 'IMG-20220416-WA0004 (1).jpg', 'IMG-20220416-WA0003.jpg', 'resume-sample.pdf', 'Male', 1, 3, '2022-04-16 01:42:29'),
(264, 84, 'Hrithik Koravar', '8007961759', 'hrithikkoravar@gmail.com', '2000-07-18', 'BE(Mech)', 'Rajshekhar Koravar', '9538610154', 'C Programming', 'CBT, Hubli', '534570628534', 'MY ADHAR CARD 12-19-2021 13.54 (1).pdf', 'WhatsApp Image 2022-04-16 at 2.19.26 PM.jpeg', 'My Resume .pdf', 'Male', 1, 3, '2022-04-16 01:50:19'),
(263, 85, 'Rahul Mathad', '8007961759', 'mathadrahul8055@gmail.com', '1999-08-30', 'BEMech', 'Shivabasavaswami Mathad', '9731741804', '3', 'Near Nevedita School\r\nYalakkishettar Colony Sharadha colony,3rd cross VTC Dharwad, PO : Dharwad Vidyagiri-580004', '875576489235', 'rahul mathad.jpeg', 'rahul mathad.jpg', 'rahul mathad.jpeg', 'Male', 1, 3, '2022-04-16 02:48:49'),
(239, 86, 'Arun Kumar', '8007961759', 'arunkumaremmiyavar@gmail.com', '1994-04-17', 'BCA', 'Shankarappa', '8884357274', 'Web Design and Development', 'SKS Colony 5th main 1st cross Haliyal road dharwad.', '792700866436', 'arun adhar.jpeg', 'arun photo.jpeg', 'arun adhar.jpeg', 'Male', 1, 6, '2022-04-18 00:49:47'),
(266, 87, 'Amrut Haladi', '8007961759', 'haladiamrut@gmail.com', '2002-05-28', 'Bcom', 'Rakesh Wani', '8904136571', 'Data Science', 'Madihal near Gayakwad Kalyan mantap, Dharwad.', '319691627914', 'WhatsApp Image 2022-04-22 at 11.20.29 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.20.27 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.20.27 AM.jpeg', 'Male', 1, 28, '2022-04-21 23:10:06'),
(0, 88, 'Amogh Haladi', '8007961759', 'amogh1525@gmail.com', '2001-04-18', 'Bcom', 'Rakesh Wani', '8904136571', 'Data Science', 'Madihal near Gayakwad Kalyan mantap\r\nDharwad', '801159309613', 'WhatsApp Image 2022-04-22 at 11.29.49 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.29.48 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.29.49 AM.jpeg', 'Male', 1, 28, '2022-04-21 23:14:03'),
(272, 89, 'Yashoda Sogi', '8007961759', 'yashodasogi@gmail.com', '2000-12-08', 'Diploma', 'Ajjappa Sogi', '9980876431', 'Python Programming', 'Near Kannada School\r\nSogi Plot \r\nAmargol', '360035620419', 'yashoda adhar.jpeg', 'yashodha photo.jpeg', 'yashoda adhar.jpeg', 'Female', 1, 5, '2022-04-23 23:42:08'),
(0, 90, 'Aishwarya Kulkarni', '8007961759', 'aishwaryakulkarni012@gmail.com', '2001-12-02', 'Diploma', 'Ravi Kulkarni', '8123633764', 'Python Programming', 'Near TulajaBhavani Temple\r\nShreeRam Nagar Hattikola Dharwad', '971058796031', 'Aishwarya.jpeg', 'Aishwarys ph.jpeg', 'Aishwarya.jpeg', 'Female', 1, 5, '2022-04-23 23:47:21'),
(0, 91, 'Sahana Jadhav', '8007961759', 'sahanajadhav9@gmail.com', '2003-08-08', 'Diploma', 'Sanjay Jadhav', '9900655274', 'Python Programming', 'Omnagar Near ozone hotel Pb road Dharwad', '872361224829', 'sahana.jpeg', 'sahana1.jpeg', 'sahana.jpeg', 'Female', 1, 5, '2022-04-23 23:52:17'),
(0, 92, 'Sneha Sachin Ghorpade', '8007961759', 'snehaghorpade2244@gmail.com', '2001-11-16', 'Diploma', 'Swapna Ghorpade', '9591459356', 'Python Programming', 'ShreeRam Nagar \r\nNear Tuljabhavani Temple\r\nDharwad', '974864000275', 'WhatsApp Image 2022-04-24 at 12.28.47 PM.jpeg', 'WhatsApp Image 2022-04-24 at 12.27.45 PM.jpeg', 'WhatsApp Image 2022-04-24 at 12.27.45 PM.jpeg', 'Female', 1, 5, '2022-04-23 23:59:10'),
(0, 93, 'Megha Kittur', '8007961759', 'kitturmegha006@gmail.com', '2002-07-25', 'Diploma', 'Jyoti Koregannvar', '7411250975', 'Python Programming', 'New APmc \r\nPatreshwar Nagar \r\nDharwad', '778076194812', 'megha adhar.jpeg', 'megha1.jpeg', 'megha adhar.jpeg', 'Female', 1, 5, '2022-04-24 00:03:58'),
(0, 94, 'Nikshita Shetty', '8007961759', 'nikshitacshetty@gmail.com', '2000-08-01', 'Diploma', 'Chandrashekar Shetty', '9901623902', 'Python Programming', 'Mahimailarling Nagar\r\nKalghatgi \r\nDharwad', '270731118617', 'nik1.jpeg', 'nik.jpeg', 'nik1.jpeg', 'Female', 1, 5, '2022-04-24 00:10:32'),
(0, 95, 'Vaishnavi Kamble', '8007961759', 'kkvk2212@gmail.com', '2000-12-22', 'Diploma', 'Kiran Kamble', '9483193800', 'Python Programming', 'SBI Colony\r\nPolice Head quarters\r\nnear new bus stand \r\nDharwad', '946196475990', 'vaish.jpeg', 'vaish1.jpeg', 'vaish.jpeg', 'Female', 1, 5, '2022-04-24 00:14:42'),
(0, 96, 'Vaishnavi Kulkarni', '8007961759', 'vaishnavikulkarni065@gmail.com', '2001-03-09', 'Diploma', 'Vasanthrao Kulkarni', '9900757345', 'Python Programming', 'Kelgeri Road \r\nMahanasa Apartment\r\nDharwad', '623521229872', 'WhatsApp Image 2022-04-23 at 8.42.12 PM.jpeg', 'WhatsApp Image 2022-04-23 at 9.42.24 PM.jpeg', 'WhatsApp Image 2022-04-23 at 8.42.12 PM.jpeg', 'Female', 1, 5, '2022-04-24 23:22:19'),
(0, 97, 'Srushti M Kittur', '8007961759', 'srushtikittur22@gmail.com', '2000-06-22', 'Diploma', 'Sangappa Koti', '7259169680', 'Python Programming', 'Kamakshi Colony Kumareshwar nagar\r\nnear new bus stand Dharwad', '517308402392', 'WhatsApp Image 2022-04-25 at 11.48.32 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.49.37 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.48.32 AM.jpeg', 'Female', 1, 5, '2022-04-24 23:26:54'),
(0, 98, 'Sameen Taj', '8007961759', 'nasirahmmadahmmad@gmail.com', '2001-11-15', 'Diploma', 'Nasir Ahmmad', '9980665837', 'Python Programming', 'Goudally Sirsi Uttara Karnataka', '796125021877', 'WhatsApp Image 2022-04-25 at 11.56.02 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.59.32 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.56.02 AM.jpeg', 'Female', 1, 5, '2022-04-24 23:32:35'),
(0, 99, 'Jyoti C Sutagatti', '8007961759', 'jyoticsutagatti121@gmail.com', '2003-01-12', 'Diploma', 'Chandrakanth sutagatti', '9886463275', 'Python Programming', 'Gokak Mills\r\nSavadatti', '899063057268', 'WhatsApp Image 2022-04-25 at 12.00.43 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.00.42 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.00.43 PM.jpeg', 'Female', 1, 5, '2022-04-24 23:36:42'),
(268, 100, 'Harshita Raju Wani', '8007961759', 'harshitawani@gmail.com', '2001-12-23', 'Bcom', 'Asha Wani', '9449884092', 'Advanced Excel Program', 'H.no 5\r\nAdishakti Nagar\r\nMadihal\r\nDharwad', '615719056243', 'WhatsApp Image 2022-04-25 at 12.17.54 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.18.17 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.17.54 PM.jpeg', 'Female', 1, 2, '2022-04-24 23:51:40'),
(0, 101, 'Chaitra Vijay Pishe', '8007961759', 'chairspise@gmail.com', '2002-04-21', 'Diploma', 'Sunita PIshe', '9449079293', 'Python Programming', 'Mudholkar Compound 2nd cross Chikmaligad Road\r\nDharwad', '641517878717', 'WhatsApp Image 2022-04-25 at 11.49.41 AM.jpeg', 'WhatsApp Image 2022-04-25 at 4.48.01 PM.jpeg', 'WhatsApp Image 2022-04-25 at 11.49.41 AM.jpeg', 'Female', 1, 5, '2022-04-25 22:11:51'),
(0, 102, 'Savita Payappa Jainar', '8007961759', 'savitajainar93@gmail.com', '2002-03-05', 'Diploma', 'Payappa Jainar', '7411131588', 'Python Programming', 'Hosayellapur Hosa Oni\r\nDharwad', '811629813767', 'WhatsApp Image 2022-04-26 at 10.57.10 AM.jpeg', 'WhatsApp Image 2022-04-26 at 11.01.37 AM.jpeg', 'WhatsApp Image 2022-04-26 at 10.57.10 AM.jpeg', 'Female', 1, 5, '2022-04-25 22:31:55'),
(0, 103, 'Divya Venkatesh Raikar', '8007961759', 'divyaraikar1999@gmail.com', '1999-08-01', 'MSc', 'Venkatesh Raikar', '7483431073', 'BCAProject', 'RKC hostel \r\nPavate Nagar\r\nDharwad', '444331170776', 'WhatsApp Image 2022-04-29 at 3.31.28 PM.jpeg', 'WhatsApp Image 2022-04-29 at 3.31.53 PM.jpeg', 'WhatsApp Image 2022-04-29 at 3.31.28 PM.jpeg', 'Female', 1, 14, '2022-04-29 03:07:05'),
(274, 104, 'Safa Arshiya', '8007961759', 'safaarshiya58@gmail.com', '1998-08-17', 'BBA', 'Subhan', '9886595058', 'Digital Media Marketing', 'House#10,2nd Cross, Tungabhadra Coloni, Shree Nagar, Dharwad', '569735428811', 'WhatsApp Image 2022-05-01 at 12.01.36 PM.jpeg', 'WhatsApp Image 2022-05-01 at 12.04.29 PM.jpeg', 'safa-cv.pdf', 'Female', 1, 15, '2022-04-30 23:43:07'),
(279, 105, 'Preeti Pujar', '8007961759', 'preetipujar58@gmail.com', '2001-05-02', 'BCA', 'Laxman Pujar', '9663251870', 'BCAProject', 'Hull Oni,  Ettinagudda, Dharwad, Karnataka, 580005', '515692179057', 'WhatsApp Image 2022-05-07 at 12.01.17 PM.jpeg', 'WhatsApp Image 2022-05-07 at 12.06.14 PM.jpeg', 'Preeti resume.pdf', 'Female', 1, 14, '2022-05-06 23:38:53'),
(278, 106, 'Mangla Patil', '8007961759', 'patilmangla738@gmail.com', '2001-10-14', 'BCA', 'Shivappa Patil', '7829574541', 'BCAProject', 'Chikkmagaligoud Road, Near Adharsh Nagar, Durga Colony Dharwad', '803312068532', 'WhatsApp Image 2022-05-07 at 12.10.29 PM.jpeg', 'WhatsApp Image 2022-05-07 at 12.10.13 PM.jpeg', 'MANGALA. S. PATIL.pdf', 'Female', 1, 14, '2022-05-06 23:45:29'),
(0, 107, 'Shruti Nagesh Halavar', '8007961759', 'shrutihalavar20@gmail.com', '1997-07-20', 'MCOM', 'Nagesh', '8197730496', 'Placement Assistance', 'At: Malligawad Post: Koliwad\r\nTq:Hubli Dist: Dharwad', '626969230079', 'WhatsApp Image 2022-05-07 at 5.36.05 PM.jpeg', 'WhatsApp Image 2022-05-07 at 5.26.58 PM.jpeg', 'Brown Elegant Digital Marketing Specialist Resume (3) (1).pdf', 'Female', 1, 26, '2022-05-07 05:11:38'),
(0, 108, 'Jasmeen Halli', '8007961759', 'jasmeen.halli16@gmail.com', '1999-05-23', 'MCA', 'Heena Halli', '9740881482', 'MCA-Project', 'Kasab Galli, Ilkal Hungund Taluk, Bagalkot', '464046826936', '5da05142-769e-4f12-a88a-c19998e326ba.pdf', 'Untitled design (45).png', 'Jasmeen_resume (3).pdf', 'Female', 1, 14, '2022-05-13 03:16:22'),
(0, 109, 'Umashri Sahadev Hawaldar', '8007961759', 'umashriabc@gmail.com', '1997-07-30', 'MCA', 'Sahadev Hawaldar', '9535947177', 'MCA-Project', 'At post jalapur raibag, belgaum', '556602762238', '1652436822246.pdf', 'WhatsApp Image 2022-05-13 at 3.44.33 PM.jpeg', 'Jasmeen_resume (3).pdf', 'Female', 1, 14, '2022-05-13 03:29:54'),
(0, 110, 'Surekha S Dayal', '8007961759', 'roshnidayal048@gmail.com', '1999-06-01', 'MCA', 'Sharanppa Dayal', '8722578923', 'MCA-Project', 'Bidar', '870068084101', 'Surekhas-aadhar.pdf', 'surekha.jpeg', 'Surekha-Resume.pdf', 'Female', 1, 14, '2022-05-13 03:40:21'),
(0, 111, 'Santosh Chalageri', '8007961759', 'santoshchalageri1999@gmail.com', '1999-04-11', 'MCA', 'Sharanppa Chalageri', '9741742140', 'MCA-Project', 'Kalburgi', '770054132815', 'WhatsApp Image 2022-05-13 at 4.13.05 PM.jpeg', 'WhatsApp Image 2022-05-13 at 4.13.17 PM.jpeg', 'resum.pdf', 'Male', 1, 29, '2022-05-13 03:46:58'),
(0, 112, 'Anuradha Anil Kumar', '8007961759', 'anuradhabhandi50@gmail.com', '2000-11-01', 'MCA', 'Anil Kumar', '8152973030', 'MCA-Project', 'Kalburgi', '675406863436', 'aadhar card.pdf', 'Untitled design (46).png', 'anuradharesume.pdf', 'Female', 1, 29, '2022-05-13 03:55:14'),
(0, 113, 'Vivekanand Parakali', '8007961759', 'vivekanandparakali1998@gmail.com', '1998-10-11', 'BSCnursing', 'Susheela  Byahatti', '7483071010', 'Basics of Computers', 'Yellakki Shettar Colony\r\nDharwad', '662710548034', 'WhatsApp Image 2022-05-13 at 5.15.20 PM.jpeg', 'WhatsApp Image 2022-05-13 at 5.28.46 PM (1).jpeg', 'WhatsApp Image 2022-05-13 at 5.15.20 PM.jpeg', 'Male', 1, 1, '2022-05-13 05:07:44'),
(0, 114, 'Rajeshwari Patil', '8007961759', 'mrajeshwaripatil@gmail.com', '2003-07-26', 'BEsecondsem', 'Mahantesh Patil', '9448223920', 'Data Structures', 'yellakki Shettar Colony\r\nDharwad', '993346866933', 'New doc 10 Nov 2021 22.49 (1).pdf', 'WhatsApp Image 2022-05-13 at 6.50.20 PM.jpeg', 'New doc 10 Nov 2021 22.49 (1).pdf', 'Female', 1, 23, '2022-05-13 06:24:04'),
(254, 115, 'Radha Maraddi', '8007961759', 'dummy@gmail.com', '1987-06-01', 'BA', 'Nigareddy Maraddi', '9591343049', 'AutoCad', 'Near New Bus Stand Shalavai navalgund Dharwad', '648316403736', 'WhatsApp Image 2022-05-16 at 11.14.01 AM.jpeg', 'WhatsApp Image 2022-05-16 at 11.13.10 AM.jpeg', 'WhatsApp Image 2022-05-16 at 11.14.01 AM.jpeg', 'Female', 1, 7, '2022-05-15 22:49:23'),
(0, 116, 'Damini A Sunkad', '8007961759', 'daminisunkad@gmail.com', '2002-12-24', 'BEsecondsem', 'Ashok Sunkad', '9972276274', 'Data Structures', '1st main second cross behind Hero showroom,\r\nVidyagiri Dharwad', '412026211730', 'WhatsApp Image 2022-05-17 at 8.05.55 PM (1).jpeg', 'WhatsApp Image 2022-05-17 at 8.19.05 PM.jpeg', 'WhatsApp Image 2022-05-17 at 8.05.55 PM (1).jpeg', 'Female', 1, 23, '2022-05-17 07:40:43'),
(0, 117, 'Vaishnavi Kulkarni', '8007961759', 'vaishnavikulkarni7524@gmail.com', '1999-10-03', 'MSc', 'Uday Kulkarni', '9731639601', 'MCA-Project', 'plot no 42\r\nRukmini Pandurang niwas\r\nSaityapramodnagar\r\nAthani', '123456789012', 'WhatsApp Image 2022-05-18 at 2.55.43 PM.jpeg', 'WhatsApp Image 2022-05-18 at 2.56.26 PM.jpeg', 'WhatsApp Image 2022-05-18 at 2.55.43 PM.jpeg', 'Female', 1, 29, '2022-05-18 02:29:45'),
(0, 118, 'Akshatha Nyamagowda', '8007961759', 'akshathasn17@gmail.com', '1999-07-22', 'MSC', 'Shreekanth Nyamagowda', '8073044160', 'MCA-Project', 'Taluk Jamkhandi\r\nDist Bagalkot\r\nVillage Kadakol', '625823602824', 'WhatsApp Image 2022-05-21 at 11.18.57 AM (1).jpeg', 'WhatsApp Image 2022-05-21 at 11.18.57 AM.jpeg', 'WhatsApp Image 2022-05-21 at 11.18.57 AM (1).jpeg', 'Female', 1, 29, '2022-05-21 01:16:43'),
(267, 119, 'Laxmi Lamani', '8007961759', 'lamanilakshmi88@gmail.com', '1999-07-31', 'Bsc', 'Hirappa Lamani', '8867601538', 'Basics of Computers', 'Drivers Colony ,\r\n2nd cross Gandhi Nagar\r\nDharwad', '303124669420', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.26.56 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'Female', 1, 1, '2022-05-23 07:00:26'),
(287, 120, 'Akshata T B', '8007961759', 'akshatatb1932@gmail.com', '2002-03-19', 'Bcom', 'Tharanath M B', '9449999242', 'Basics of Computers and Advanced Excel', 'Kaiga Township \r\nKarwar', '123456678990', 'WhatsApp Image 2022-05-27 at 5.15.05 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.15.05 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.15.05 PM.jpeg', 'Female', 1, 31, '2022-05-27 04:49:05'),
(288, 121, 'Pooja Patil', '8007961759', 'patildpooja152@gmail.com', '2001-01-15', 'BE', 'Dundappa Patil', '9901739559', 'C Programming', '2nd  cross defence colony,\r\nDharwad', '930341298326', 'WhatsApp Image 2022-05-27 at 5.25.49 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.26.26 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.25.49 PM.jpeg', 'Female', 1, 3, '2022-05-27 04:59:09'),
(0, 122, 'Tanuja S M', '8007961759', 'tanusm99@gmail.com', '1999-04-04', 'Msc', 'Swamivivekananda', '8884101726', 'MCA-Project', 'Hirekerur Taluk\r\nkalagonda\r\nHaveri\r\nKarnataka', '702545739593', 'WhatsApp Image 2022-05-30 at 1.13.37 PM.jpeg', 'WhatsApp Image 2022-05-30 at 1.13.37 PM (1).jpeg', 'WhatsApp Image 2022-05-30 at 1.13.37 PM.jpeg', 'Female', 1, 29, '2022-05-30 00:49:14'),
(0, 123, 'Naheed Khan Shivalli', '8007961759', 'naheedkhannk51189@gmail.com', '2001-02-10', 'BCA', 'Nasir Khan Shivalli', '7676917940', 'BCAProject', 'Daneswari Nagar,\r\nLidkar Colony\r\nVidyagiri\r\nDharwad.', '245548363493', 'Aadhar card.pdf', 'photo-2.jpg', 'Aadhar card.pdf', 'Female', 1, 14, '2022-05-30 02:58:46'),
(118, 124, 'Najmusahar kalkoti', '8007961759', 'najmusaharkalkoti@gmail.com', '2001-07-22', 'BCA', 'Parveen Kalkoti', '9448822489', 'BCAProject', 'Rasheed-e Shama Manzil\r\nNear Rayar Math\r\nManjunathpur Malmaddi\r\nDharwad', '799157680847', 'najmusahar adhar card.pdf', 'passport.jpg', 'najmusahar adhar card.pdf', 'Female', 1, 14, '2022-05-30 03:01:52'),
(0, 125, 'Riya Revankar', '8007961759', 'dummy@gmail.com', '2004-04-30', 'Grade12', 'Rajeshwari Revankar', '+1 (973) 870-2528', 'C Programming', 'USA', '123456677765', 'Bob the Builder - Lookup question (1).xlsx', 'Bob the Builder - Lookup answer.xlsx', 'Bob the Builder - Lookup answer.xlsx', 'Female', 1, 3, '2022-05-31 05:03:25'),
(0, 126, 'Olivia Dsilva', '8007961759', 'dsilvaolivia391@gmail.com', '2004-03-29', 'PUC', 'Rosalin Dsilva', '9986221716', 'Basics of Computers', 'H.no 1767\r\n63 main cross,\r\nVanasiri Nagar\r\nSattur Dharwad', '474145174668', 'WhatsApp Image 2022-06-13 at 12.50.32 PM (1).jpeg', 'WhatsApp Image 2022-06-13 at 12.55.45 PM.jpeg', 'WhatsApp Image 2022-06-13 at 12.50.32 PM (1).jpeg', 'Female', 1, 1, '2022-06-13 00:26:01'),
(0, 127, 'Anushka Yaligar', '8007961759', 'anushkayaligar@gmail.com', '2004-04-01', 'PUC', 'Rekha Yaligar', '9620133057', 'Basics of Computers', 'c/o \r\nS Y Narvekar\r\nLIG 18\r\nKHB Colony\r\nDharwad.', '617419546366', 'WhatsApp Image 2022-06-13 at 12.51.18 PM.jpeg', 'WhatsApp Image 2022-06-13 at 12.53.35 PM.jpeg', 'WhatsApp Image 2022-06-13 at 12.51.18 PM.jpeg', 'Female', 1, 1, '2022-06-13 00:30:52'),
(0, 128, 'Geeta Mirji', '8007961759', 'geeta.mirji5213@gmail.com', '2001-06-06', 'BSc(PMS)', 'Mallikarjuna Mirji', '9741321201', 'Basics of Computers', 'Venkateshwara colony\r\nnear Raghvendra temple\r\nLingasugur', '677159989867', 'adhar.jpeg', 'photo.jpeg', 'adhar.jpeg', 'Female', 1, 1, '2022-06-22 05:22:29'),
(0, 129, 'Sumedha Deshpande', '8007961759', 'sumedha.s.d.sd@gmail.com', '2001-06-14', 'BSc(PMS)', 'Shrinivas Deshpande', '9845110356', 'Basics of Computers', 'Venkateshwara Colony\r\nNear Raghavendra temple\r\nLingasugur', '758811044948', 'sumedha.jpeg', 'sumedhapoto.jpeg', 'sumedhapoto.jpeg', 'Female', 1, 1, '2022-06-22 05:35:20'),
(0, 130, 'Sooryanarayan Bhat', '8007961759', 'sooryabhat98@gmail.com', '1998-08-01', 'MSc', 'Savita Bhat', '8660111532', 'MCA-Project', 'Daneshwar Nagar\r\nDharwad', '301665883577', 'soorya.jpeg', 'sooryaph.jpeg', 'soorya.jpeg', 'Male', 1, 29, '2022-06-23 03:21:44'),
(314, 131, 'Prajwal M Salimath', '8007961759', 'prajwalsalimath2004@gmail.com', '2004-02-17', 'PUC', 'Mantesh Salimath', '8123905322', 'C Programming', 'Banashri Layout Behind KHK hostel, Yalakki  Shetter Colony, Dharwad', '691628123903', 'WhatsApp Image 2022-06-26 at 12.54.32 PM.jpeg', 'WhatsApp Image 2022-06-26 at 12.54.33 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 3, '2022-06-26 00:27:17'),
(315, 132, 'prajwal s karigoudar', '8007961759', 'prajwalkarigoudar163@gmail.com', '2004-03-16', 'PUC', 'Sadanandgouda', '9980114319', 'C Programming', 'Maruti Nagar VTC Nargund Gadag', '813759414594', 'WhatsApp Image 2022-06-26 at 1.04.08 PM.jpeg', 'WhatsApp Image 2022-06-26 at 1.04.08 PM (1).jpeg', 'resume-sample.pdf', 'Male', 1, 3, '2022-06-26 00:35:28'),
(0, 133, 'Patadayya G Chikkamath', '8007961759', 'patadayyachikkamath9089@gmail.com', '2004-01-30', 'PUC', 'Gangadhar Chikmath', '9481944773', 'C Programming', 'Gandhi Nagar 2nd cross\r\nDharwad', '452175791046', 'WhatsApp Image 2022-06-26 at 1.11.29 PM (1).jpeg', 'WhatsApp Image 2022-06-26 at 1.11.28 PM (1).jpeg', 'WhatsApp Image 2022-06-26 at 1.11.29 PM (1).jpeg', 'Male', 1, 3, '2022-06-27 21:16:17'),
(0, 134, 'Goudappa Patil', '8007961759', 'goudappapatil921@gmail.com', '2004-03-04', 'PUC', 'Ninganagouda Patil', '9686306092', 'C Programming', 'Vivekanand Navkar\r\nDharwad', '272751798701', 'WhatsApp Image 2022-06-30 at 11.04.03 AM.jpeg', 'WhatsApp Image 2022-06-30 at 11.04.41 AM.jpeg', 'WhatsApp Image 2022-06-30 at 11.03.36 AM.jpeg', 'Male', 1, 3, '2022-06-29 22:37:33'),
(0, 135, 'Ibrahim Sureban', '8007961759', 'smd.ibrahimsn46@gmail.com', '1991-11-27', 'BE(CIVIL)', 'Mohammad Sureban', '8861393316', 'Python Programming', 'Ward 5 Kotwal Peth, Irkal, Bagalkot', '626285251141', 'WhatsApp Image 2022-06-30 at 7.22.53 PM.jpeg', 'WhatsApp Image 2022-06-30 at 7.22.56 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 5, '2022-06-30 06:59:02'),
(0, 136, 'Modinsab', '8007961759', 'modinsab.jigalur024@gmail.com', '1994-08-07', 'BE(CIVIL)', 'Yamanurasab jigalur', '9901665208', 'Python Programming', 'Mandina housing colony Gandhi Nagar\r\ndharwad', '442814540695', 'WhatsApp Image 2022-06-30 at 7.33.17 PM.jpeg', 'WhatsApp Image 2022-06-30 at 7.32.33 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 5, '2022-06-30 07:11:41'),
(123, 137, 'Ashwini Pujari', '8007961759', 'ashwinipujari333@gmail.com', '1999-12-25', 'MBA', 'Shakuntala Pujari', '8197284719', 'Advanced Excel Program', 'KPC colony Ganeshgudi\r\n33/1', '309781314665', 'WhatsApp Image 2022-07-01 at 3.11.42 PM.jpeg', 'WhatsApp Image 2022-07-01 at 3.14.35 PM.jpeg', 'WhatsApp Image 2022-07-01 at 3.11.42 PM.jpeg', 'Female', 1, 2, '2022-07-01 02:44:51');
INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`, `Gender`, `Feesstatus`, `Courseid`, `createddate`) VALUES
(0, 138, 'Prasanna Teja O', '8007961759', 'dummy@gmail.com', '2005-10-31', 'BA', 'Umesh O', '8722935790', 'Basics of Computers', 'Ward No 14 House no 254\r\nOld Chapparadahalli\r\nNear govt school\r\nSandur\r\nBellary', '578397427996', 'WhatsApp Image 2022-07-02 at 3.31.17 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.30.41 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.31.17 PM.jpeg', 'Male', 1, 1, '2022-07-02 03:06:26'),
(0, 139, 'Chaitanya O', '8007961759', 'dummy@gmail.com', '2004-09-02', 'BA', 'Umesh O', '8722935790', 'Basics of Computers', 'Ward no 14 House o 254\r\nOld Chapparadahalli\r\nNear Govt school\r\nSandur\r\nBellay\r\nKarnataka', '337894330293', 'WhatsApp Image 2022-07-02 at 3.31.57 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.30.13 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.31.57 PM.jpeg', 'Female', 1, 1, '2022-07-02 03:11:17'),
(0, 140, 'Manisha Hatalageri', '8007961759', 'manishahatalageri@gmail.com', '2001-01-05', 'BE', 'Mallappa Hatalageri', '9482000617', 'Core Java', 'Gandhinagar\r\nDrivers Colony\r\ndharwad', '906245206571', '20220629_200233 (1).docx', 'WhatsApp Image 2022-07-06 at 11.34.12 AM.jpeg', 'Manisha Hatalageri_KLE Tech University-2 (1).docx', 'Female', 1, 19, '2022-07-05 23:45:40'),
(313, 141, 'Umesh Channayya Sheelimath', '8007961759', 'umeshsheelimath@gmail.com', '2003-07-06', 'BA(2ndSEM)', 'Channayya Maharudrayya Sheelimath', '6363510243', 'C Programming', '#1293\r\nJadar Pete\r\nAt Hooli\r\nTq Savadatti\r\nHooli\r\nBelgaum-591126', '238126107872', 'WhatsApp Image 2022-07-06 at 1.34.22 PM.jpeg', 'WhatsApp Image 2022-07-06 at 1.35.12 PM.jpeg', 'WhatsApp Image 2022-07-06 at 1.34.22 PM.jpeg', 'Male', 1, 3, '2022-07-06 01:09:59'),
(0, 142, 'Megha Marigoudar', '8007961759', 'meghamarogoudar@gmail.com', '2003-07-04', 'PUC', 'Mallikarjun Marigoudar', '9110686577', 'C++ Programming', 'Hosa yellapur', '860441087026', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.11.54 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'Female', 1, 4, '2022-07-07 02:15:01'),
(0, 143, 'Ramesh G B', '8007961759', 'rameshgb.palb1105@gmail.com', '1990-01-15', 'PHD', 'Basavaraj Appa', '95358 79633', 'Python Programming', 'Channel Road, Bhadravathi, Sanyyasi Kodmaggi Hosur, Shivamongga', '308713793202', 'New Doc 2019-04-22 16.51.23 (1).pdf', 'Untitled design (16).png', 'CV  for company.pdf', 'Male', 1, 5, '2022-07-07 08:16:40'),
(317, 144, 'Vishwa M Badachi', '8007961759', 'manojbadachi@gmail.com', '2004-03-23', 'PUC', 'Manoj Badachi', '9845036526', 'C Programming', 'Suveer Building, Shivaji Nagar, Y S Colony, Dharwad', '390187953088', 'WhatsApp Image 2022-07-08 at 6.06.31 PM.jpeg', 'WhatsApp Image 2022-07-08 at 6.06.30 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 3, '2022-07-08 05:59:36'),
(0, 145, 'M Rahul', '8007961759', 'yashwanthyash9909@gmail.com', '1997-03-30', 'BSc(CBZ)', 'Ramesh', '8431493095', 'Digital Media Marketing', 'Near Ashwini Nagar\r\n2nd cross\r\nBhangawanth goudar', '711856517209', 'WhatsApp Image 2022-07-09 at 3.21.22 PM.jpeg', 'WhatsApp Image 2022-07-09 at 3.21.37 PM.jpeg', 'WhatsApp Image 2022-07-09 at 3.21.22 PM.jpeg', 'Male', 1, 15, '2022-07-09 02:55:50'),
(0, 146, 'Nishmitha Poojari', '8007961759', 'nishmitha.c.pujari@gmail.com', '1999-05-20', 'MBA', 'Chandrashekhar Poojari', '9844323157', 'Advanced Excel Program', 'Plot bo 13/5\r\nBanashankeri nilaya\r\nBaligar Hakkal Street \r\nBhaidevarakoppa \r\nHubballi', '899676609195', 'IMG20220712122604.jpg', 'WhatsApp Image 2022-07-12 at 12.29.12 PM.jpeg', 'IMG20220712122604.jpg', 'Female', 1, 2, '2022-07-12 00:02:55'),
(322, 147, 'Atharv Bennur', '8007961759', 'atharvbennur@gmail.com', '2006-04-25', 'PUC(1)', 'Manoj Bennur', '9845678331', 'C Programming', 'Hallikeri Chal\r\nNear KC park\r\nDharwad', '811764297263', 'atharv.pdf', 'atharv photo.pdf', 'atharv.pdf', 'Male', 1, 3, '2022-07-12 02:18:15'),
(0, 148, 'Vijeta Kalal', '8007961759', 'kalalvijeta1999@gmail.com', '1999-11-25', 'MBA', 'Yalappa Kalal', '9844764716', 'Advanced Excel Program', 'Jannat Nagar 8th cross,\r\nNear Laxmi Nagar,\r\nDharwad', '123456777777', 'WhatsApp Image 2022-07-13 at 12.25.37 PM.jpeg', 'WhatsApp Image 2022-07-13 at 12.25.37 PM.jpeg', 'WhatsApp Image 2022-07-13 at 12.25.37 PM.jpeg', 'Female', 1, 2, '2022-07-13 00:00:05'),
(0, 149, 'Kalavati Mallapur', '8007961759', 'kalavatimallapur65@gmail.com', '2004-04-22', 'PUC', 'Kumarayya Mallapur', '9945081536', 'Basics of Computers', 'dist Gadag\r\nTaluk Nargund\r\nAt post Hadli', '699405441231', 'WhatsApp Image 2022-07-14 at 12.22.16 PM.jpeg', 'WhatsApp Image 2022-07-14 at 12.22.15 PM.jpeg', 'WhatsApp Image 2022-07-14 at 12.22.16 PM.jpeg', 'Female', 1, 1, '2022-07-13 23:57:18'),
(0, 150, 'Laxmi Lamani', '8007961759', 'lamanilakshmi88@gmail.com', '1999-07-31', 'Bsc', 'Hirappa Lamani', '8867601538', 'Advanced Excel Program', 'Drivers Colony ,\r\n2nd cross Gandhi Nagar\r\nDharwad', '303124669420', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.26.56 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'Female', 1, 2, '2022-07-18 05:32:54'),
(0, 151, 'Varsha Patil', '8007961759', 'varshapatil1932002@gmail.com', '2002-03-19', 'BE(3rdsem)', 'Suresh Patil', '912081305441', 'Python Programming', 'Drivers Colony, near Rudset, Gandhi Nagar, Dharwad.', '912081305441', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'WhatsApp Image 2021-11-30 at 5.42.21 PM (1).jpeg', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'Female', 1, 5, '2022-07-19 00:20:49'),
(329, 152, 'Spoorti B Patil', '8007961759', 'spoortipatil3@gmail.com', '2000-04-11', 'BSclifescience', 'Geeta B Patil', '7411478149', 'Basics of Computers', 'maratha colony\r\nnear Durga devi temple\r\nDharwad', '433692220745', '', 'WhatsApp Image 2022-07-30 at 3.25.15 PM.jpeg', 'WhatsApp Image 2022-07-30 at 3.26.45 PM.jpeg', 'Female', 1, 1, '2022-07-30 02:57:03'),
(328, 153, 'Komal Giriyappanavar', '8007961759', 'komalgiri888@gmail.com', '1998-12-06', 'BSclifescience', 'Vivekanand Giriyappanavar', '9611510885', 'Basics of Computers', 'Guruganjikoppa Goudar oni\r\nDharwad', '813928165373', 'WhatsApp Image 2022-07-30 at 3.26.05 PM.jpeg', 'WhatsApp Image 2022-07-30 at 3.25.44 PM.jpeg', 'WhatsApp Image 2022-07-30 at 3.25.44 PM.jpeg', 'Female', 1, 1, '2022-07-30 03:02:57'),
(326, 154, 'Chandrashekhar Ambanna', '8007961759', 'chadruambanna@gmail.com', '2000-11-11', 'BE Mech', 'Ambanna', '9740485906', 'Core Java', 'Chitapur Gulbarga', '741632411610', 'adhar card.pdf', 'WhatsApp Image 2022-07-31 at 1.49.29 PM.jpeg', 'Chandrashekar_Ambalgi.pdf', 'Male', 1, 19, '2022-07-31 01:21:20'),
(0, 155, 'Afnan Arif Gudagi', '8007961759', 'afnangudgadi@gmail.com', '2004-06-08', 'PUC', 'Arif Gudagi', '8762889436', 'C Programming', 'Jayanagar Saptapur\r\nDharwad', '661110238382', 'WhatsApp Image 2022-08-01 at 11.13.09 AM (1).jpeg', 'WhatsApp Image 2022-08-01 at 11.13.09 AM (2).jpeg', 'WhatsApp Image 2022-08-01 at 11.13.09 AM (1).jpeg', 'Female', 1, 3, '2022-07-31 22:47:16'),
(327, 156, 'Nivedita Panchagavi', '8007961759', 'niveditakrishnapanchgavi@gmail.com', '2002-10-10', 'PUC', 'Krishna Panchgavi', '7829526006', 'C Programming', 'Rajatgiri\r\nDharwad', '517075950095', 'WhatsApp Image 2022-08-01 at 11.49.55 AM (1).jpeg', 'WhatsApp Image 2022-08-01 at 11.50.56 AM.jpeg', 'WhatsApp Image 2022-08-01 at 11.49.55 AM (1).jpeg', 'Female', 1, 3, '2022-07-31 23:23:03'),
(325, 157, 'Abhishek Patil', '8007961759', 'abhishekpatil1501@gmail.com', '2001-09-15', 'BEseventhsem', 'Prabhanna Patil', '9972428347', 'Core Java', 'C/o Prabhanna Patil\r\nnear Hanuman Temple\r\nRaichur', '282928577807', 'WhatsApp Image 2022-08-01 at 6.02.56 PM.jpeg', 'WhatsApp Image 2022-08-01 at 5.59.51 PM.jpeg', 'ABHISHEK PATIL RESUME.pdf', 'Female', 1, 19, '2022-08-01 05:35:05'),
(332, 158, 'Kavya Yemmetti', '8007961759', 'kavyarani1256@gmail.com', '2002-04-17', 'BE3year', 'Mahaveer Yemmetti', '8904842778', 'C Programming', 'Shettar colony\r\nIndra Nagar\r\nH.no 44/b\r\nPadmashree Nilaya\r\nDharwad', '246288337550', 'WhatsApp Image 2022-08-04 at 11.21.29 AM.jpeg', 'WhatsApp Image 2022-08-04 at 11.24.34 AM.jpeg', 'WhatsApp Image 2022-08-04 at 11.21.29 AM.jpeg', 'Female', 1, 3, '2022-08-03 22:58:30'),
(343, 159, 'OM Ashok Gaikwad', '8007961759', 'omg46929@gmail.com', '2004-05-10', 'PUC', 'Ashok G Gaikwad', '990041791', 'C Programming', 'Gandhi nagar 1st cross\r\nDharwad', '313895695333', 'AADHAR CARD.pdf', 'WhatsApp Image 2022-08-13 at 12.15.21 PM.jpeg', 'AADHAR CARD.pdf', 'Male', 1, 3, '2022-08-12 23:45:55'),
(0, 160, 'Prasanna Teja O', '8007961759', 'dummy@gmail.com', '2005-10-31', 'PUC', 'Umesh O', '8722935790', 'C Programming', 'Ward No 14 House no 254\r\nOld Chapparadahalli', '578397427996', 'prasanna adhar.jpeg', 'prasanna.jpeg', '', 'Male', 1, 3, '2022-08-16 04:29:12'),
(0, 161, 'Pooja Nekar', '8007961759', 'poojanekar14@gmail.com', '2005-02-14', 'PUC', 'Dr Mahantesh Nekar', '9448515257', 'C Programming', 'Siri 139\r\nD/3,\r\n\r\n3rd cross near Balatripura Temple, Backside KMF,Shakambari nagar \r\nDharwad', '356630258464', 'pooja nekar adhar.pdf', 'pooja nekar.jpeg', 'pooja nekar adhar.pdf', 'Female', 1, 3, '2022-08-21 22:36:13'),
(348, 162, 'Karthik Pattar', '8007961759', 'karthikpattar123@gmail.com', '2006-04-10', 'PUC', 'Krishna Pattar', '8088721667', 'Basics of Computers and Advanced Excel', 'Bijapur \r\nMuddebihal\r\nVidyanagar', '244319650515', 'WhatsApp Image 2022-08-22 at 3.30.45 PM.jpeg', '2022-07-03-21-38-00-948.jpg', 'WhatsApp Image 2022-08-22 at 3.30.45 PM.jpeg', 'Male', 1, 31, '2022-08-22 03:07:35'),
(0, 163, 'Haripriya Mallareddy', '8007961759', 'haripriyamallareddy@gmail.com', '2004-01-24', 'PUC', 'Prakash Mallareddy', '9480663311', 'C Programming', '15/1\r\nRoad no 3\r\nSaraswatpur \r\nDharwad', '500010149567', 'WhatsApp Image 2022-08-21 at 6.40.23 PM.jpeg', 'WhatsApp Image 2022-08-21 at 6.40.24 PM.jpeg', 'WhatsApp Image 2022-08-21 at 6.40.23 PM.jpeg', 'Female', 1, 3, '2022-08-22 05:19:36'),
(335, 164, 'Achyut Mutalik', '8007961759', 'achutmutlik15@gmail.com', '2000-02-07', 'BE(Mech)', 'Raghvendra Mutalik', '9663251491', 'Python Programming', 'Sri Ram Nagar\r\nAttikolla\r\nDharwad', '422670371832', 'WhatsApp Image 2022-08-22 at 6.52.36 PM.jpeg', 'WhatsApp Image 2022-08-22 at 6.53.37 PM.jpeg', 'WhatsApp Image 2022-08-22 at 6.52.36 PM.jpeg', 'Male', 1, 5, '2022-08-22 06:31:04'),
(336, 165, 'Samarath Shetty', '8007961759', 'samarthshetty3999@gmail.com', '1997-11-12', 'BE(Mech)', 'S Prabhakar Shetty', '9901063999', 'Python Programming', 'Flat no 201/202\r\nKeshav Residence\r\nChidambar nagar\r\nGandhi Nagr Dharwad', '813793224699', 'Aadhaar card (samarth).pdf', 'WhatsApp Image 2022-08-22 at 6.53.47 PM.jpeg', 'Aadhaar card (samarth).pdf', 'Male', 1, 5, '2022-08-22 06:37:53'),
(342, 166, 'prasanna lakshmi', '8007961759', 'prasanna.bellary@gmail.com', '1983-07-03', 'BE', 'Ramaswamy D', '8308835468', 'Python Programming', 'Dodda basaveshwar Niwas\r\n2nd cross Vidyagiri\r\nDharwad', '459271066500', 'WhatsApp Image 2022-08-22 at 7.55.07 PM.jpeg', 'WhatsApp Image 2022-08-22 at 7.57.44 PM.jpeg', 'WhatsApp Image 2022-08-22 at 7.55.07 PM.jpeg', 'Female', 1, 5, '2022-08-22 07:28:57'),
(356, 167, 'Yusuf SH', '8007961759', 'yusufbiohalkarni@gmail.com', '1998-06-03', 'Bsc', 'Sayed basha Halkarni', '9740692004', 'Digital Media Marketing', 'C/o Sayed basha Halkarni\r\nShaheen manzil hublikar plot sadhankeri ,police head quarter,Dharwad', '431362858197', 'WhatsApp Image 2022-08-26 at 5.37.01 PM.jpeg', 'WhatsApp Image 2022-08-26 at 5.37.01 PM (1).jpeg', 'WhatsApp Image 2022-08-26 at 5.37.01 PM.jpeg', 'Male', 1, 15, '2022-08-26 05:11:43'),
(344, 168, 'Joseph Dsouza', '8007961759', 'josephdsouza7411@gmail.com', '1993-12-22', 'Diploma', 'Louis Dsouza', '9342825255', 'Digital Media Marketing', 'Beena Dsouza\r\nBehind horeb church sriramnagar dharwad 580007', '453208880309', 'WhatsApp Image 2022-08-30 at 12.45.04 PM.jpeg', 'WhatsApp Image 2022-08-30 at 12.45.09 PM.jpeg', 'WhatsApp Image 2022-08-30 at 12.45.04 PM.jpeg', 'Male', 1, 15, '2022-08-30 00:20:51');

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
  `businessContact` varchar(50) NOT NULL,
  `businessTagLine` varchar(500) NOT NULL,
  `businessEmail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `businessGSTIN` varchar(15) DEFAULT NULL,
  `logoImage` varchar(100) DEFAULT NULL,
  `aboutBusiness` longtext NOT NULL,
  PRIMARY KEY (`businessId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `businessdetails`
--

INSERT INTO `businessdetails` (`businessId`, `businessName`, `businessAddress`, `businessContact`, `businessTagLine`, `businessEmail`, `password`, `createdDate`, `businessGSTIN`, `logoImage`, `aboutBusiness`) VALUES
(1, 'DharwadHubballiTutor', 'J G Nippani Complex,\r\nBeside SBI Gandhinagar,\r\nDharwad.', '+919741237334', 'Learn Transform Succeed', 'info@dharwadhubballitutor.com', '', '2022-02-05 12:24:16', '22AAAAA0000A1Z5', 'logo1.webp', '<p><strong>DharwadHubballiTutor </strong>is one of the fastest-growing and most esteemed Software Training Institutions in Dharwad.Â \n<br />\nÂ \n<br />\n We offer training right from basics to advanced job-oriented courses. Which includes: \n<br />\n \n<br />\n</p>\n<h3><strong>Web Design and Development as Full Stack course</strong></h3>\n<p>\n<br />\nHere the students will enjoy learning the front-end technologies like HTML-5, CSS-3, JavaScript, jQuery, Bootstrap a mobile-first framework, and backend technologies like PHP, Python with Django, ASP .NET, Advanced JAVA with Servlets and JSP, and much more. \n<br />\n \n<br />\n</p>\n<h3><strong>Data Science with python programming </strong></h3>\n<p>\n<br />\n This is a well-planned course for data science aspirants. Here in this course, the modules below are crafted to keep the young mind into consideration. Python programming. Statistics. Machine learning (Supervised and unsupervised). Deep learning (Artificial neural networks and basics of transfer learning). Intro to Natural language processing. Database basic operations. \n<br />\n \n<br />\n</p>\n<h3><strong>Digital Media Marketing course.</strong></h3>\n<p>\n<br />\n This course is designed for students looking to build their careers in digital marketing and entrepreneurship, and who would like to grow their businesses digitally. In this course below mentioned concepts are covered in depth. \n<br />\n \n<br />\n</p>\n<ol>\n<li>Social Media Marketing.</li>\n<li>Search Engine Optimization.</li>\n<li>Search Engine Marketing.</li>\n<li>Email Marketing.</li>\n<li>SMS Marketing.</li>\n<li>WhatsApp Marketing.</li>\n<li>Content Creation.</li>\n<li>Website Development using WordPress.</li>\n<li>Affiliate Marketing.</li>\n<li>How to Create Creative Graphics</li>\n</ol>\n<p>\n<br />\n</p>\n<h3><strong>Software Testing with Java and Selenium Framework.</strong></h3>\n<p>\n<br />\n</p>\n<h3><strong>Programming Course.</strong></h3>\n<p>\n<br />\n</p>\n<h3><strong>Basics Of Computer.</strong></h3>\n<p>\n<br />\n</p>\n<h3><strong>Advanced Excel.</strong></h3>\n<p>\n<br />\n</p>\n<h3><strong>Civil Design Software.</strong></h3>\n<p>\n<br />\n</p>\n<h3><strong>Mechanical Design Software.</strong></h3>\n<p>\n<br />\n \n<br />\n Which has helped a lot of our alumni to achieve their dreams. \n<br />\n \n<br />\n Our Trainers are well qualified with a minimum of 3+ years of Industry experience in the same field as the course aligned.Â \n<br />\n \n<br />\n Also, we offer software development, web development, and digital marketing services, which are helping a lot of businesses to achieve their goals on the business front. \n<br />\n \n<br />\n We have the vision to collaborate with the two cities Dharwad and Hubballi, in terms of Education, Placement opportunity, Internships, and Service Providers. To start two-way contact and communication between the two cities, in a view to using each other\'s resources to convert our city into a smart city. \n<br />\n</p>');

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
  `source` varchar(50) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `Trainings` varchar(40) NOT NULL,
  `Internship` varchar(40) NOT NULL,
  `Demo` varchar(100) NOT NULL,
  `Services` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=377 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `Email`, `Phone`, `Qualification`, `source`, `branch`, `Trainings`, `Internship`, `Demo`, `Services`, `status`) VALUES
(1, 'Gauri Gatade', 'gomzyr3@gmail.com', '8007961759', '', '', '', 'Basics of Computers', 'SELECT YOUR INTEREST', '', '', 0),
(3, 'Palla Hokarni', 'pallavihokrani20@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 0),
(4, 'Jagadeesh s kalappanavar', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 0),
(5, 'Sushmita R Bhope', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(6, 'Hitesh B Shetty', 'hiteshshetty123@gmail.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(7, 'Sindhu B', 'sindhuchandu689@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(8, 'Shankarmanju', 'shankarmanju543@gmail.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(9, 'Akshata Neeralagi', 'akshataneeralagi717@gmail.com', '8007961759', '', '', '', 'Cloud Computing', '', '', '', 1),
(10, 'Vishwanath Hubballi', 'vishwahubli2001@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(74, 'Aaliya Jamadar', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(12, 'Irfan Shivalli', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(13, 'Pooja Nerlekar', 'poojanerlekar@yahoo.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(14, 'Ankita', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(15, 'Shanawaz Mallik', '', '8007961759', '', '', '', 'Digital Marketing', '', '', '', 1),
(16, 'Lohit Adli', 'lohit07@gmail.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(17, 'Fardeen Gudgi', 'fardeen687@gmail.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(73, 'fari', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(72, 'Anand SDM', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(71, 'Suresh A', 'sureshnoor2@gmail.com', '8007961759', '', '', '', 'Java Selenium', '', '', '', 1),
(23, 'Shravan S', 'samanishravan@gmail.com', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(24, 'Sahana', '', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(25, 'Aishwarya', '', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(26, 'Akshay', '', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(27, 'Vinay Kammar', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(28, 'Abid Ali', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(29, 'Kaiser', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(30, 'Shivanand', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(31, 'Ismail A Bagewadi', 'ismailbagewadi123@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(32, 'Sagar Athani', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(33, 'Sudha Naik', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(34, 'Muttu', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(35, 'Pavan', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(36, 'Padmanabha Kulkarni', '', '8007961759', '', '', '', 'Android Development', '', '', '', 1),
(37, 'Mallikarjuna', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(38, 'Navreen', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(39, 'Rajat S kale', 'rajwahi97@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(40, 'Manjula H', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(41, 'Kiran G S', 'kiran5hgs@gmail.com', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(42, 'Arun S', 'arunshettarkr@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(43, 'Tousif Raichur', 'tousifraichur@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(44, 'Chetan', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(45, 'Shubham', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(46, 'Kushal C harti', 'kushal007harthi@gmail.com', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(47, 'Sachin Honnatti', 'honnattisachin@gmail.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(48, 'Sooraj', 'soorajsharawad@gmail.com', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(49, 'Shripad V Gombi', 'shripadgombi@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(50, 'Shreyas Potdar', 'shreyasnpzod@gmail.com', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(51, 'Vithoba k', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(52, 'Hasen', '', '8007961759', '', '', '', 'Programming Languages', '', '', '', 0),
(53, 'Mounesh', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(54, 'Santosh', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(55, 'Mahantesh N K', 'mahanteshnk220@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(56, 'Harish P', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(57, 'Sharath', 'dev9sdn@gmail.com', '8007961759', '', '', '', 'Digital Marketing', '', '', '', 1),
(58, 'Priyanka', 'priyanka.ambli123@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(59, 'Rakesh', '', '8007961759', '', '', '', 'School Academics', '', '', '', 1),
(60, 'Shashikanth', 's.biradar1980@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(61, 'Praful N K', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(62, 'Vadiraj Arabatti', 'vadirajarabatti@gmail.com', '8007961759', '', '', '', 'Programming Languages', '', '', '', 1),
(63, 'Vaibhav', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(64, 'Mallikarjun s Kudlanavar', '', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(65, 'Ganan R B', 'gaganbelurvath@gmail.com', '8007961759', '', '', '', 'Civil Design Softwares', '', '', '', 1),
(66, 'Rohit', 'rohitraichur6@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(67, 'Bhagyashree Katti', 'bhagyashreemkatti@gmail.com', '8007961759', '', '', '', '', '', '', 'WEB DESIGNING AND DEVELOPMENT', 1),
(68, 'Ravi S Murnal', 'ravi.murnal2@gmail.com', '8007961759', '', '', '', '', '', '', '', 1),
(69, 'Amogh', 'amoghak@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(70, 'Omkar', 'omkartikare55@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(75, 'JesseMaw', 'iooxve.rtris@gmail.com', '8007961759', '', '', '', '', 'Digital Marketing', '', '', 1),
(76, 'Taheer Husain', '', '8007961759', '', '', '', 'Revit Designing Software', '', '', '', 0),
(77, 'Kartik', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(78, 'Jagadeesh', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(79, 'Kiran Sg', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(80, 'Bheemanagouda Patil', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(81, 'Nagveni', '', '8007961759', '', '', '', 'BCAProject', '', '', '', 0),
(82, 'Shivraj Bailabalad', 'shivrajlb278@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 1),
(83, 'JesseMaw', 'i.ooxv.e.rt.r.i.s@gmail.com', '8007961759', '', '', '', '', 'Python Programming', '', '', 1),
(84, 'Adarsh Kotagi', 'adarshkotagi1998@gmail.com', '8007961759', 'B.E', '', '', '', 'Web Designing and Development', '', '', 1),
(85, 'Sainath Mangalgatti', '', '8007961759', '', '', '', 'Tally and GST', '', '', '', 1),
(86, 'Harshad Chinnur', 'harshadahamed1999@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(87, 'Nagaraj kubsad', 'nagarajkubsad488@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 1),
(88, 'Guruprasad Kolekar', 'guruprasadgurusk@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 1),
(89, 'Suma Gouda', '', '8007961759', '', '', '', 'BCAProject', '', '', '', 1),
(90, 'Kasturi Chandrashekhar', 'ravikumarsk26@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(91, 'Charishma', 'charishma2010@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(92, 'Dr Mahantesh Angai', 'angadimantu@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(93, 'Veeresh Baligar', 'veeru.baligar@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(94, 'Hemanth saikumar', 'hemanthsaikumarb@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(95, 'Venkatesh Budagumpi', 'venkateshsb123@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(96, 'Ashwini dasankop', 'ashwinidasankop899@gmail.com', '8007961759', '', '', '', 'BCAProject', '', '', '', 1),
(97, 'Anil', '', '8007961759', '', '', '', 'SQL', '', '', '', 1),
(98, 'Sagar onti', 'sagaronti683@gmail.com', '8007961759', '', '', '', 'BCAProject', '', '', '', 1),
(99, 'Pavan Kumar Talavar', 'pavankumartalawar18@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(100, 'Sauravh Kumar', 'sauravhk614@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(101, 'Santosh K', 'santoshkarikabbi88@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(102, 'Moinulla Hussaini', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(103, 'Mayur Appa', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(104, 'Mayur Appa', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(105, 'Mayur Appa', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(106, 'Vijay Pujar', '', '8007961759', '', '', '', 'Revit Designing Software', '', '', '', 1),
(107, 'Priyanka lokur', 'priyalokur2000@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(108, 'Sowmya Patil', 'sowmyapatil720@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(109, 'HajiAli MS', 'hajialisadarbhai53@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 0),
(110, 'Harish', '', '8007961759', '', '', '', 'Road Design Softwares', '', '', '', 1),
(111, 'Sankalp', 'sankalp0603@gmail.com', '8007961759', '', '', '', 'Web Design and Development', 'Web Designing and Development', '', '', 1),
(112, 'Megha', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(113, 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚ Ð½Ð¾Ð¼ÐµÑ€ WLR413336WLR2 Ð¿Ð¾Ð´Ð³', 'shirokovaalisaodgd@mail.ru', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(114, 'Akshata', 'annigeriakshata@gmail.com', '8007961759', '', '', '', '', 'Python Programming', '', '', 1),
(115, 'SDSASAC', 'SDA@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(116, 'Prateek G G', 'prateekgg23@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(117, 'Veeresh G D', 'veereshgd4@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(118, 'Najmusahar kalkoti', 'najmusaharkalkoti@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(119, 'Ravitej', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(120, 'Azib Ali', '', '8007961759', '', '', '', '', 'Python Programming', '', '', 1),
(121, 'Vivek Kittur', 'vivekkittur1998@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(122, 'Sameena Kokkargol', 'sameenakokkargol@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(123, 'Ashwini Pujari', 'ashwinipujari333@gmail.com', '8007961759', '', '', '', 'Advanced Excel Program', '', '', '', 0),
(124, 'Abhishek Bhavikatti', 'abhishekbhavikatti1234@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(125, 'Sukhavinder Singh S Thakur', 'sukhavindersing@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(126, 'khalilulla Hussaini', '0603khalil@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(127, 'KHALILULLA HUSSAINI', '0603khalil@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(128, 'KHALILULLA HUSSAINI', '0603khalil@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 0),
(129, 'Bhavana', 'bhavana.hr123@gmail.com', '8007961759', 'BE', '', '', '', 'Digital Marketing', '', '', 0),
(130, 'Basavatej Patil', 'patilbasavatejnpatil@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(131, 'Sampreet S', 'sampreetss17@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(132, 'Sooraj', 'surajt028@gmail.com', '8007961759', '', '', '', '', '', '', '', 1),
(133, 'Pushpalata Mannikeri', '', '8007961759', '', '', '', 'Microsoft .net', '', '', '', 1),
(134, 'Athar Parvez', 'atharparvez844@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(135, 'Rahul S Pattar', '', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(136, 'Sharvari Teggi', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(137, 'Meghraj', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(138, 'Rudragouda Patil', 'rudragoudapatil260@gmail.com', '8007961759', '', '', '', '', 'Python Programming', '', '', 1),
(139, 'Yashraj Pai', 'paiyashraj07@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(140, 'Neelambika Patil', 'renukapatilpatil1974@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(141, 'Hemanth Adammanavar', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(142, 'Shruti R H', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(143, 'Subhas M', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(144, 'Vanita', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(145, 'Basu Rachannavar', '', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(146, 'Rajeshwari katti', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(147, 'Daneshwari Wani', 'danuwani287@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(148, 'Chetan Angadi', 'chetanandagi07@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(149, 'Ambika Desai', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(150, 'Amogh g t', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(151, 'Vasudha', 'dadegalvasudha@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(152, 'M Arjun Babu', 'medisettykrishnaarjun@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(153, 'Keshav chowdary', 'keshavchowdary143@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(154, 'Kavita Mathapati', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(155, 'Sakshi Kampli', 'sakshsk01@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(156, 'Pavan Annigeri', '', '8007961759', '', '', '', 'Python with Machine Learning', '', '', '', 0),
(157, 'Sneha', '', '8007961759', '', '', '', 'Core Java', '', '', '', 0),
(158, 'Manjunath', 'manjuck37@gmail.com', '8007961759', '', '', '', 'Revit Designing Software', '', '', '', 1),
(159, 'Harish Chavan', '', '8007961759', '', '', '', 'Electrical AutoCAD', '', '', '', 0),
(160, 'Sunil A Shivanagi', 'anilshivangi2001@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(161, 'Ayaz kagazi', '', '8007961759', '', '', '', 'Electrical AutoCAD', '', '', '', 0),
(162, 'Mahesh Gudadar', 'maheshyallapa123@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(163, 'Ujwal S Bhavikatti', 'bhavikattiujwal@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(164, 'Deepak kariappagowdar', 'drk703846@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(165, 'Sachin Shindhe', 'sachinshindhe20@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(166, 'Anjali', '', '8007961759', '', '', '', 'Core Java', '', '', '', 1),
(167, 'Koustubh Shindhe', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(168, 'Tasmiya M Shaikh', 'tasmiyas860@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(169, 'Varsha Patil', 'varshapatil1932002@gmail.com', '8007961759', '', '', '', 'Data Structures', '', '', '', 0),
(170, 'Maitri Sulakhe', '', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(171, 'Preeti Vibhuti', 'preetivibhuti085@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(172, 'Dhrithi J', 'dhrithijinaga@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(173, 'Jafer Sadiq', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(174, 'Pooja B Mandre', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(175, 'V V Patil', '', '8007961759', '', '', '', 'Core Java', '', '', '', 1),
(176, 'Akshay', '', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(177, 'Nagraj Tuppad', 'nagrajtuppad048@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(178, 'Vinayak Patil', 'patilvinayak615@gmail.com', '8007961759', '', '', '', 'Android App Development', '', '', '', 1),
(179, 'Amrut kalkeri', 'kalkeriamrut1605@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(180, 'Vishnu Hiremath', 'vishnukhiremath@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(181, 'Prasad P Belgaumkar', 'prasadmanju1011@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(182, 'Sheetal Jain', 'sheetaljain@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(183, 'Jayant Pujar', '', '8007961759', '', '', '', 'Core Java', '', '', '', 1),
(184, 'Shreya Jambagi', 'shreya.jambagi@gmail.com', '8007961759', '', '', '', 'Advanced Excel Program', '', '', '', 1),
(185, 'Premkishan R A', '', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(186, 'Tarun Karigar', '', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(187, 'Ankita Wagmore', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(188, 'Veena Harikantra', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(189, 'Ravi Maragal', 'ravimmaragal04@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(190, 'Raghu', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(191, 'Mahesh kalyagol', '', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(192, 'Keerti Badiger', 'keertibadiger141@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(193, 'Rakshita Ingalagi', 'raskshitaingalagi2003@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(194, 'Vidya Patil', 'patilviya334@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(195, 'Sushma Sindhe', 'sushmasindhe24april@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(196, 'Alfia Khan', 'khanalfia400@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(197, 'Adarsh Terikeri', 'adashterikeri@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(198, 'Praveen', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(199, 'Vaishnavi Sarjoshi', 'vaishnavisarjoshi18@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(200, 'R R(Rapa U)', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(201, 'Maruti Naik', '', '8007961759', '', '', '', 'Road Design Softwares', '', '', '', 1),
(202, 'Muskan Shaikh', 'muskanshk441@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(203, 'Rachutesh Jinaga', '', '8007961759', '', '', '', 'Graphics Designing', '', '', '', 1),
(204, 'Rakesh naik', 'rakeshnaik7673@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(205, 'Mahesh Angadi', 'maheshmangadi27@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 0),
(206, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', '', '', 'SQL', '', 1),
(207, 'Abhiram', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(208, 'Samuel', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(209, 'Nutan Kumar', 'nuthan931@gmail.com', '8007961759', 'Diploma in mechanical engineering', '', '', '', 'Digital Marketing', '', '', 1),
(210, 'Nuthan', '', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(211, 'Kartik V Hiremath', 'hiremathkartik33@gmail.com', '8007961759', '', '', '', 'Android App Development', '', '', '', 1),
(212, 'Kedar Mallade', 'malladekedar7@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(213, 'Dhanaraj P G', 'solutionhub008@gmail.com', '8007961759', '', '', '', '', '', '', 'WEB DESIGNING AND DEVELOPMENT', 1),
(214, 'Dhanaraj P G', 'solutionhub008@gmail.com', '8007961759', '', '', '', '', '', '', 'MOBILE APP DEVELOPMENT', 1),
(215, 'Manjunath Nandimani', 'nandimanjunath2019@gmail.com', '8007961759', '', '', '', 'Python with Machine Learning', '', '', '', 1),
(216, 'Manjunath Nandimani', 'nandimanjunath2019@gmail.com', '8007961759', '', '', '', 'Python with Machine Learning', '', '', '', 1),
(217, 'Megha Marigoudar', '', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(218, 'Afreen Begum', 'afreenshoaib15@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(219, 'Faiz Byhatti', 'faizbyhatti@gmail.com', '8007961759', '', '', '', 'Python with Machine Learning', '', '', '', 1),
(220, 'Fouziya I Byali', 'fouziyabyalli@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(221, 'Abhishek Deshpande', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(222, 'Venkatesh Shivapuji', 'vsshivapuji@gmail.com', '8007961759', '', '', '', '', '', '', 'Digital Marketing', 1),
(223, 'Varun Kapali', 'kapalivarun17@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(224, 'Kiran M Patted', 'kiranpatted072@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 0),
(225, 'Anoop H C', 'anoophc18@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 0),
(226, 'Pooja Chavan', 'poojauchavan979@gmail.com', '8007961759', '', '', '', 'Placement Assistance', '', '', '', 1),
(227, 'veeresh', '', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(228, 'Renuka', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(229, 'Anita Nayak', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(230, 'Darshan Jadhav', 'dj006872@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 0),
(231, 'Anita Kadam', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(232, 'Nanda F Karigar', 'nandakarigar18@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(233, 'Harsha Jigajinni', 'jigajinniharsha@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(234, 'Ashmeera', 'ashmiramidhat1998@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(235, 'Prakash Jaggal', 'prakashjaggal@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(236, 'Madan Ghatge', '', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(237, 'Parikshith K H', 'nirikshithkh@gmail.com', '8007961759', '', '', '', 'Placement Assistance', '', '', '', 1),
(238, 'Sagar Badiger', '', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(239, 'Arun Kumar', 'arunkumaremmiyavar@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 0),
(240, 'Nehal Mane', 'nmmane3648@gmail.com', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(241, 'Ravi Murnal', 'ravi.murnal2@gmail.com', '8007961759', '', '', '', 'Revit Designing Software', '', '', '', 1),
(242, 'Raghavendra Bhat', '', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(243, 'Anusha Raichur', 'anusharaichur72@gmail.com', '8007961759', '', '', '', 'Data Structures', '', '', '', 1),
(244, 'Mahadevi B', 'mahadevisb1213@gmail.com', '8007961759', '', '', '', 'Data Structures', '', '', '', 1),
(245, 'shruti bhat', 'bhatshruti99@gmail.com', '8007961759', '', '', '', '', 'Web Designing and Development', '', '', 1),
(246, 'Veeresh', 'veeruvirat1669@gmail.com', '8007961759', '', '', '', 'Web Design and Development', 'SELECT YOUR INTEREST', '', '', 1),
(247, 'Abhishek Shindhe', 'abhishekhagalore@gmail.com', '8007961759', '', '', '', 'Core Java', '', '', '', 1),
(248, 'Manoj Holeyache', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(249, 'Prasad', '', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(250, 'BASAVARAJ VANNUR Vannur', 'bybasavaraj198@gmail.com', '8007961759', 'b e', '', '', '', 'Python Programming', '', '', 1),
(252, 'Mukund Deshpande', 'mukund.maths@gmail.com', '8007961759', '', 'Walk-in', '', '', '', '', 'Branding', 1),
(253, 'Noorjahan Ballari', 'noorjahanballari@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(254, 'Radha Maraddi', '', '8007961759', '', 'Walk-in', '', 'AutoCad', '', '', '', 0),
(257, 'Sonali', 'sonali@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(258, 'Kuber jupri', 'kuberjupri6@gmail.com', '8007961759', '', 'Google', '', 'Web Design and Development', '', '', '', 1),
(260, 'Swathi B K', 'swathibk95@gmail.com', '8007961759', '', 'Facebook', '', '', 'Python Programming', '', '', 1),
(261, 'Sachit Reddy', 'pbpatil0108@gmail.com', '8007961759', '', 'Google', '', 'Basics of Computers', '', '', '', 0),
(262, 'Mahesh M', 'mahesh.i.hi121@gmail.com', '8007961759', '', 'Walk-in', '', 'Web Design and Development', '', '', '', 1),
(263, 'Rahul Mathad', 'mathadrahul8055@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(264, 'Hrithik Koravar', 'hrithikkoravar@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(265, 'Abhishek Hanabaratti', 'abhishekhanabaratti@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(266, 'Amrut Haladi', 'haladiamrut@gmail.com', '8007961759', '', 'Google', '', 'Python Programming', '', '', '', 0),
(267, 'Laxmi Lamani', 'lamanilakshmi88@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 0),
(268, 'Harshita Vani', 'harshitavani@gmail.com', '8007961759', '', 'Walk-in', '', 'Advanced Excel Program', '', '', '', 0),
(269, 'Yogesh Lamani', 'yogeshlamani2@gmail.com', '8007961759', '', 'Walk-in', '', 'C++ Programming', '', '', '', 1),
(270, 'Spurit Jambgi', 'suprijambgi@gmail.com', '8007961759', '', 'Walk-in', '', 'C++ Programming', '', '', '', 1),
(271, 'Manjunath Olekar', 'olekarmanjunath912@gmail.com', '8007961759', '', 'Walk-in', '', 'C++ Programming', '', '', '', 1),
(272, 'Yashoda Sogi', 'yashodasogi@gmail.com', '8007961759', '', '', '', '', 'Python Programming', '', '', 0),
(273, 'Vivekanand Barakali', 'vivekanandbarakali1998@gmail.com', '8007961759', '', 'Google', '', 'Basics of Computers', '', '', '', 1),
(274, 'Safa', 'safaarshiya58@gmail.com', '8007961759', '', 'Google', '', 'Digital Media Marketing', '', '', '', 0),
(275, 'Gurunath M A', '', '8007961759', '', 'Walk-in', '', 'AutoCad', '', '', '', 1),
(276, 'Pavithra Bhoomangoudar', 'pavithrabhoomangoudar@gmail.com', '8007961759', '', 'Walk-in', '', 'BCAProject', '', '', '', 1),
(277, 'Namrata Kalabhavi', 'namratakalabhavi@gmail.com', '8007961759', '', 'Walk-in', '', 'BCAProject', '', '', '', 1),
(278, 'Mangla Patil', 'patilmangla738@gmail.com', '8007961759', '', 'Walk-in', '', 'BCAProject', '', '', '', 0),
(279, 'Preeti Pujar', 'preetipujar58@gmail.com', '8007961759', '', 'Walk-in', '', 'BCAProject', '', '', '', 0),
(280, 'Mahantesh N K', 'mkurubar141@gmai.com', '8007961759', '', 'Walk-in', '', 'Digital Media Marketing', '', '', '', 1),
(281, 'Gurupadeshwar Kanti', 'gurupadeshk123@gmail.com', '8007961759', '', 'Walk-in', '', 'BCAProject', '', '', '', 1),
(282, 'Ankit kulkarni', 'ankitkulkarni186@gmail.com', '8007961759', '', 'Walk-in', '', 'BCAProject', '', '', '', 1),
(283, 'Rahul Suresh Balbatti', 'rahulbalbatti032@gmail.com', '8007961759', '', '', '', 'MCA-Project', '', '', '', 1),
(284, 'Divyank Rahate', 'divyanknr@yahoo.com', '8007961759', '', 'Google', '', 'BCAProject', '', '', '', 1),
(285, 'Shreyas Desai', 'shreyas.desai6@gmail.com', '8007961759', '', 'Google', '', 'BCAProject', '', '', '', 1),
(286, 'Sandesh Patil', 'bhatsandesh2001@gmail.com', '8007961759', '', '', '', 'BCAProject', '', '', '', 1),
(287, 'Akshata T B', 'akshatatb1932@gmail.com', '8007961759', '', 'Walk-in', '', 'Advanced Excel Program', '', '', '', 0),
(288, 'Pooja Patil', 'patildpooja152@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(289, 'Pavitra B S', 'pavitrabs68@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(290, 'Vikas G Mule', 'vikasmule365@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(291, 'Allahbaksh shaikh', 'alishekh7941@gmail.com', '8007961759', '', 'Walk-in', '', 'AutoCad', '', '', '', 1),
(292, 'Kiran Sarjakar', 'kiransarjakar@gmail.com', '8007961759', '', 'Walk-in', '', 'AutoCad', '', '', '', 1),
(293, 'Arun Kumar Medar', 'arunmedar3@gmail.com', '8007961759', '', 'Walk-in', '', 'AutoCad', '', '', '', 1),
(294, 'Rabiya Yadalli', 'rabiyayadalli20@gmail.com', '8007961759', '', 'Google', '', '', 'Web Designing and Development', '', '', 1),
(295, 'Ashwini N T', 'ashwinitoranagatti10@gmail.com', '8007961759', '', '', '', 'BCAProject', '', '', '', 1),
(296, 'Bhagyashree V Kotwal', 'bhagyashreekotwal7@gmail.com', '8007961759', '', '', '', 'BCAProject', '', '', '', 1),
(297, 'Shilpa Kamar', 'badiger2205@gmail.com', '8007961759', '', 'Google', '', 'Software Testing', '', '', '', 1),
(298, 'Vandana Naik', 'naikvandana293@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 1),
(299, 'Pramod Alamel', 'pramodalmel@gmail.com', '8007961759', '', 'Walk-in', '', 'Web Design and Development', '', '', '', 1),
(300, 'Srujan Kumar Sungar', 'surjankumar2003@gmail.com', '8007961759', '', 'Walk-in', '', 'Web Design and Development', '', '', '', 1),
(301, 'Praveen Bhusaraddi', 'praveenhv6364@gmail.com', '8007961759', '', 'Walk-in', '', 'Web Design and Development', '', '', '', 1),
(302, 'Gayatri maragal', '', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(303, 'Shivani Wadkar', 'shivaniwadkar71@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(304, 'Rakshita Yadali', 'rakshita.yadali@gmail.com', '8007961759', '', 'Walk-in', '', 'Basics of Computers', '', '', '', 1),
(310, 'sunil ganji', 'suniganji96@gmail.com', '8007961759', '', 'Google', '', 'AutoCad', '', '', '', 1),
(311, 'Rakshit A Shetty', 'rakshitshetty2185@gmail.com', '8007961759', '', 'Walk-in', '', 'Python Programming', '', '', '', 1),
(312, 'Prajawal Ry', 'prajawalyereshimi3751@gmail.com', '8007961759', '', '', '', '', '', '', '', 1),
(313, 'umesh sheelimath', 'umeshsheelimath@gmail.com', '8007961759', '', 'Walk-in', '', 'C Programming', '', '', '', 0),
(314, 'Prajwal M Salimath', 'prajwalsalimath2004@gmail.com', '8007961759', '', 'Google', '', 'Basics of Computers', '', '', '', 0),
(315, 'prajwal s karigoudar', 'prajwalkarigoudar163@gmail.com', '8007961759', '', 'Google', '', 'Basics of Computers', '', '', '', 0),
(316, 'Gurunath SJ', 'gurunathsj@gmail.com', '8007961759', '', 'Walk-in', '', 'Basics of Computers', '', '', '', 1),
(317, 'Vishwa M Badachi', 'manojbadachi@gmail.com', '8007961759', '', 'Google', '', 'C Programming', '', '', '', 0),
(318, 'Shashank Patil', 'shashankpatil1728@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(319, 'Aishwarya Kammar', 'aishwaryakammar8@gmail.com', '8007961759', '', '', '', 'AutoCad', '', '', '', 1),
(320, 'Pritviraj Shinde', 'pritvirajshinde811@gmail.com', '8007961759', '', 'Walk-in', '', 'Python Programming', '', '', '', 1),
(321, 'hari priya', 'hari.hp29@gmail.com', '8007961759', '', '', '', 'Data Science', '', '', '', 1),
(322, 'Atharv Bennur', 'atharvbennur@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(323, 'Amit Gudadur', 'amitgudadur12@gmail.com', '8007961759', '', 'Walk-in', '', 'Digital Media Marketing', '', '', '', 1),
(324, 'Karthik B', 'shivakumarb725@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', 'Digital Marketing', '', 1),
(325, 'Abhishek Patil', 'abhishekpatil1501@gmail.com', '8007961759', '', '', '', 'Core and Advanced JAVA', '', '', '', 0),
(326, 'Chandrashekhar Ambanna', 'chadruambanna@gmail.com', '8007961759', '', '', '', 'Core and Advanced JAVA', '', '', '', 0),
(327, 'Nivedita Panchagavi', 'niveditakrishnapanchgavi@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(328, 'Komal Giriyappanavar', 'komalgiri888@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 0),
(329, 'Spoorti V Patil', 'dummy@gmail.com', '8007961759', '', 'Referral', '', 'Basics of Computers', '', '', '', 0),
(330, 'D Pavithra', 'dummy@gmail.com', '8007961759', '', 'Google', '', 'Python Programming', '', '', '', 1),
(331, 'Datta Niranjal', 'mathnandikol@gmail.com', '8007961759', '', 'Walk-in', '', 'Digital Media Marketing', '', '', '', 1),
(332, 'Kavya Yemmetti', 'kavyarani1256@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 0),
(333, 'Netravati Sataraddi', 'dummy@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(334, 'Sangamesh Bolishetti', 'sbolishetti5@gmail.com', '8007961759', '', 'Referral', '', 'Python Programming', '', '', '', 1),
(335, 'Achyut Mutalik', 'achutmutlik15@gmail.com', '8007961759', '', 'Referral', '', 'Python Programming', '', '', '', 0),
(336, 'Samarath Shetty', 'samarthshetty3999@gmail.com', '8007961759', '', 'Referral', '', 'Python Programming', '', '', '', 0),
(337, 'Sanika Buwa', 'girisonika90@gmail.com', '8007961759', '', '', '', '', '', '', '', 1),
(338, 'Bhoomika Dambal', 'dummy@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(339, 'Alfiya Nadaf', 'nadafalfiya57@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(340, 'Darshan Bankar', 'darshanbanakar2006@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(341, 'pragati', 'dummy@gmail.com', '8007961759', '', 'Google', '', 'Web Design and Development', '', '', '', 1),
(342, 'prasanna lakshmi', 'prasanna.bellary@gmail.com', '8007961759', '', 'Google', '', 'Python Programming', '', '', '', 0),
(343, 'OM Ashok Gaikwad', 'omg46929@gmail.com', '8007961759', '', 'Google', '', 'C Programming', '', '', '', 0),
(344, 'Joseph Dsouza', 'dummy@gmail.com', '8007961759', '', 'Google', '', 'Python Programming', '', '', '', 0),
(345, 'Muskaan Singh', 'muskaansingh5520@gmail.com', '8007961759', '', 'Walk-in', '', 'Python Programming', '', '', '', 1),
(346, 'Pratiksha Naik', '', '8007961759', '', 'Walk-in', '', 'Python Programming', '', '', '', 1),
(347, 'Spoorti NA', 'spoortina0128@gmail.com', '8007961759', '', '', '', 'C Programming', '', '', '', 1),
(348, 'Karthik Pattar', 'karthikpattar123@gmail.com', '8007961759', '', 'Referral', '', 'Basics of Computers', '', '', '', 0),
(349, 'Mukund V B', 'mukundvb17@gmail.com', '8007961759', '', 'Google', '', 'C++ Programming', '', '', '', 1),
(350, 'Vinayak Patil', 'vinni.patil33@gmail.com', '8007961759', '', '', '', 'Software Testing', '', '', '', 1),
(351, 'Sadiq', 'sadiqb62@gmail.com', '8007961759', '', '', '', 'Software Testing', '', '', '', 1),
(352, 'Pooja M Nekar', 'poojanekar14@gmail.com', '8007961759', '', 'Google', '', 'C Programming', '', '', '', 1),
(353, 'Sanjana S J', 'jsanjana023@gmail.com', '8007961759', '', 'Referral', '', 'C Programming', '', '', '', 1),
(354, 'Malatesh havalgeri', 'malteshhavalgeri2002@gmail.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(355, 'Avinash', 'avinash12nayak@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(356, 'Yusuf SH', 'yusufbiohalkarni@gmail.com', '8007961759', '', '', '', 'Digital Media Marketing', '', '', '', 0),
(357, 'Asif Koujaganur', 'asif0836@gmail.com', '8007961759', '', '', '', 'Python Programming', '', '', '', 1),
(358, 'Rajneesh Hebballi', 'rajneeshhebballi92@gmail.com', '8007961759', '', '', '', '', 'Python Programming', '', '', 1),
(359, 'Shreedhar Nadagoudar', 'shreedharnadagoudra7795@gmail.com', '8007961759', '', 'Walk-in', '', 'Digital Media Marketing', '', 'Digital Marketing', '', 1),
(360, 'Mussarat', 'dummy@gmail.com', '8007961759', '', '', '', 'Web Design and Development', '', '', '', 1),
(361, 'Saba Maradgi', 'sabamaradgi13@gmail.com', '8007961759', '', 'Walk-in', '', 'Python Programming', '', '', '', 1),
(362, 'Iqbal Matradgi', 'iqbalmaradgi@gmai.com', '8007961759', '', 'Walk-in', '', 'C Programming', '', '', '', 1),
(363, 'test', 'test@gmail.com', '8007961759', '', 'Referral', '', 'Python with Machine Learning', '', '', '', 1),
(364, 'test1', 'test1@gmail.com', '8007961759', '', 'referral', 'Dharwad', 'Python with Machine Learning', '', '', '', 1),
(365, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', 'Basics of Computers', '', '', '', 1),
(366, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(367, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', 'Mechanical Combo', '', '', '', 1),
(368, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', '', '', '', '', 1),
(369, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', '', '', 'Core Java', '', 1),
(370, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', '', '', 'Electrical AutoCAD', '', 1),
(371, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', '', '', 'Electrical AutoCAD', '', 1),
(372, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', '', '', '', '', 'Core Java', '', 1),
(373, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', 'Website', '', '', '', 'Mechanical Combo', '', 1),
(374, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', 'Website', '', '', '', 'Microsoft .net', '', 1),
(375, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', 'Website', '', '', '', 'Core Java', '', 1),
(376, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '8007961759', '', 'Website', '', '', '', 'Mechanical Combo', '', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `categoryDescription`, `categoryCreatedOn`, `categoryCreatedBy`, `categorytModifiedBy`, `HasSubcategory`) VALUES
(14, 'Services', 'Services', '2022-02-23 17:21:45', 'info@acedecors.in', 'info@acedecors.in', '1'),
(12, 'Trainings', 'Trainings', '2022-02-07 12:57:07', 'info@acedecors.in', 'info@acedecors.in', '1'),
(13, 'Internships', 'Internships', '2022-02-23 17:21:31', 'info@acedecors.in', 'info@acedecors.in', '1'),
(17, 'Jobs', 'Jobs', '2022-05-26 00:41:27', 'info@acedecors.in', 'info@acedecors.in', '1');

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

INSERT INTO `catsubcatmapping` (`catId`, `sucatId`) VALUES
(12, 89),
(14, 104),
(12, 102),
(14, 102),
(14, 103),
(14, 101),
(12, 95),
(12, 111),
(12, 97),
(12, 98),
(13, 111),
(12, 100),
(14, 106),
(13, 109),
(17, 110);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Location` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Approachedby` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Companyname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `Date`, `Name`, `Email`, `Phone`, `Location`, `Approachedby`, `Companyname`) VALUES
(2, '2022-05-10', 'Vanishree', 'vanishree@probuddysoftware.com', '', 'Bangalore', 'Dharwadhubballitutor', 'ProBuddy Software'),
(3, '2022-05-25', 'Trisha', 'trisha@desicrew.in', '7022282569', 'Udipi', 'Dharwadhubballitutor', 'Desicrew');

-- --------------------------------------------------------

--
-- Stand-in structure for view `coursebasedenq`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `coursebasedenq`;
CREATE TABLE IF NOT EXISTS `coursebasedenq` (
`Trainings` varchar(40)
,`NUMBER` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `coursemodal`
--

DROP TABLE IF EXISTS `coursemodal`;
CREATE TABLE IF NOT EXISTS `coursemodal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coursemodalId` int NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `coursemodalId` (`coursemodalId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coursemodal`
--

INSERT INTO `coursemodal` (`id`, `coursemodalId`, `Name`, `Description`) VALUES
(1, 3, 'Introduction', 'Introduction to C programming'),
(2, 3, 'C Environment Setup', 'This section describes how to set up your system environment before you start doing your \r\nprogramming using C language.'),
(3, 3, 'C Program Structure', 'Letâ€™s look into the Hello World example using C Programming Language.'),
(4, 3, 'C Basic Syntax', 'This chapter will give details about all the basic syntax about C programming language \r\nincluding tokens, keywords, identifiers, etc.'),
(5, 3, 'C Data Types', 'This chapter gives the details about the Data types in C programming language'),
(6, 3, 'C Variables', 'This chapter gives the details about the Variables in C programming Lanaguage'),
(7, 3, 'C Constants and Literals', 'This chapter describes the details of how to create constants and what are literal values'),
(8, 3, 'C Storage Classes', 'This chapter describes the Storage Classes in C programming which defines the scope and accessibility of varibales'),
(9, 3, 'C Operators', 'This Chapter defines the different operator present in the c programming language and also their usage'),
(10, 3, 'Decision Making in C', 'This chapter explains the conditional statements and switch statement in c programming language'),
(11, 3, 'C Loops', 'This chapter describes the iterative constructs in a c programming language'),
(12, 1, 'Basic of Computers', 'Introduction to computers\r\nTypes of Computers\r\nInput and Output Devices\r\nTypes of Software\r\nComputer Language\r\nComputer Security'),
(13, 1, 'Gmail Basics', 'Creation of Gmail ID,\r\nCreating google forms\r\nUnderstanding Google drives and uploading files and folders on to the drive'),
(14, 1, 'Canva Designing', 'Introduction to Designing,\r\nDesign a Business card\r\nDesign a certificate\r\nDesign poster\r\nDesign and broucher\r\nCreate videos and uploading user created audio.'),
(15, 1, 'Microsoft Word', 'Introduction to Word,\r\nPage setup,\r\nFile options\r\nFont option,\r\nParagraph options,\r\nAutomatic table of contents creation,\r\nSpelling and grammar,\r\nInserting Shapes and Pictures,\r\nPicture formatting,\r\nShape formatting,\r\nCreating charts using shapes,\r\nCreating Tables,\r\nFormatting Tables,\r\nCreating Bills\r\nCreating Application Forms\r\nCreating Letters\r\nCreating Resume.\r\nIntroduction to developer Options');

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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `CName`, `Ctype`, `Cduration`) VALUES
(1, 'Basics of Computers', 'Classroom Training', '30 Day'),
(2, 'Advanced Excel Program', 'Classroom Training', '30 Day'),
(3, 'C Programming', 'Classroom Training', '45day'),
(4, 'C++ Programming', 'Classroom Training', '45day'),
(5, 'Python Programming', 'Classroom Training', '45day'),
(6, 'Web Design and Development', 'Classroom Training', '60 Day'),
(7, 'AutoCad', 'Classroom Training', '30 Day'),
(8, 'Revit Designing Software', 'Classroom Training', '30 Day'),
(9, 'Tally and GST', 'Classroom Training', '30 Day'),
(10, 'Android App Development', 'Classroom Training', '60 Day'),
(11, 'SAP', 'Classroom Training', '60 Day'),
(12, 'Etabs', 'Classroom Training', '1 month'),
(13, 'Java Selenium', 'Classroom Training', '75'),
(14, 'BCAProject', 'Classroom Training', '60 Day'),
(15, 'Digital Media Marketing', 'Classroom Training', '60 Days'),
(16, 'SQL', 'Classroom Training', '30 days'),
(17, 'Road Design Softwares', 'Classroom Training', '30 days'),
(18, 'Python with Machine Learning', 'Classroom Training', '45 days'),
(19, 'Core Java', 'Classroom Training', '45 days'),
(20, 'Mechanical Combo', 'Classroom Training', '60 Days'),
(21, 'Microsoft .net', 'Classroom Training', '30 days'),
(22, 'Electrical AutoCAD', 'Classroom Training', '30 days'),
(23, 'Data Structures', 'Classroom Training', '45 days'),
(24, 'Core and Advanced JAVA', 'Classroom Training', '90 days'),
(25, 'Graphics Designing', 'Classroom Training', '30 days'),
(26, 'Placement Assistance', 'Classroom Training', '30'),
(27, 'Software Testing', 'Classroom Training', '60 Days'),
(28, 'Data Science', 'Classroom Training', '90 days'),
(29, 'MCA-Project', 'Classroom Training', '60 Days'),
(30, 'C and Data Structures', 'Classroom Training', '2 months'),
(31, 'Basics of Computers and Advanced Excel', 'Classroom Training', '2 months');

-- --------------------------------------------------------

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
-- Table structure for table `enquiry_followup`
--

DROP TABLE IF EXISTS `enquiry_followup`;
CREATE TABLE IF NOT EXISTS `enquiry_followup` (
  `followup_id` int NOT NULL AUTO_INCREMENT,
  `followup_enq_id` int DEFAULT NULL,
  `followupDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `followup_comments` varchar(200) NOT NULL,
  `followup_createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `followup_by` varchar(100) NOT NULL,
  PRIMARY KEY (`followup_id`),
  KEY `followup_enq_id` (`followup_enq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry_followup`
--

INSERT INTO `enquiry_followup` (`followup_id`, `followup_enq_id`, `followupDate`, `status`, `followup_comments`, `followup_createdon`, `followup_by`) VALUES
(1, 135, '0000-00-00 00:00:00', '', 'Demo class on 24th-sep-2021', '2021-09-23 02:37:13', 'dharwadhubballitutor'),
(2, 133, '0000-00-00 00:00:00', '', 'She will visit on 25/9/21 for complete enquiry on .net ,fees duration and career opportunities. This enquiry is interested in getting placement assistance after the training,', '2021-09-23 03:00:15', 'dharwadhubballitutor'),
(3, 136, '0000-00-00 00:00:00', '', 'She will be joining Python course from 1st week of oct. Call on oct 1 and get her admission done', '2021-09-23 03:01:16', 'dharwadhubballitutor'),
(4, 131, '0000-00-00 00:00:00', '', 'This enquiry is interested in joining Python course from oct 1 .. Get the admission done by last week of september', '2021-09-23 03:02:09', 'dharwadhubballitutor'),
(5, 123, '0000-00-00 00:00:00', '', 'This enquiry is interested in joining Adv excel from oct first week. Registration is done , the student must pay fees to start with the course', '2021-09-23 03:03:41', 'dharwadhubballitutor'),
(6, 150, '0000-00-00 00:00:00', '', 'This is Basic computers enquiry for his wife having 25 days old kid, He said ,he will visit us and decide on taking up admission', '2021-10-06 03:01:33', 'dharwadhubballitutor'),
(7, 149, '0000-00-00 00:00:00', '', 'Not picking up the call', '2021-10-06 03:01:46', 'dharwadhubballitutor'),
(8, 147, '0000-00-00 00:00:00', '', 'This student is interested in taking up C,C++,Basic Computers, Html and sql....Plan to give them a package and ask to pay in two installemnets', '2021-10-06 03:03:02', 'dharwadhubballitutor'),
(9, 148, '0000-00-00 00:00:00', '', 'This enquiry is visiting us on Saturday. \r\nHe wants to take basic courses.\r\nwith tally and gst', '2021-10-06 21:31:01', 'dharwadhubballitutor'),
(10, 156, '0000-00-00 00:00:00', '', 'He will be visiting on saturday i.e 23/10/21\r\nfor the complete enquiry on courses, get syllabus and decide on taking admission', '2021-10-19 04:48:19', 'dharwadhubballitutor'),
(11, 155, '0000-00-00 00:00:00', '', 'She will update in a day, the status of her admission with us', '2021-10-19 04:49:17', 'dharwadhubballitutor'),
(12, 154, '0000-00-00 00:00:00', '', 'This enquiry was supposed to visit us to get complete enquiry and fees of web design and development.\r\nBut currently not responding to calls', '2021-10-19 04:50:20', 'dharwadhubballitutor'),
(13, 153, '0000-00-00 00:00:00', '', 'This enquiry was supposed to take up c training in one week, but right now not responding.', '2021-10-19 04:51:16', 'dharwadhubballitutor'),
(14, 152, '0000-00-00 00:00:00', '', 'This enquiry updated on coming and visiting us along with brother, but right now not responding to calls', '2021-10-19 04:52:21', 'dharwadhubballitutor'),
(15, 150, '0000-00-00 00:00:00', '', 'Not responding to calls', '2021-10-19 04:52:48', 'dharwadhubballitutor'),
(16, 151, '0000-00-00 00:00:00', '', 'This enquiry is out of town for festival , she will be returning in another 3 to 4 days.\r\nShe wants to start with basic and advanced python', '2021-10-19 04:58:08', 'dharwadhubballitutor'),
(17, 158, '0000-00-00 00:00:00', '', 'This inquiry has completed BE in Civil and has worked for the past 3 years. He is working on AutoCAD and wants Revit and Rendering and Software. Must connect him with Abdul Sir for deciding the course', '2021-10-19 22:42:27', 'dharwadhubballitutor'),
(18, 156, '0000-00-00 00:00:00', '', '', '2021-10-19 22:47:04', 'dharwadhubballitutor'),
(19, 157, '0000-00-00 00:00:00', '', 'This is VDRIT student who wants to join python course with us. She will discuss in home and get back with us.', '2021-10-19 23:27:41', 'dharwadhubballitutor'),
(20, 137, '0000-00-00 00:00:00', '', 'He was supposed to come and visit to take the syllabus and fee structure of python course, But presently not responding to calls', '2021-10-21 00:06:01', 'dharwadhubballitutor'),
(21, 157, '0000-00-00 00:00:00', '', 'This enquiry is not responding to class', '2021-10-21 00:06:22', 'dharwadhubballitutor'),
(22, 154, '0000-00-00 00:00:00', '', 'Not responding to calls', '2021-10-21 00:06:46', 'dharwadhubballitutor'),
(23, 153, '0000-00-00 00:00:00', '', 'This student wants to join c programming in November month', '2021-10-21 00:07:24', 'dharwadhubballitutor'),
(24, 152, '0000-00-00 00:00:00', '', 'This candidate want to join c programming course from next month (november)', '2021-10-21 00:08:10', 'dharwadhubballitutor'),
(25, 149, '0000-00-00 00:00:00', '', 'no response', '2021-10-21 00:15:29', 'dharwadhubballitutor'),
(26, 136, '0000-00-00 00:00:00', '', 'not responding to calls', '2021-10-21 00:17:36', 'dharwadhubballitutor'),
(27, 135, '0000-00-00 00:00:00', '', 'not responding to calls', '2021-10-21 00:19:11', 'dharwadhubballitutor'),
(28, 134, '0000-00-00 00:00:00', '', 'He is out of station and will call once he is back in town', '2021-10-21 00:20:59', 'dharwadhubballitutor'),
(29, 159, '0000-00-00 00:00:00', '', 'This candidate is BE in EE and looking for JOB.\r\nCurrently, he wants to know the fees, syllabus, and duration of the course.\r\nWill arrange a Call of him with Abdul Sir , as he will share the syllabus ', '2021-10-21 04:01:19', 'dharwadhubballitutor'),
(30, 157, '0000-00-00 00:00:00', '', 'She is coming tomorrow to take up the admission for python classes', '2021-10-21 04:53:15', 'dharwadhubballitutor'),
(31, 160, '0000-00-00 00:00:00', '', 'Complete details along with syllabus and fees as been given to the student. He is in final year Bsc (CBZ). He wants to start classes from Monday and will confirm after informing in his house.\r\n\r\nShe i', '2021-10-21 07:26:11', 'dharwadhubballitutor'),
(32, 159, '0000-00-00 00:00:00', '', 'Abdul Sir has spoken to this student, he is visiting on 22/10/21 for taking up the admission, for basic electrical Autocad and then later he is interested in taking up the advanced electrical AutoCAD', '2021-10-21 07:40:50', 'dharwadhubballitutor'),
(33, 159, '0000-00-00 00:00:00', '', 'He is out of town today, he will visit tomorrow morning and take admission for electrical AutoCAD', '2021-10-22 05:38:42', 'dharwadhubballitutor'),
(34, 156, '0000-00-00 00:00:00', '', 'This student will visit us on 23/10/2021, to get info about the python course syllabus', '2021-10-22 07:23:24', 'dharwadhubballitutor'),
(35, 154, '0000-00-00 00:00:00', '', 'Not responding for calls', '2021-10-25 22:44:44', 'dharwadhubballitutor'),
(36, 160, '0000-00-00 00:00:00', '', 'not responding to calls', '2021-10-25 22:45:04', 'dharwadhubballitutor'),
(37, 161, '0000-00-00 00:00:00', '', 'He has a doubt about What is CAD development?\r\nAbdul Sir is going to cross-check and revert back with the fees?', '2021-10-26 04:47:05', 'dharwadhubballitutor'),
(38, 149, '0000-00-00 00:00:00', '', 'not responding to calls', '2021-10-26 22:57:20', 'dharwadhubballitutor'),
(39, 160, '0000-00-00 00:00:00', '', 'Not responding to calls', '2021-10-26 23:27:38', 'dharwadhubballitutor'),
(40, 151, '0000-00-00 00:00:00', '', 'not responding to calls', '2021-10-26 23:28:00', 'dharwadhubballitutor'),
(41, 162, '0000-00-00 00:00:00', '', 'He will confirm on taking up admission with us on Saturday', '2021-10-27 02:16:40', 'dharwadhubballitutor'),
(42, 165, '0000-00-00 00:00:00', '', 'Will Revert back on monday whether to proceed with the admission', '2021-10-28 23:56:25', 'dharwadhubballitutor'),
(43, 164, '0000-00-00 00:00:00', '', 'Will Revert back on monday whether to proceed with the admission', '2021-10-28 23:56:32', 'dharwadhubballitutor'),
(44, 166, '0000-00-00 00:00:00', '', 'She is a final year BCA student from KLE rls , Dharwad.\r\nShe wants to take up Complete JAVA and web designing course.\r\nShe will be coming on Monday for a complete inquiry.', '2021-10-30 02:56:03', 'dharwadhubballitutor'),
(45, 167, '0000-00-00 00:00:00', '', 'He is out of town for Diwali vacation. He wants to do a python programming course.\r\nKHK, EC student now in the first year.', '2021-10-31 22:32:23', 'dharwadhubballitutor'),
(46, 165, '0000-00-00 00:00:00', '', 'They will decide and come after diwali and take up the course', '2021-10-31 22:38:58', 'dharwadhubballitutor'),
(47, 166, '0000-00-00 00:00:00', '', 'She will come tomorrow as she is out of station', '2021-10-31 22:42:01', 'dharwadhubballitutor'),
(48, 166, '0000-00-00 00:00:00', '', 'She has taken up the syllabus, and want to discuss with parents and get back to us on MOnday', '2021-11-02 22:13:22', 'dharwadhubballitutor'),
(49, 144, '0000-00-00 00:00:00', '', 'No response for calls', '2021-11-02 23:22:39', 'dharwadhubballitutor'),
(50, 164, '0000-00-00 00:00:00', '', 'no response for calls', '2021-11-02 23:25:57', 'dharwadhubballitutor'),
(51, 168, '0000-00-00 00:00:00', '', 'She will Update on taking up the admission by today evening', '2021-11-06 00:14:31', 'dharwadhubballitutor'),
(52, 165, '0000-00-00 00:00:00', '', 'They have taken the course in other training center,since their friend had taken there', '2021-11-07 23:27:08', 'dharwadhubballitutor'),
(53, 164, '0000-00-00 00:00:00', '', 'They have taken the course in other training center,since their friend had taken there', '2021-11-07 23:27:18', 'dharwadhubballitutor'),
(54, 168, '0000-00-00 00:00:00', '', 'No response to calls', '2021-11-08 02:43:30', 'dharwadhubballitutor'),
(55, 166, '0000-00-00 00:00:00', '', 'No response to calls', '2021-11-08 02:51:22', 'dharwadhubballitutor'),
(56, 167, '0000-00-00 00:00:00', '', 'He had called by seeing at the sticker put on the tree opposite to JSS.\r\nHis parents dont want him to join the course now', '2021-11-08 21:51:12', 'dharwadhubballitutor'),
(57, 170, '0000-00-00 00:00:00', '', 'This girl is from Haliyal College, final year, she is interested in taking c,c++, Java, and python. She will visit us after 3 days as she has her internal exams in the next 3 days.', '2021-11-09 00:18:21', 'dharwadhubballitutor'),
(58, 168, '0000-00-00 00:00:00', '', 'She is asked to come and attend a demo class', '2021-11-09 00:18:47', 'dharwadhubballitutor'),
(59, 169, '0000-00-00 00:00:00', '', 'She will come after two days for the admission', '2021-11-09 05:58:36', 'dharwadhubballitutor'),
(60, 152, '0000-00-00 00:00:00', '', 'Financial problems , he is not able to adjust money for the classes', '2021-11-10 07:25:16', 'dharwadhubballitutor'),
(61, 171, '0000-00-00 00:00:00', '', 'She will inform on Monday about taking up the admission', '2021-11-12 03:16:31', 'dharwadhubballitutor'),
(62, 175, '0000-00-00 00:00:00', '', 'This number is of the parent of the student completed BCA \r\nThe candidate wants to Java course.\r\nThey will be visiting shortly to enquire about the course and fees', '2021-11-15 23:57:26', 'dharwadhubballitutor'),
(63, 176, '0000-00-00 00:00:00', '', 'This candidate is BCA !  year, IBMR college Hubli.\r\nHe wants to take up C and Unix\r\nHe will be visiting us in another 2-3 days,as he is not well', '2021-11-16 00:08:19', 'dharwadhubballitutor'),
(64, 177, '0000-00-00 00:00:00', '', 'This student want to take civil design courses.', '2021-11-16 04:26:11', 'dharwadhubballitutor'),
(65, 177, '0000-00-00 00:00:00', '', 'He will join the class after 15 days', '2021-11-16 04:33:22', 'dharwadhubballitutor'),
(66, 123, '0000-00-00 00:00:00', '', 'Presently she is in her native , since er father has expired , She is interested in taking up the course, but will come and take once se is alright', '2021-11-17 22:14:29', 'dharwadhubballitutor'),
(67, 175, '0000-00-00 00:00:00', '', 'This candidate has decided to take java and advanced java course.\r\nShe will come on 24 and decide about SAP modules', '2021-11-17 22:23:26', 'dharwadhubballitutor'),
(68, 171, '0000-00-00 00:00:00', '', 'no response for calls', '2021-11-17 22:26:51', 'dharwadhubballitutor'),
(69, 169, '0000-00-00 00:00:00', '', 'She is having internals on 24th nov.\r\nShe will take up the classes after internals', '2021-11-17 22:33:14', 'dharwadhubballitutor'),
(70, 168, '0000-00-00 00:00:00', '', 'No response to calls', '2021-11-17 22:39:22', 'dharwadhubballitutor'),
(71, 174, '0000-00-00 00:00:00', '', 'This candidate wants to go for higher education', '2021-11-25 22:59:00', 'dharwadhubballitutor'),
(72, 173, '0000-00-00 00:00:00', '', 'He wants a course in Hubli', '2021-11-25 22:59:22', 'dharwadhubballitutor'),
(73, 184, '0000-00-00 00:00:00', '', 'She will come on 3rd December do the admission and start classes', '2021-11-29 05:59:42', 'dharwadhubballitutor'),
(74, 186, '0000-00-00 00:00:00', '', 'they will Come tomorrow to take up class', '2021-11-29 07:03:10', 'dharwadhubballitutor'),
(75, 185, '0000-00-00 00:00:00', '', 'They will be taking admission tomorrow', '2021-11-29 07:04:26', 'dharwadhubballitutor'),
(76, 187, '0000-00-00 00:00:00', '', 'She is Msc Student, willing to take python or web design development classes.. She is visiting today post lunch', '2021-12-05 22:43:27', 'dharwadhubballitutor'),
(77, 187, '0000-00-00 00:00:00', '', 'This student will ask her parents and get back to us', '2021-12-06 05:28:09', 'dharwadhubballitutor'),
(78, 184, '0000-00-00 00:00:00', '', 'She has got job in gulbarga and will be joining the job in one week', '2021-12-06 23:02:26', 'dharwadhubballitutor'),
(79, 183, '0000-00-00 00:00:00', '', 'This student has joined some project class in college, after completing that class he will join the course', '2021-12-06 23:03:39', 'dharwadhubballitutor'),
(80, 187, '0000-00-00 00:00:00', '', 'She is not willing to take the course as her house is very far from our institute.', '2021-12-07 00:09:20', 'dharwadhubballitutor'),
(81, 188, '0000-00-00 00:00:00', '', 'This candidate is coming on Monday to take up the demo class', '2021-12-11 00:54:35', 'dharwadhubballitutor'),
(82, 190, '0000-00-00 00:00:00', '', 'not responding to calls', '2021-12-19 23:28:20', 'dharwadhubballitutor'),
(83, 195, '0000-00-00 00:00:00', '', 'She will come in month of january to get the admission done', '2021-12-23 21:50:12', 'dharwadhubballitutor'),
(84, 194, '0000-00-00 00:00:00', '', 'She will come in the month of jan todo the admission', '2021-12-23 21:50:43', 'dharwadhubballitutor'),
(85, 193, '0000-00-00 00:00:00', '', 'She will come o saturday to do the admission', '2021-12-23 21:51:05', 'dharwadhubballitutor'),
(86, 192, '0000-00-00 00:00:00', '', 'She will come on saturday to do the admission', '2021-12-23 21:51:33', 'dharwadhubballitutor'),
(87, 189, '0000-00-00 00:00:00', '', 'Not responding to calls', '2021-12-23 21:52:03', 'dharwadhubballitutor'),
(88, 195, '0000-00-00 00:00:00', '', 'no response for calls an messages', '2022-01-01 05:25:03', 'dharwadhubballitutor'),
(89, 194, '0000-00-00 00:00:00', '', 'No response for calls and sms', '2022-01-01 05:25:25', 'dharwadhubballitutor'),
(90, 193, '0000-00-00 00:00:00', '', 'She will come on monday and discuss her doubts', '2022-01-01 05:26:17', 'dharwadhubballitutor'),
(91, 192, '0000-00-00 00:00:00', '', 'She will come on Monday and discuss her doubts', '2022-01-01 05:27:26', 'dharwadhubballitutor'),
(92, 197, '0000-00-00 00:00:00', '', 'he will join after exams since they have jan and feb exams', '2022-01-04 01:56:59', 'dharwadhubballitutor'),
(93, 198, '0000-00-00 00:00:00', '', 'This person want to take course after lockdown', '2022-01-17 23:33:46', 'dharwadhubballitutor'),
(94, 205, '0000-00-00 00:00:00', '', 'He will come after 5th feb and join the classes', '2022-01-30 23:58:12', 'dharwadhubballitutor'),
(95, 218, '0000-00-00 00:00:00', '', 'She is not in India, Hence would be contacting us once she is back in India in next month', '2022-02-15 22:14:33', 'dharwadhubballitutor'),
(96, 219, '0000-00-00 00:00:00', '', 'Need Demo class to be scheduled. Spoken with data science trainer he not available on 19 FEB, hence we need to schedule in next week and same needs to be communicated with the candidate', '2022-02-15 22:16:55', 'dharwadhubballitutor'),
(97, 210, '0000-00-00 00:00:00', '', 'Not Interested', '2022-02-15 22:19:50', 'dharwadhubballitutor'),
(98, 221, '0000-00-00 00:00:00', '', 'This student will be joining the course on March 10 after his exam', '2022-02-21 07:22:31', 'dharwadhubballitutor'),
(99, 218, '0000-00-00 00:00:00', '', 'Had texted her on watsapp, she will update later as to when she will be back to india', '2022-03-03 23:47:21', 'dharwadhubballitutor'),
(100, 209, '0000-00-00 00:00:00', '', 'he is not interested in taking the course', '2022-03-04 04:28:14', 'dharwadhubballitutor'),
(101, 227, '0000-00-00 00:00:00', '', 'He will come on 12 March to take up the admission', '2022-03-05 07:11:29', 'dharwadhubballitutor'),
(102, 232, '0000-00-00 00:00:00', '', 'This candidate is done with the WDD demo, later on, Saturday, she is supposed to take the Testing demo and decide on which course to proceed with.', '2022-03-10 21:54:22', 'dharwadhubballitutor'),
(103, 233, '0000-00-00 00:00:00', '', 'This candidate is done with the WDD demo, later on, Saturday, she is supposed to take the Testing demo and decide on which course to proceed with.', '2022-03-10 21:54:38', 'dharwadhubballitutor'),
(104, 234, '0000-00-00 00:00:00', '', 'She will talk to her parents and let us know till Tuesday', '2022-03-10 21:56:39', 'dharwadhubballitutor'),
(105, 231, '0000-00-00 00:00:00', '', 'she is ready to join the course by April first week.\r\nsince she is busy with office work in this month.\r\nThe jo requirement is in Pune', '2022-03-10 22:20:18', 'dharwadhubballitutor'),
(106, 228, '0000-00-00 00:00:00', '', 'Demo class for testing must be scheduled for this candidate', '2022-03-10 22:21:03', 'dharwadhubballitutor'),
(107, 236, '0000-00-00 00:00:00', '', 'She is out of station, interested in taking up Python training, she will visit us once she is back', '2022-03-10 23:28:11', 'dharwadhubballitutor'),
(108, 235, '0000-00-00 00:00:00', '', 'he is interested in taking up the course,when to start he has not informed yet', '2022-03-13 23:32:52', 'dharwadhubballitutor'),
(109, 236, '0000-00-00 00:00:00', '', 'She will be coming in the month of May', '2022-03-16 02:34:34', 'dharwadhubballitutor'),
(110, 248, '0000-00-00 00:00:00', '', 'He is a BCA 5th sem candidate placed in wipro,looking for skill development courses we have suggested him web design and development training. They will Update after 14 april since they have exams', '2022-03-29 06:38:57', 'dharwadhubballitutor'),
(111, 249, '0000-00-00 00:00:00', '', 'He is a BCA 5th sem candidate placed in Wipro, looking for skill development courses we have suggested  web design and development training. They will Update after 14 April since they have exams', '2022-03-29 06:39:23', 'dharwadhubballitutor'),
(112, 247, '0000-00-00 00:00:00', '', 'He wants to start classes from april 1', '2022-03-29 06:39:43', 'dharwadhubballitutor'),
(113, 244, '0000-00-00 00:00:00', '', 'She will come after april 6th as they have seminars', '2022-03-29 06:40:13', 'dharwadhubballitutor'),
(114, 243, '0000-00-00 00:00:00', '', 'They will come after April 6th as they have seminars', '2022-03-29 06:40:53', 'dharwadhubballitutor'),
(115, 242, '0000-00-00 00:00:00', '', 'not responding', '2022-03-29 06:41:09', 'dharwadhubballitutor'),
(116, 181, '2022-04-13 00:00:00', 'In Progress', 'Basics of Computers', '2022-04-12 23:07:47', 'info@acedecors.in'),
(117, 253, '2022-04-13 00:00:00', 'Bad', 'This girl has taken up training and project from another center,\r\nreasons given are distance is far from us', '2022-04-12 23:09:56', 'info@acedecors.in'),
(118, 261, '2022-04-13 00:00:00', 'In Progress', 'She will be coming shortly to take up the admission', '2022-04-12 23:10:32', 'info@acedecors.in'),
(119, 267, '2022-04-16 00:00:00', 'In Progress', 'She has taken up the demo class and interested to join the class,once the fees is arranged she will join the training', '2022-04-15 22:55:47', 'info@acedecors.in'),
(120, 247, '2022-04-16 00:00:00', 'Bad', 'Since he got same course in cheaper rates he has joined the course at other center', '2022-04-15 23:25:26', 'info@acedecors.in'),
(121, 262, '2022-04-16 00:00:00', 'In Progress', 'He will be coming on monday to take up admission', '2022-04-15 23:28:59', 'info@acedecors.in'),
(122, 266, '2022-04-18 00:00:00', 'Converted', 'Ready to take admission\r\nand join classes on 23/4/2022', '2022-04-17 21:57:00', 'info@acedecors.in'),
(123, 231, '2022-04-19 00:00:00', 'Bad', 'She has taken up the training in belgaum itself', '2022-04-19 03:33:51', 'info@acedecors.in'),
(124, 262, '2022-04-20 00:00:00', 'Bad', 'He got a Job in Gokak as Site engineer', '2022-04-20 03:25:12', 'info@acedecors.in'),
(125, 287, '2022-05-26 00:00:00', 'In Progress', 'Would be joining on Thursday onward', '2022-05-23 05:42:10', 'info@acedecors.in'),
(126, 285, '2022-05-24 00:00:00', 'In Progress', 'Android Projects', '2022-05-23 05:44:54', 'info@acedecors.in'),
(127, 290, '2022-05-31 00:00:00', '', 'No response to calls', '2022-05-31 05:36:37', 'info@acedecors.in'),
(128, 291, '2022-05-31 00:00:00', '', 'Fees is to high for autocad,revit and sketchup\r\nfees quoted was 16k', '2022-05-31 05:37:19', 'info@acedecors.in'),
(129, 292, '2022-05-31 00:00:00', '', 'Same as Allahbaksh', '2022-05-31 05:37:44', 'info@acedecors.in'),
(130, 293, '2022-05-31 00:00:00', '', 'same as Allahbaksh', '2022-05-31 05:38:16', 'info@acedecors.in'),
(131, 297, '2022-06-01 00:00:00', 'In Progress', 'Demo should be scheduled tomorrow morning at 10 or 11', '2022-05-31 22:05:46', 'info@acedecors.in'),
(132, 298, '2022-06-01 00:00:00', '', 'She has taken up the demo class and will take up the classes in another 4 to 5 days as she is going oot', '2022-06-01 05:19:53', 'info@acedecors.in'),
(133, 304, '2022-06-13 00:00:00', 'In Progress', 'Follow Up on Monday for basics of computers', '2022-06-09 06:43:32', 'info@acedecors.in'),
(134, 297, '2022-06-15 00:00:00', 'Bad', 'She has not stated a reason but is not interested in joining the course', '2022-06-15 03:25:02', 'info@acedecors.in'),
(135, 304, '2022-06-15 00:00:00', 'Bad', 'not interested because the fee is high', '2022-06-15 06:00:35', 'info@acedecors.in'),
(136, 234, '2022-06-20 00:00:00', 'Bad', 'She is taking up B.Ed and TET exam', '2022-06-19 22:49:32', 'info@acedecors.in'),
(137, 317, '2022-07-06 00:00:00', 'In Progress', 'He will create admission on 8th july and start classes on the same date', '2022-07-06 01:21:21', 'info@acedecors.in'),
(138, 324, '2022-07-27 00:00:00', 'Bad', 'Not Interested', '2022-07-26 23:59:34', 'info@acedecors.in'),
(139, 323, '2022-07-27 00:00:00', 'Bad', 'Not responding appropriately', '2022-07-27 00:03:29', 'info@acedecors.in'),
(140, 319, '2022-07-27 00:00:00', 'Bad', 'Trainer Not available', '2022-07-27 00:04:00', 'info@acedecors.in'),
(141, 318, '2022-07-27 00:00:00', 'Bad', 'Trainer Not available', '2022-07-27 00:04:31', 'info@acedecors.in'),
(142, 316, '2022-07-27 00:00:00', 'Bad', 'Not Responding', '2022-07-27 00:06:06', 'info@acedecors.in'),
(143, 311, '2022-07-27 00:00:00', 'Bad', 'Not Answering the call', '2022-07-27 00:10:26', 'info@acedecors.in'),
(144, 326, '2022-07-30 00:00:00', 'Converted', 'They will create admission tomorrow', '2022-07-29 22:47:16', 'info@acedecors.in'),
(145, 325, '2022-07-30 00:00:00', 'Converted', 'He will create admission tomorrow', '2022-07-29 22:47:38', 'info@acedecors.in'),
(146, 329, '2022-07-30 00:00:00', 'Converted', 'Thy will create admission today', '2022-07-29 22:48:14', 'info@acedecors.in'),
(147, 328, '2022-07-30 00:00:00', 'Converted', 'She will create admission today', '2022-07-29 22:48:39', 'info@acedecors.in'),
(148, 330, '2022-07-30 00:00:00', 'In Progress', 'she will visit on Monday to get the details about the trainings', '2022-07-29 22:56:24', 'info@acedecors.in'),
(149, 341, '2022-08-10 00:00:00', 'In Progress', 'She will update by tomorrow about the classes', '2022-08-10 05:51:39', 'info@acedecors.in'),
(150, 336, '2022-08-10 00:00:00', 'In Progress', 'he wants to start class after 28th august', '2022-08-10 05:52:34', 'info@acedecors.in'),
(151, 335, '2022-08-10 00:00:00', 'In Progress', 'he wants to start class after 28th august', '2022-08-10 05:53:02', 'info@acedecors.in'),
(152, 334, '2022-08-10 00:00:00', 'In Progress', 'he wants to start class after 28th august', '2022-08-10 05:53:18', 'info@acedecors.in'),
(153, 340, '2022-08-10 00:00:00', 'In Progress', 'the candidate wants to start class from 25th august', '2022-08-10 05:53:59', 'info@acedecors.in'),
(154, 339, '2022-08-10 00:00:00', 'In Progress', 'the candidate wants to start class from 25th august', '2022-08-10 05:54:21', 'info@acedecors.in'),
(155, 338, '2022-08-10 00:00:00', 'In Progress', 'the candidate wants to start class from 25th august', '2022-08-10 05:54:37', 'info@acedecors.in'),
(156, 338, '2022-08-10 00:00:00', 'In Progress', 'She wants to confirm with parents and start the classes', '2022-08-10 05:55:24', 'info@acedecors.in'),
(157, 341, '2022-08-12 00:00:00', 'Bad', 'She is from civil background so not able to decide which sector to go, whether IT or civil', '2022-08-11 22:55:31', 'info@acedecors.in'),
(158, 342, '2022-08-12 00:00:00', 'In Progress', 'She will come on Tuesday evening or Wednesday morning', '2022-08-11 23:01:04', 'info@acedecors.in'),
(159, 333, '2022-08-12 00:00:00', 'In Progress', 'She wants to start classes after 15 august', '2022-08-11 23:02:14', 'info@acedecors.in'),
(160, 344, '2022-08-13 00:00:00', 'In Progress', 'He will visit us on MOnday or tuesday to get the details of the courses', '2022-08-13 03:52:02', 'info@acedecors.in'),
(161, 346, '2022-08-16 00:00:00', 'In Progress', 'She had come to enquire about a robotics course.\r\nI have counseled her to take up python with Django / Python with Machine learning package she will update in a day about this', '2022-08-16 02:48:03', 'info@acedecors.in'),
(162, 345, '2022-08-16 00:00:00', 'In Progress', 'She had come to enquire about a robotics course.\r\nI have counseled her to take up python with Django / Python with Machine learning package she will update in a day about this', '2022-08-16 02:48:17', 'info@acedecors.in'),
(163, 347, '2022-08-17 00:00:00', 'In Progress', 'She will come along with her father tomorrow and meet', '2022-08-17 04:46:16', 'info@acedecors.in'),
(164, 346, '2022-08-17 00:00:00', 'In Progress', 'They want to take class after exams that is from September 1 to September 20', '2022-08-17 04:47:13', 'info@acedecors.in'),
(165, 345, '2022-08-17 00:00:00', 'In Progress', 'They want to take class after exams that is from September 1 to September 20', '2022-08-17 04:47:29', 'info@acedecors.in'),
(166, 349, '2022-08-19 00:00:00', 'In Progress', 'He will come tomorrow to take up admission', '2022-08-19 03:28:59', 'info@acedecors.in'),
(167, 356, '2022-08-25 00:00:00', 'In Progress', 'He will be visiting tomorrow for discussion about taking up the class', '2022-08-25 05:03:52', 'info@acedecors.in'),
(168, 355, '2022-08-26 00:00:00', 'In Progress', 'He want to take the trainings in next month', '2022-08-26 03:23:55', 'info@acedecors.in'),
(169, 360, '2022-08-30 00:00:00', '', 'She has enquired about all the courses,and said she would contact  back', '2022-08-29 23:25:17', 'info@acedecors.in'),
(170, 347, '2022-08-30 00:00:00', 'In Progress', 'She wants to take C programming classes from end of September', '2022-08-29 23:30:18', 'info@acedecors.in'),
(171, 349, '2022-08-30 00:00:00', 'In Progress', 'We will start class for him for c++ once pooja has completed her c course', '2022-08-29 23:31:24', 'info@acedecors.in'),
(172, 355, '2022-11-24 00:00:00', 'Bad', 'testing 123', '2022-11-17 15:32:20', 'info@acedecors.in'),
(173, 364, '2023-04-25 00:00:00', 'In Progress', 'fghfhf', '2023-04-25 14:51:38', 'info@acedecors.in'),
(174, 364, '2023-04-26 00:00:00', 'In Progress', 'asdasdasda', '2023-04-26 10:30:55', 'info@acedecors.in');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Amount` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Category` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Receipts` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `Date`, `Name`, `Description`, `Amount`, `Category`, `Receipts`) VALUES
(1, '2022-06-04', 'RENT', 'Rent Paid for June month', '8000', 'Rent', 0x646f776e6c6f61642e6a7067),
(2, '2022-06-08', 'Bill', 'Light Bill', '691', 'Bills', 0x576861747341707020496d61676520323032322d30362d323220617420392e35322e303320414d2e6a706567),
(3, '2022-06-20', 'Bill', 'Uniform Hamza and Azhar White T-shirt', '1490', 'Bills', 0x48616d7a6120322070616972206f6620756e69666f726d732e646f6378),
(4, '2022-06-11', 'Salary', 'Swati Salary for May month', '7500', 'Bills', 0x576861747341707020496d61676520323032322d30362d32322061742031302e30342e313320414d2e6a706567),
(5, '2022-06-13', 'House Light Bill', 'Light Bill for May Month', '1015', 'Bills', 0x576861747341707020496d61676520323032322d30362d32322061742031302e30362e303020414d2e6a706567);

-- --------------------------------------------------------

--
-- Table structure for table `facebookchatplugin`
--

DROP TABLE IF EXISTS `facebookchatplugin`;
CREATE TABLE IF NOT EXISTS `facebookchatplugin` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PluginCode` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facebookchatplugin`
--

INSERT INTO `facebookchatplugin` (`Id`, `PluginCode`) VALUES
(1, '<!-- Messenger Chat Plugin Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat Plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script async >\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"100316711879103\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n    </script>\r\n\r\n    <!-- Your SDK code -->\r\n    <script>\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v13.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>');

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
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`feesid`, `Admissionid`, `Courseid`, `TotalFees`, `PaidFees`, `PendingFees`, `Feesplan`, `DueDate`, `PaymentMode`, `PaymentDescription`, `lastpaiddate`, `feesreceipt`) VALUES
(1, 1, 2, 2000, 2000, 0, 'Full Payment', NULL, 'Cash', 'Cash', NULL, 'Gauri Gatade2021-03-27.pdf'),
(2, 2, 2, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Cash', NULL, 'Palla Hokarni2021-03-27.pdf'),
(3, 3, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Cash', NULL, 'Jagadeesh s kalappanavar2021-03-27.pdf'),
(4, 4, 2, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'GooglePay', NULL, 'Niyazahmed Garag2021-03-27.pdf'),
(5, 5, 3, 3000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'PhonePe', NULL, 'Hasen dongri2021-03-27.pdf'),
(6, 6, 2, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'phonePe', NULL, 'Hasen dongri2021-04-09.pdf'),
(7, 7, 12, 4000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Santhosh Motagi2021-04-17.pdf'),
(8, 8, 12, 4000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Mallikarjuna.ST2021-04-17.pdf'),
(9, 9, 4, 3000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Hasen dongri2021-05-12.pdf'),
(10, 10, 7, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Mallikarjuna.ST2021-05-18.pdf'),
(11, 11, 7, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Santhosh Motagi2021-05-18.pdf'),
(12, 12, 3, 3000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'Google Pay', NULL, 'Fazlur_rehman Mudnal2021-05-25.pdf'),
(13, 13, 1, 3000, 0, 3000, 'Part Payment', '2021-06-30', 'UPI transaction', 'phone Pay', NULL, 'Aparna Devangamath2021-06-14.pdf'),
(14, 13, 1, 3000, 1500, 1500, 'Part Payment', '2021-07-01', 'UPI transaction', 'phone Pay', NULL, 'Aparna Devangamath2021-06-16.pdf'),
(15, 14, 8, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'PhonePeT2106191912124113729887', NULL, 'TAHEERHUSAIN LAGADAK2021-06-19.pdf'),
(16, 15, 14, 6500, 3000, 3500, 'Part Payment', '2021-07-14', 'UPI transaction', 'phone Pay', NULL, 'Vaibhav Kammar2021-06-30.pdf'),
(17, 16, 14, 5000, 2500, 2500, 'Part Payment', '2021-07-08', 'UPI transaction', 'phone Pay', NULL, 'Nagveni Betgeri2021-07-01.pdf'),
(18, 17, 14, 5000, 2500, 2500, 'Part Payment', '2021-07-15', 'UPI transaction', 'phone Pay', NULL, 'Nagaratna Nesargi2021-07-03.pdf'),
(19, 15, 14, 6500, 3000, 3500, 'Part Payment', '2021-07-23', 'Debit/Credit Card', 'phone Pay', NULL, 'Vaibhav Kammar2021-07-23.pdf'),
(20, 18, 3, 3000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'VINAY V KAMMAR2021-07-26.pdf'),
(21, 16, 14, 5000, 2000, 500, 'Part Payment', '2021-08-09', 'Net Banking', 'phone pay', NULL, 'Nagveni Betgeri2021-08-09.pdf'),
(22, 19, 6, 15000, 0, 15000, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Dr. Mahantesh Angadi2021-08-09.pdf'),
(23, 17, 14, 5000, 2000, 500, 'Part Payment', '2021-08-09', 'UPI transaction', 'phone pay', NULL, 'Nagaratna Nesargi2021-08-09.pdf'),
(24, 19, 6, 15000, 10000, 5000, 'Part Payment', '2021-08-31', 'UPI transaction', 'phone pay', NULL, 'Dr. Mahantesh Angadi2021-08-11.pdf'),
(25, 20, 1, 3000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Hasen dongri2021-08-16.pdf'),
(26, 19, 6, 15000, 5000, 0, 'Full Payment', NULL, 'Net Banking', 'phone pay', NULL, 'Dr. Mahantesh Angadi2021-08-23.pdf'),
(27, 21, 18, 5000, 1000, 4000, 'Part Payment', '2021-08-31', 'UPI transaction', 'phone pay', NULL, 'Sowmya patil2021-08-24.pdf'),
(28, 22, 18, 5000, 1000, 4000, 'Part Payment', '2021-08-31', 'UPI transaction', 'phone pay', NULL, 'Priyanka lokur2021-08-24.pdf'),
(29, 23, 5, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'vaishnavi purohit2021-08-26.pdf'),
(30, 24, 3, 3000, 3000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'p pooja2021-08-28.pdf'),
(31, 25, 18, 5000, 1000, 4000, 'Part Payment', '2021-09-04', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Komal Avarsang2021-08-30.pdf'),
(32, 28, 6, 12000, 6000, 6000, 'Part Payment', '2021-10-04', 'UPI transaction', 'phone Pay', NULL, 'Anuradha Katti2021-09-04.pdf'),
(33, 29, 7, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'KHALILULLA HUSSAINI2021-09-13.pdf'),
(34, 30, 8, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'KHALILULLA HUSSAINI2021-09-13.pdf'),
(35, 31, 5, 6000, 3000, 3000, 'Part Payment', '2021-10-01', 'UPI transaction', 'phone pay', NULL, 'Kanchan satush sankangoudar2021-09-14.pdf'),
(36, 32, 5, 6000, 3000, 3000, 'Part Payment', '2021-10-01', 'UPI transaction', 'phone Pay', NULL, 'Abhsihek bhavikatti2021-09-15.pdf'),
(37, 33, 3, 3000, 2000, 1000, 'Part Payment', '2021-09-22', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sukhavindersingh Thakur2021-09-15.pdf'),
(38, 25, 18, 5000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Komal Avarsang2021-09-15.pdf'),
(39, 21, 18, 5000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sowmya patil2021-09-15.pdf'),
(40, 22, 18, 5000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Priyanka lokur2021-09-15.pdf'),
(41, 34, 1, 3000, 2000, 1000, 'Part Payment', '2021-10-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nagarajkumar. Malatesh. Talawar2021-09-16.pdf'),
(42, 35, 3, 3000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Basavtej N Patil2021-09-17.pdf'),
(43, 36, 19, 6000, 6000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Anusha Joshi2021-09-21.pdf'),
(44, 37, 20, 23000, 11500, 11500, 'Part Payment', '2021-10-15', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Suraj Tanaji Gajakosh2021-09-22.pdf'),
(45, 39, 5, 6000, 3000, 3000, 'Part Payment', '2021-10-26', 'UPI transaction', 'phone pay', NULL, 'HajiAli MS2021-10-05.pdf'),
(46, 40, 5, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Bharati Kusoji2021-10-07.pdf'),
(47, 33, 3, 3000, 1000, 0, 'Full Payment', NULL, 'Net Banking', 'phone pay', NULL, 'Sukhavindersingh Thakur2021-10-07.pdf'),
(48, 31, 5, 6000, 3000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Kanchan satush sankangoudar2021-10-12.pdf'),
(49, 32, 5, 6000, 3000, 0, 'Part Payment', '2021-10-12', 'UPI transaction', 'Google Pay', NULL, 'Abhsihek bhavikatti2021-10-12.pdf'),
(50, 28, 6, 12000, 6000, 0, 'Part Payment', '2021-10-13', 'UPI transaction', 'phone pay', NULL, 'Anuradha Katti2021-10-13.pdf'),
(51, 41, 3, 3000, 1000, 2000, 'Part Payment', '2021-10-30', 'Cash', 'Received By Athar', NULL, 'Manoj M Hatalageri2021-10-19.pdf'),
(52, 42, 3, 3000, 3000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sakshi Kampli2021-10-21.pdf'),
(53, 43, 5, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Sneha2021-10-22.pdf'),
(54, 44, 22, 5500, 2500, 3000, 'Part Payment', '2021-10-31', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Harish Chavan2021-10-23.pdf'),
(55, 45, 5, 6000, 3000, 3000, 'Part Payment', '2021-11-22', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Pavan Annigeri2021-10-25.pdf'),
(56, 46, 3, 3000, 3000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Ujwal S Bhavikatti2021-10-29.pdf'),
(57, 47, 15, 15000, 10000, 5000, 'Part Payment', '2021-11-30', 'UPI transaction', 'phone pay', NULL, 'Bhavana2021-10-30.pdf'),
(58, 48, 5, 6000, 1000, 5000, 'Part Payment', '2021-11-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Rekha Naganagouda Hongal2021-10-30.pdf'),
(59, 39, 5, 6000, 3000, 0, 'Full Payment', '2021-11-02', 'UPI transaction', 'phone Pay', NULL, 'HajiAli MS2021-11-02.pdf'),
(60, 49, 22, 10000, 6000, 4000, 'Part Payment', '2021-12-08', 'UPI transaction', 'phone Pay', NULL, 'Ayaz kagazi2021-11-08.pdf'),
(61, 48, 5, 6000, 5000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Rekha Naganagouda Hongal2021-11-08.pdf'),
(62, 41, 3, 3000, 2000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Manoj M Hatalageri2021-11-09.pdf'),
(63, 34, 1, 3000, 1000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nagarajkumar. Malatesh. Talawar2021-11-09.pdf'),
(64, 45, 5, 6000, 3000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Pavan Annigeri2021-11-10.pdf'),
(65, 44, 22, 5500, 2500, 3000, 'Part Payment', '2021-11-30', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Harish Chavan2021-11-10.pdf'),
(66, 50, 3, 3000, 3000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Maitri Sulakhe2021-11-15.pdf'),
(67, 51, 6, 15000, 5000, 10000, 'Part Payment', '2021-12-08', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vasudha2021-11-24.pdf'),
(68, 52, 3, 6000, 3000, 3000, 'Part Payment', '2021-12-14', 'UPI transaction', 'phone Pay', NULL, 'Varsha Patil2021-11-30.pdf'),
(69, 53, 24, 15000, 1000, 14000, 'Part Payment', '2021-12-06', 'UPI transaction', 'phone Pay', NULL, 'Netravati Patil2021-12-01.pdf'),
(70, 54, 3, 3000, 2000, 1000, 'Part Payment', '2021-12-08', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Premkishan Ainapur2021-12-01.pdf'),
(71, 55, 3, 3000, 2000, 1000, 'Part Payment', '2021-12-08', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Tarun Karigar2021-12-01.pdf'),
(72, 47, 15, 15000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Bhavana2021-12-01.pdf'),
(73, 53, 24, 15000, 4000, 10000, 'Part Payment', '2022-01-08', 'UPI transaction', 'phone pay', NULL, 'Netravati Patil2021-12-08.pdf'),
(74, 51, 6, 15000, 10000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vasudha2021-12-13.pdf'),
(75, 57, 6, 15000, 5000, 10000, 'Part Payment', '2022-01-20', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Gayatri Naik2021-12-20.pdf'),
(76, 56, 6, 15000, 5000, 10000, 'Part Payment', '2022-01-20', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Veena Harikantra2021-12-20.pdf'),
(77, 58, 2, 2500, 1000, 1500, 'Part Payment', '2022-01-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nagarajkumar. Malatesh. Talawar2021-12-21.pdf'),
(78, 59, 5, 6000, 3000, 3000, 'Part Payment', '2022-01-05', 'UPI transaction', 'phone pay', NULL, 'VINAY V KAMMAR2021-12-21.pdf'),
(79, 54, 3, 3000, 1000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Premkishan Ainapur2021-12-28.pdf'),
(80, 55, 3, 3000, 1000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Tarun Karigar2021-12-28.pdf'),
(81, 61, 6, 15000, 5000, 10000, 'Part Payment', '2022-02-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Mohammed Suhail Asundi2022-01-01.pdf'),
(82, 60, 6, 15000, 5000, 10000, 'Part Payment', '2022-02-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Mohammed Abrar Rotiwale2022-01-01.pdf'),
(83, 62, 6, 15000, 7000, 8000, 'Part Payment', '2022-02-06', 'UPI transaction', 'Google Pay', NULL, 'Vanita S Sagrekar2022-01-06.pdf'),
(84, 63, 6, 12000, 4000, 8000, 'Part Payment', '2022-01-12', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vaishnavi Sarjoshi2022-01-10.pdf'),
(85, 53, 24, 15000, 5000, 10000, 'Part Payment', '2022-02-07', 'UPI transaction', 'phone pay', NULL, 'Netravati Patil2022-01-14.pdf'),
(86, 64, 26, 500, 500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Tasmiya M Shaikh2022-01-22.pdf'),
(87, 65, 6, 15000, 7500, 7500, 'Part Payment', '2022-02-28', 'UPI transaction', 'phone Pay', NULL, 'Samuel V Dandin2022-01-31.pdf'),
(88, 56, 6, 15000, 5000, 10000, 'Part Payment', '2022-02-28', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Veena Harikantra2022-01-31.pdf'),
(89, 63, 6, 12000, 2000, 6000, 'Part Payment', '2022-02-16', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vaishnavi Sarjoshi2022-01-31.pdf'),
(90, 57, 6, 15000, 5000, 10000, 'Part Payment', '2022-02-28', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Gayatri Naik2022-01-31.pdf'),
(91, 66, 6, 15000, 15000, 0, 'Full Payment', NULL, 'Cash', 'phone pay', NULL, 'Spoorthi Kammar2022-02-01.pdf'),
(92, 67, 3, 3500, 2000, 1500, 'Part Payment', '2022-02-11', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Rakesh Naik2022-02-05.pdf'),
(93, 68, 1, 8000, 8000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Mahesh Angadi2022-02-10.pdf'),
(94, 58, 2, 2500, 1500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nagarajkumar. Malatesh. Talawar2022-02-10.pdf'),
(95, 59, 5, 6000, 3000, 3000, 'Full Payment', '2022-02-10', 'UPI transaction', 'phone pay', NULL, 'VINAY V KAMMAR2022-02-10.pdf'),
(96, 53, 24, 15000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Netravati Patil2022-02-10.pdf'),
(97, 67, 3, 3500, 1500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Rakesh Naik2022-02-13.pdf'),
(98, 69, 3, 3500, 2000, 1500, 'Part Payment', '2022-02-28', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Mallikarjungouda I Patil2022-02-14.pdf'),
(99, 70, 3, 3500, 3500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Megha Marigoudar2022-02-17.pdf'),
(100, 71, 6, 15000, 7000, 8000, 'Part Payment', '2022-03-22', 'Cash', 'cash received', NULL, 'Fouziya I Byali2022-02-22.pdf'),
(101, 72, 6, 15000, 5000, 10000, 'Part Payment', '2022-03-23', 'Net Banking', 'phone pay', NULL, 'Pooja Chavoor2022-02-23.pdf'),
(102, 73, 15, 15000, 15000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Kiran M Patted2022-02-24.pdf'),
(103, 74, 3, 9000, 5000, 4000, 'Part Payment', '2022-04-01', 'Cash', 'cash received', NULL, 'Varun Kapali2022-03-01.pdf'),
(104, 56, 6, 15000, 5000, 0, 'Full Payment', NULL, 'Cash', 'cash received', NULL, 'Veena Harikantra2022-03-01.pdf'),
(105, 75, 1, 5000, 3000, 2000, 'Part Payment', '2022-03-30', 'UPI transaction', 'phone Pay', NULL, 'Anoop H C2022-03-07.pdf'),
(106, 65, 6, 15000, 7500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Samuel V Dandin2022-03-09.pdf'),
(107, 76, 1, 2500, 500, 2000, 'Part Payment', '2022-03-24', 'Cash', 'cash received', NULL, 'Darshan Jadhav2022-03-17.pdf'),
(108, 57, 6, 15000, 5000, 0, 'Full Payment', NULL, 'Cash', 'cash received', NULL, 'Gayatri Naik2022-03-17.pdf'),
(109, 71, 6, 15000, 8000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Fouziya I Byali2022-03-21.pdf'),
(110, 77, 27, 15000, 8000, 7000, 'Part Payment', '2022-04-21', 'UPI transaction', 'phone Pay', NULL, 'Harsha Jigajinni2022-03-21.pdf'),
(111, 72, 6, 15000, 10000, 0, 'Full Payment', NULL, 'Net Banking', 'phone Pay', NULL, 'Pooja Chavoor2022-03-22.pdf'),
(112, 78, 27, 15000, 8000, 7000, 'Part Payment', '2022-04-26', 'UPI transaction', 'phone pay', NULL, 'Nanda F Karigar2022-03-26.pdf'),
(113, 76, 1, 2500, 1000, 1000, 'Part Payment', '2022-04-11', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Darshan Jadhav2022-04-04.pdf'),
(114, 81, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'cash received', NULL, 'Shree Shirahatti2022-04-05.pdf'),
(115, 82, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sachit Reddy2022-04-13.pdf'),
(116, 83, 3, 3500, 1000, 2500, 'Part Payment', '2022-04-30', 'Cash', 'Received By Athar', NULL, 'Abhishek Hanabaratti2022-04-16.pdf'),
(117, 84, 3, 3500, 2000, 1500, 'Part Payment', '2022-04-30', 'Cash', 'Received By Athar', NULL, 'Hrithik Koravar2022-04-16.pdf'),
(118, 85, 3, 3500, 2000, 1500, 'Part Payment', '2022-05-16', 'Cash', 'Received By Athar', NULL, 'Rahul Mathad2022-04-16.pdf'),
(119, 86, 6, 15000, 2000, 13000, 'Part Payment', '2022-04-25', 'Cash', 'Received By Athar', NULL, 'Arun Kumar2022-04-18.pdf'),
(120, 87, 28, 30000, 10000, 20000, 'Part Payment', '2022-05-22', 'UPI transaction', 'phone Pay', NULL, 'Amrut Haladi2022-04-22.pdf'),
(121, 88, 28, 30000, 10000, 20000, 'Part Payment', '2022-05-22', 'Cash', 'Received By Athar', NULL, 'Amogh Haladi2022-04-22.pdf'),
(122, 89, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Yashoda Sogi2022-04-24.pdf'),
(123, 90, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'UPI transaction', 'Google Pay', NULL, 'Aishwarya Kulkarni2022-04-24.pdf'),
(124, 91, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sahana Jadhav2022-04-24.pdf'),
(125, 92, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sneha Sachin Ghorpade2022-04-24.pdf'),
(126, 93, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Megha Kittur2022-04-24.pdf'),
(127, 94, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nikshita Shetty2022-04-24.pdf'),
(128, 95, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vaishnavi Kamble2022-04-24.pdf'),
(129, 96, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vaishnavi Kulkarni2022-04-25.pdf'),
(130, 97, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Srushti M Kittur2022-04-25.pdf'),
(131, 98, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sameen Taj2022-04-25.pdf'),
(132, 99, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Jyoti C Sutagatti2022-04-25.pdf'),
(133, 100, 2, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Harshita Raju Wani2022-04-25.pdf'),
(134, 101, 5, 1500, 1000, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Chaitra Vijay Pishe2022-04-26.pdf'),
(135, 102, 5, 1500, 500, 1000, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Savita Payappa Jainar2022-04-27.pdf'),
(136, 76, 1, 2500, 500, 500, 'Part Payment', '2022-05-02', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Darshan Jadhav2022-04-29.pdf'),
(137, 103, 14, 8000, 2000, 6000, 'Part Payment', '2022-05-23', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Divya Venkatesh Raikar2022-04-29.pdf'),
(138, 104, 15, 20000, 10000, 10000, 'Part Payment', '2022-06-01', 'UPI transaction', 'phonePe(T2205011215074896753735)', NULL, 'Safa Arshiya2022-05-01.pdf'),
(139, 90, 5, 1500, 500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Aishwarya Kulkarni2022-05-02.pdf'),
(140, 91, 5, 1500, 500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Sahana Jadhav2022-05-02.pdf'),
(141, 94, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nikshita Shetty2022-05-02.pdf'),
(142, 89, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Yashoda Sogi2022-05-02.pdf'),
(143, 96, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vaishnavi Kulkarni2022-05-02.pdf'),
(144, 93, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Megha Kittur2022-05-04.pdf'),
(145, 92, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sneha Sachin Ghorpade2022-05-04.pdf'),
(146, 101, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Chaitra Vijay Pishe2022-05-04.pdf'),
(147, 97, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Srushti M Kittur2022-05-04.pdf'),
(148, 95, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vaishnavi Kamble2022-05-04.pdf'),
(149, 85, 3, 3500, 1500, 0, 'Full Payment', NULL, 'UPI transaction', 'paytm', NULL, 'Rahul Mathad2022-05-04.pdf'),
(150, 84, 3, 3500, 1500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Hrithik Koravar2022-05-04.pdf'),
(151, 99, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Jyoti C Sutagatti2022-05-05.pdf'),
(152, 98, 5, 1500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sameen Taj2022-05-05.pdf'),
(153, 77, 27, 15000, 7000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Harsha Jigajinni2022-05-05.pdf'),
(154, 106, 14, 4000, 2000, 2000, 'Part Payment', '2022-06-07', 'Cash', 'Received By Athar', NULL, 'Mangla Patil2022-05-07.pdf'),
(155, 105, 14, 4000, 2000, 2000, 'Part Payment', '2022-06-07', 'Cash', 'Received By Athar', NULL, 'Preeti Pujar2022-05-07.pdf'),
(156, 107, 26, 500, 500, 0, 'Full Payment', NULL, 'Cash', 'Received By Athar', NULL, 'Shruti Nagesh Halavar2022-05-07.pdf'),
(157, 83, 3, 3500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Abhishek Hanabaratti2022-05-09.pdf'),
(158, 102, 5, 1500, 1000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Savita Payappa Jainar2022-05-11.pdf'),
(159, 75, 1, 5000, 2000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Anoop H C2022-05-11.pdf'),
(160, 108, 14, 2000, 2000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay-5600', NULL, 'Jasmeen Halli2022-05-13.pdf'),
(161, 109, 14, 2000, 2000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay-6143', NULL, 'Umashri Sahadev Hawaldar2022-05-13.pdf'),
(162, 110, 14, 2000, 2000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay-9025', NULL, 'Surekha S Dayal2022-05-13.pdf'),
(163, 111, 29, 2000, 2000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay-9447', NULL, 'Santosh Chalageri2022-05-13.pdf'),
(164, 112, 29, 2000, 2000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay-7415', NULL, 'Anuradha Anil Kumar2022-05-13.pdf'),
(165, 113, 1, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Vivekanand Parakali2022-05-13.pdf'),
(166, 114, 3, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Rajeshwari Patil2022-05-13.pdf'),
(167, 115, 7, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Radha Maraddi2022-05-16.pdf'),
(168, 116, 3, 6000, 6000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Damini A Sunkad2022-05-17.pdf'),
(169, 117, 29, 8000, 8000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Vaishnavi Kulkarni2022-05-18.pdf'),
(170, 118, 29, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Akshatha Nyamagowda2022-05-21.pdf'),
(171, 119, 1, 2500, 1000, 1500, 'Part Payment', '2022-05-31', 'UPI transaction', 'phone pay', NULL, 'Laxmi Lamani2022-05-23.pdf'),
(172, 120, 1, 5000, 5000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Akshata T B2022-05-27.pdf'),
(173, 121, 3, 8000, 4000, 4000, 'Part Payment', '2022-09-10', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Pooja Patil2022-05-27.pdf'),
(174, 122, 29, 6000, 6000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Tanuja S M2022-05-30.pdf'),
(175, 125, 3, 8000, 8000, 0, 'Full Payment', NULL, 'Net Banking', 'IMPS', NULL, 'Riya Revankar2022-05-31.pdf'),
(176, 78, 27, 15000, 7000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Nanda F Karigar2022-05-31.pdf'),
(177, 76, 1, 2500, 500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Darshan Jadhav2022-06-01.pdf'),
(178, 119, 1, 2500, 1500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Laxmi Lamani2022-06-01.pdf'),
(179, 123, 14, 4000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'Google pay', NULL, 'Naheed Khan Shivalli2022-06-01.pdf'),
(180, 124, 14, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Najmusahar kalkoti2022-06-01.pdf'),
(181, 103, 14, 8000, 4000, 2000, 'Part Payment', '2022-07-03', 'UPI transaction', 'phone pay', NULL, 'Divya Venkatesh Raikar2022-06-03.pdf'),
(182, 126, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Olivia Dsilva2022-06-13.pdf'),
(183, 127, 1, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Anushka Yaligar2022-06-13.pdf'),
(184, 88, 28, 30000, 10000, 10000, 'Part Payment', '2022-07-08', 'Cash', 'Paid to Shankar', NULL, 'Amogh Haladi2022-06-14.pdf'),
(185, 87, 28, 30000, 10000, 10000, 'Part Payment', '2022-07-08', 'Cash', 'Paid To shankar', NULL, 'Amrut Haladi2022-06-14.pdf'),
(186, 128, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Geeta Mirji2022-06-22.pdf'),
(187, 129, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Sumedha Deshpande2022-06-22.pdf'),
(188, 130, 29, 6000, 6000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Sooryanarayan Bhat2022-06-23.pdf'),
(189, 131, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Received By Athar', NULL, 'Prajwal M Salimath2022-06-26.pdf'),
(190, 132, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Received By Athar', NULL, 'prajwal s karigoudar2022-06-27.pdf'),
(191, 133, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Patadayya G Chikkamath2022-06-28.pdf'),
(192, 134, 3, 4000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Goudappa Patil2022-06-30.pdf'),
(193, 135, 5, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Received By Athar', NULL, 'Ibrahim Sureban2022-06-30.pdf'),
(194, 136, 5, 6000, 6000, 0, 'Full Payment', NULL, 'Cash', 'Received By Athar', NULL, 'Modinsab2022-06-30.pdf'),
(195, 138, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Prasanna Teja O2022-07-02.pdf'),
(196, 139, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Chaitanya O2022-07-02.pdf'),
(197, 137, 2, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Ashwini Pujari2022-07-05.pdf'),
(198, 140, 19, 7000, 2000, 5000, 'Part Payment', '2022-07-08', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Manisha Hatalageri2022-07-06.pdf'),
(199, 141, 3, 4000, 1000, 3000, 'Part Payment', '2022-07-20', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Umesh Channayya Sheelimath2022-07-06.pdf'),
(200, 142, 4, 4000, 3500, 500, 'Part Payment', '2022-07-11', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Megha Marigoudar2022-07-07.pdf'),
(201, 143, 5, 6000, 5000, 1000, 'Part Payment', '2022-07-07', 'UPI transaction', 'Received By Athar', NULL, 'Ramesh G B2022-07-07.pdf'),
(202, 143, 5, 6000, 1000, 0, 'Full Payment', NULL, 'UPI transaction', 'Received By Athar', NULL, 'Ramesh G B2022-07-07.pdf'),
(203, 140, 19, 7000, 1500, 3500, 'Part Payment', '2022-08-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Manisha Hatalageri2022-07-08.pdf'),
(204, 144, 3, 4000, 2000, 2000, 'Part Payment', '2022-07-22', 'Cash', 'Received By Athar', NULL, 'Vishwa M Badachi2022-07-08.pdf'),
(205, 145, 15, 20000, 10000, 10000, 'Part Payment', '2022-07-18', 'UPI transaction', 'phone Pay', NULL, 'M Rahul2022-07-09.pdf'),
(206, 146, 2, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Nishmitha Poojari2022-07-12.pdf'),
(207, 147, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Atharv Bennur2022-07-12.pdf'),
(208, 148, 2, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Vijeta Kalal2022-07-13.pdf'),
(209, 149, 1, 2500, 2500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Kalavati Mallapur2022-07-14.pdf'),
(210, 142, 4, 4000, 500, 0, 'Full Payment', NULL, 'Net Banking', 'phone pay', NULL, 'Megha Marigoudar2022-07-14.pdf'),
(211, 150, 2, 2500, 2500, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay', NULL, 'Laxmi Lamani2022-07-18.pdf'),
(212, 151, 5, 6000, 3000, 3000, 'Part Payment', '2022-07-26', 'UPI transaction', 'phone Pay', NULL, 'Varsha Patil2022-07-19.pdf'),
(213, 144, 3, 4000, 2000, 0, 'Full Payment', NULL, 'Cash', 'cash received', NULL, 'Vishwa M Badachi2022-07-21.pdf'),
(214, 104, 15, 20000, 5000, 5000, 'Part Payment', '2022-08-01', 'UPI transaction', 'phone Pay', NULL, 'Safa Arshiya2022-07-21.pdf'),
(215, 141, 3, 4000, 1000, 2000, 'Part Payment', '2022-08-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Umesh Channayya Sheelimath2022-07-26.pdf'),
(216, 152, 1, 5000, 5000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Spoorti B Patil2022-07-30.pdf'),
(217, 153, 1, 5000, 5000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Komal Giriyappanavar2022-07-30.pdf'),
(218, 145, 15, 20000, 10000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone Pay on 8007961759', NULL, 'M Rahul2022-07-30.pdf'),
(219, 154, 19, 8000, 2000, 6000, 'Part Payment', '2022-08-12', 'UPI transaction', 'phone Pay(T2207311345071805278895)', NULL, 'Chandrashekhar Ambanna2022-07-31.pdf'),
(220, 157, 19, 8000, 2000, 6000, 'Part Payment', '2022-08-12', 'Cash', 'Received By Athar', NULL, 'Abhishek Patil2022-08-01.pdf'),
(221, 140, 19, 7000, 3500, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Manisha Hatalageri2022-08-01.pdf'),
(222, 156, 3, 4000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Nivedita Panchagavi2022-08-02.pdf'),
(223, 155, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Afnan Arif Gudagi2022-08-02.pdf'),
(224, 158, 3, 4000, 1500, 2500, 'Part Payment', '2022-08-05', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Kavya Yemmetti2022-08-04.pdf'),
(225, 158, 3, 4000, 1500, 0, 'Full Payment', NULL, 'Net Banking', 'phone Pay', NULL, 'Kavya Yemmetti2022-08-05.pdf'),
(226, 158, 3, 4000, 1000, 0, 'Full Payment', NULL, 'Net Banking', 'phone Pay', NULL, 'Kavya Yemmetti2022-08-05.pdf'),
(227, 121, 3, 8000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'Google Pay', NULL, 'Pooja Patil2022-08-06.pdf'),
(228, 154, 19, 8000, 3000, 3000, 'Part Payment', '2022-08-19', 'Net Banking', 'phone pay', NULL, 'Chandrashekhar Ambanna2022-08-06.pdf'),
(229, 151, 5, 6000, 3000, 0, 'Full Payment', NULL, 'Net Banking', 'phone Pay', NULL, 'Varsha Patil2022-08-10.pdf'),
(230, 157, 19, 8000, 3000, 3000, 'Part Payment', '2022-08-30', 'Net Banking', 'Paid to Hifza Shaikh', NULL, 'Abhishek Patil2022-08-11.pdf'),
(231, 159, 3, 4000, 2000, 2000, 'Part Payment', '2022-08-22', 'Cash', 'Paid to Hifza Shaikh', NULL, 'OM Ashok Gaikwad2022-08-13.pdf'),
(232, 141, 3, 4000, 1000, 1000, 'Part Payment', '2022-09-01', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Umesh Channayya Sheelimath2022-08-16.pdf'),
(233, 160, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Prasanna Teja O2022-08-16.pdf'),
(234, 104, 15, 20000, 5000, 0, 'Full Payment', NULL, 'Net Banking', 'phone pay', NULL, 'Safa Arshiya2022-08-20.pdf'),
(235, 161, 3, 4000, 4000, 0, 'Full Payment', NULL, 'UPI transaction', 'phone pay', NULL, 'Pooja Nekar2022-08-22.pdf'),
(236, 162, 31, 5000, 2500, 2500, 'Part Payment', '2022-09-03', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Karthik Pattar2022-08-22.pdf'),
(237, 163, 3, 4000, 4000, 0, 'Full Payment', NULL, 'Cash', 'Paid to Hifza Shaikh', NULL, 'Haripriya Mallareddy2022-08-22.pdf'),
(238, 164, 5, 4000, 2000, 2000, 'Part Payment', '2022-08-29', 'UPI transaction', 'phone Pay', NULL, 'Achyut Mutalik2022-08-22.pdf'),
(239, 165, 5, 4000, 2000, 2000, 'Part Payment', '2022-08-29', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Samarath Shetty2022-08-22.pdf'),
(240, 166, 5, 6000, 3000, 3000, 'Part Payment', '2022-09-05', 'Debit/Credit Card', 'CARD', NULL, 'prasanna lakshmi2022-08-22.pdf'),
(241, 167, 15, 22000, 10000, 12000, 'Part Payment', '2022-09-14', 'Cash', 'Paid to Hifza Shaikh', NULL, 'Yusuf SH2022-08-26.pdf'),
(242, 168, 15, 22000, 11000, 11000, 'Part Payment', '2022-09-30', 'Net Banking', 'phone Pay', NULL, 'Joseph Dsouza2022-08-30.pdf'),
(243, 159, 3, 4000, 2000, 0, 'Full Payment', NULL, 'Net Banking', 'phone Pay', NULL, 'OM Ashok Gaikwad2022-08-30.pdf'),
(244, 164, 5, 4000, 2000, 0, 'Full Payment', NULL, 'Net Banking', 'phone Pay', NULL, 'Achyut Mutalik2022-09-01.pdf');

-- --------------------------------------------------------

--
-- Stand-in structure for view `feescollectionlastm`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `feescollectionlastm`;
CREATE TABLE IF NOT EXISTS `feescollectionlastm` (
`Id` int
,`Name` varchar(100)
,`Course` varchar(200)
,`TotalFees` int
,`DueDate` date
,`PaidFees` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `jobdetails`
--

DROP TABLE IF EXISTS `jobdetails`;
CREATE TABLE IF NOT EXISTS `jobdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jobid` int NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JobLocation` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RemoteWork` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobid` (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobdetails`
--

INSERT INTO `jobdetails` (`id`, `jobid`, `Name`, `Description`, `JobLocation`, `RemoteWork`) VALUES
(1, 12, 'Front end Developer', 'saddasd', 'Banglore', 'Yes'),
(3, 12, 'sad', 'sbmndf', 'Banglore, Karnataka', 'Yes'),
(4, 12, 'Front end Developer PHP', 'PHP', 'Mysore', 'No'),
(5, 1, 'Software Engineer', 'Software Engineer', 'Bangalore', 'No'),
(6, 2, 'Software Testing', 'Software Testing', 'Bangalore', 'No');

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthlyincome`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `monthlyincome`;
CREATE TABLE IF NOT EXISTS `monthlyincome` (
`monthNum` int
,`AmountCollected` decimal(65,0)
,`MONTH` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Status` int NOT NULL,
  `Category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Id`, `Message`, `Status`, `Category`) VALUES
(1, 'There Has Been an enquiry for Internship', 1, 'internship'),
(2, 'There Has Been an enquiry for Training', 1, 'training'),
(3, 'There Has Been an enquiry for Services', 1, 'services'),
(4, 'There Has Been an enquiry for Internship', 1, 'internship'),
(5, 'There Has Been an enquiry for Training', 1, 'training'),
(6, 'There Has Been an enquiry for Training', 1, 'training'),
(7, 'There Has Been an enquiry for Internship', 1, 'internship'),
(8, 'There Has Been an enquiry for Training', 1, 'training'),
(9, 'There Has Been an enquiry for Internship', 1, 'internship'),
(10, 'There Has Been an enquiry for Training', 1, 'training'),
(11, 'There Has Been an enquiry for Services', 1, 'services'),
(12, 'There Has Been an enquiry for Services', 1, 'services'),
(14, 'There Has Been an enquiry for democlass', 1, 'democlass'),
(15, 'There Has Been an enquiry for democlass', 1, 'democlass'),
(16, 'There Has Been an enquiry for Internship', 1, 'internship'),
(17, 'There Has Been an enquiry for Internship', 1, 'internship'),
(18, 'There Has Been an enquiry for Internship', 1, 'internship'),
(19, 'There Has Been an enquiry for Training', 1, 'training'),
(20, 'There Has Been an enquiry for Training', 1, 'training'),
(21, 'There Has Been an enquiry for Internship', 1, 'internship'),
(22, 'There Has Been an enquiry for Internship', 1, 'internship'),
(23, 'There Has Been an enquiry for Services', 1, 'services'),
(24, 'There Has Been an enquiry for democlass', 1, 'democlass'),
(25, 'There Has Been an enquiry for Training', 1, 'training'),
(26, 'There Has Been an enquiry for Training', 1, 'training'),
(27, 'There Has Been an enquiry for Training', 1, 'training'),
(28, 'There Has Been an enquiry for Training', 1, 'training'),
(29, 'There Has Been an enquiry for Training', 1, 'training'),
(30, 'There Has Been an enquiry for Training', 1, 'training'),
(31, 'There Has Been an enquiry for Training', 1, 'training'),
(32, 'There Has Been an enquiry for Training', 1, 'training'),
(34, 'There Has Been an enquiry for democlass', 1, 'democlass'),
(35, 'There Has Been an enquiry for Training', 1, 'training'),
(38, 'There Has Been an enquiry for democlass', 1, 'democlass'),
(39, 'There Has Been an enquiry for democlass', 1, 'democlass'),
(40, 'There Has Been an enquiry for Training', 1, 'training'),
(41, 'There Has Been an enquiry for Training', 1, 'training'),
(42, 'There Has Been an enquiry for Training', 1, 'training'),
(43, 'There Has Been an enquiry for Services', 1, 'services'),
(44, 'There Has Been an enquiry for Services', 1, 'services'),
(45, 'There Has Been an enquiry for Training', 1, 'training'),
(46, 'There Has Been an enquiry for Training', 1, 'training'),
(47, 'There Has Been an enquiry for Training', 1, 'training'),
(48, 'There Has Been an enquiry for Training', 1, 'training'),
(49, 'There Has Been an enquiry for Training', 1, 'training'),
(52, 'There Has Been an enquiry for Internship', 1, 'Internship-tab-content'),
(53, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(54, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(55, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(56, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(57, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(58, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(59, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(60, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(61, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(62, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(63, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(64, 'There Has Been an enquiry for Internship', 1, 'Internship-tab-content'),
(65, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(66, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(67, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(68, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(69, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(70, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(71, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(72, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(73, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(74, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(75, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(76, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(77, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(78, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(79, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(80, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(81, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(82, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(83, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(84, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(85, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(86, 'There Has Been an enquiry for Internship', 1, 'Internship-tab-content'),
(87, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(88, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(89, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(90, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(91, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(92, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(93, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(94, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(95, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(96, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(97, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(98, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(99, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(100, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(101, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(102, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(103, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(104, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(105, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(106, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(107, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(108, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(109, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(110, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(111, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(112, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(113, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(114, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(115, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(116, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(117, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(118, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(119, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(120, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(121, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(122, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(123, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(124, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(125, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(126, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(127, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(128, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(129, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(130, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(131, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(132, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(133, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(134, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(135, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(136, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(137, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(138, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(139, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(140, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(141, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(142, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(143, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(144, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(145, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(146, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(147, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(148, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(149, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(150, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(151, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(152, 'There Has Been an enquiry for Internship', 1, 'Internship-tab-content'),
(153, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(154, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(155, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(156, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(157, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(158, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(159, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(160, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(161, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content'),
(162, '', 1, ''),
(163, '', 1, ''),
(164, '', 1, ''),
(165, '', 1, ''),
(166, '', 1, ''),
(167, '', 1, ''),
(168, '', 1, ''),
(169, '', 1, ''),
(170, '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `layout`, `data`, `created_at`) VALUES
(2, 'software-testing', 'master', '{\"html\":[\"[block slug=\\\"features\\\" id=\\\"IDLMHSR4BUQTOK00\\\"][block slug=\\\"features\\\" id=\\\"IDLMHSR4C4CMPYM3\\\"][block slug=\\\"heading\\\" id=\\\"IDLN09PXIBX4F800\\\"][block slug=\\\"Carousel\\\" id=\\\"IDLMJB13NVCNZ371\\\"][block slug=\\\"footer\\\" id=\\\"IDLN09XE2UVK65I1\\\"]\"],\"components\":[[{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"features\",\"id\":\"IDLMHSR4BUQTOK00\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"features\",\"id\":\"IDLMHSR4C4CMPYM3\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"heading\",\"id\":\"IDLN09PXIBX4F800\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"Carousel\",\"id\":\"IDLMJB13NVCNZ371\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"footer\",\"id\":\"IDLN09XE2UVK65I1\"}}]],\"css\":\"* { box-sizing: border-box; } body {margin: 0;}#it1hjt{background-color:rgba(0, 0, 0, 0.2);}\",\"style\":[{\"selectors\":[{\"name\":\"it1hjt\",\"label\":\"it1hjt\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"rgba(0, 0, 0, 0.2)\"}}],\"blocks\":{\"en\":{\"IDLMHSR4BUQTOK00\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLMHSPIBXJZBGB2\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLMHSPIBXJZBGB2\\\"><\\/div>\",\"is_html\":true},\"IDLMHSR4C4CMPYM3\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLMHSPNJJ1WMTH4\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLMHSPNJJ1WMTH4\\\"><\\/div>\",\"is_html\":true},\"IDLN09PXIBX4F800\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLN09NOGIXN73N1\"}},\"blocks\":[],\"html\":\"<nav class=\\\"navbar bg-light fixed-top navbar-expand-md IDLN09NOGIXN73N1\\\">\\n    <div class=\\\"container-fluid\\\"><a href=\\\"#\\\" class=\\\"navbar-brand IDLN09NOGKQNPF82\\\">DharwadHubballiTutor<\\/a><button type=\\\"button\\\" data-bs-toggle=\\\"offcanvas\\\" data-bs-target=\\\"#offcanvasNavbar\\\" aria-controls=\\\"offcanvasNavbar\\\" data-raw-content=\\\"true\\\" class=\\\"navbar-toggler\\\"><span class=\\\"navbar-toggler-icon\\\"><\\/span><\\/button>\\n        <div tabindex=\\\"-1\\\" aria-labelledby=\\\"offcanvasNavbarLabel\\\" id=\\\"offcanvasNavbar\\\" class=\\\"offcanvas offcanvas-end\\\">\\n            <div class=\\\"offcanvas-header\\\">\\n                <h5 data-raw-content=\\\"true\\\" id=\\\"offcanvasNavbarLabel\\\" class=\\\"offcanvas-title\\\">Offcanvas<\\/h5><button type=\\\"button\\\" data-bs-dismiss=\\\"offcanvas\\\" aria-label=\\\"Close\\\" data-raw-content=\\\"true\\\" class=\\\"btn-close IDLN09NOGO4BELX3\\\"><\\/button>\\n            <\\/div>\\n            <div class=\\\"offcanvas-body\\\">\\n                <ul data-raw-content=\\\"true\\\" class=\\\"navbar-nav justify-content-end flex-grow-1 pe-3\\\">\\n                    <li class=\\\"nav-item\\\"><a aria-current=\\\"page\\\" data-cke-saved-href=\\\"#\\\" href=\\\"#\\\" class=\\\"nav-link active\\\">Home<\\/a><\\/li>\\n                    <li class=\\\"nav-item\\\"><a data-cke-saved-href=\\\"#\\\" href=\\\"#\\\" class=\\\"nav-link\\\">Link<\\/a><\\/li>\\n                    <li class=\\\"nav-item dropdown\\\"><a data-cke-saved-href=\\\"#\\\" href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Dropdown<\\/a>\\n                        <ul class=\\\"dropdown-menu\\\">\\n                            <li><a data-cke-saved-href=\\\"#\\\" href=\\\"#\\\" class=\\\"dropdown-item\\\">Action<\\/a><\\/li>\\n                            <li><a data-cke-saved-href=\\\"#\\\" href=\\\"#\\\" class=\\\"dropdown-item\\\">Another action<\\/a><\\/li>\\n                            <li>\\n                                <hr class=\\\"dropdown-divider\\\">\\n                            <\\/li>\\n                            <li><a data-cke-saved-href=\\\"#\\\" href=\\\"#\\\" class=\\\"dropdown-item\\\">Something else here<\\/a><\\/li>\\n                        <\\/ul>\\n                    <\\/li>\\n                <\\/ul>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/nav>\",\"is_html\":true},\"IDLMJB13NVCNZ371\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLMJ1MMJJ0VJH91\"}},\"blocks\":[],\"html\":\"<div data-bs-ride=\\\"carousel\\\" id=\\\"carouselExampleIndicators\\\" class=\\\"carousel slide IDLMJ1MMJJ0VJH91\\\">\\n    <div class=\\\"carousel-indicators\\\"><button type=\\\"button\\\" data-bs-target=\\\"#carouselExampleIndicators\\\" data-bs-slide-to=\\\"0\\\" aria-current=\\\"true\\\" aria-label=\\\"Slide 1\\\" data-raw-content=\\\"true\\\" class=\\\"active IDLMJ1MMJKHMAAH2\\\"><\\/button><button type=\\\"button\\\" data-bs-target=\\\"#carouselExampleIndicators\\\" data-bs-slide-to=\\\"1\\\" aria-label=\\\"Slide 2\\\" data-raw-content=\\\"true\\\" class=\\\"IDLMJ1MMJMYEPH33\\\"><br><\\/button><button type=\\\"button\\\" data-bs-target=\\\"#carouselExampleIndicators\\\" data-bs-slide-to=\\\"2\\\" aria-label=\\\"Slide 3\\\" data-raw-content=\\\"true\\\" class=\\\"IDLMJ1MMJNSUSN64\\\"><br><\\/button><\\/div>\\n    <div class=\\\"carousel-inner\\\">\\n        <div class=\\\"carousel-item active\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/b79fde4bcde590cfb4950f064ed07a0cc62e4714\\/80-black-kitchen-cabinets-designs-ideas.jpg\\\" alt=\\\"...\\\" class=\\\"d-block w-100\\\"><\\/div>\\n        <div class=\\\"carousel-item\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/6f058f4fbb7b20f8b29b3d1836c82ac628a792e7\\/sample2.jpg\\\" alt=\\\"...\\\" class=\\\"d-block w-100\\\"><\\/div>\\n        <div class=\\\"carousel-item\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/cfdadf85f65cf1bf0678b7927be7c149c8f04779\\/Guangdong-Foshan-Manufacturer-Almirah-Wardrobes-House-Bedroom-White-High-Gloss-6-Door-Wood-Wardrobe-Furniture.jpg\\\" alt=\\\"...\\\" class=\\\"d-block w-100\\\"><\\/div>\\n    <\\/div><button type=\\\"button\\\" data-bs-target=\\\"#carouselExampleIndicators\\\" data-bs-slide=\\\"prev\\\" data-raw-content=\\\"true\\\" class=\\\"carousel-control-prev\\\"><span class=\\\"visually-hidden\\\">Previous<\\/span><\\/button><button type=\\\"button\\\" data-bs-target=\\\"#carouselExampleIndicators\\\" data-bs-slide=\\\"next\\\" data-raw-content=\\\"true\\\" class=\\\"carousel-control-next\\\"><span class=\\\"visually-hidden\\\">Next<\\/span><\\/button>\\n<\\/div>\",\"is_html\":true},\"IDLN09XE2UVK65I1\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLN09TC0VG19751\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLN09TC0VG19751\\\">\\n    <!-- Footer -->\\n    <footer class=\\\"bg-dark text-center text-white IDLN09TC0WGDV1H2\\\">\\n        <!-- Grid container -->\\n        <div class=\\\"container p-4\\\">\\n            <!-- Section: Social media -->\\n            <section class=\\\"mb-4\\\">\\n                <!-- Facebook --><a href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-floating m-1 IDLN09TC0XB2SSE3\\\"><i data-raw-content=\\\"true\\\" class=\\\"fab fa-facebook-f\\\"><\\/i><\\/a><!-- Twitter --><a href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-floating m-1 IDLN09TC0Y5ZXV24\\\"><i data-raw-content=\\\"true\\\" class=\\\"fab fa-twitter\\\"><\\/i><\\/a><!-- Google --><a href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-floating m-1 IDLN09TC10LDBHM5\\\"><i data-raw-content=\\\"true\\\" class=\\\"fab fa-google\\\"><\\/i><\\/a><!-- Instagram --><a href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-floating m-1 IDLN09TC11P5D696\\\"><i data-raw-content=\\\"true\\\" class=\\\"fab fa-instagram\\\"><\\/i><\\/a><!-- Linkedin --><a href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-floating m-1 IDLN09TC12VD0XE7\\\"><i data-raw-content=\\\"true\\\" class=\\\"fab fa-linkedin-in\\\"><\\/i><\\/a><!-- Github --><a href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-floating m-1 IDLN09TC15KRSY28\\\"><i data-raw-content=\\\"true\\\" class=\\\"fab fa-github\\\"><\\/i><\\/a><\\/section><!-- Section: Social media -->\\n            <!-- Section: Form -->\\n            <section>\\n                <form action=\\\"\\\">\\n                    <!--Grid row-->\\n                    <div class=\\\"row d-flex justify-content-center\\\">\\n                        <!--Grid column-->\\n                        <div class=\\\"col-auto\\\">\\n                            <p data-raw-content=\\\"true\\\" class=\\\"pt-2\\\"><strong>Sign up for our newsletter<\\/strong><\\/p>\\n                        <\\/div>\\n                        <!--Grid column-->\\n                        <!--Grid column-->\\n                        <div class=\\\"col-md-5 col-12\\\">\\n                            <!-- Email input -->\\n                            <div class=\\\"form-outline form-white mb-4\\\"><input type=\\\"email\\\" id=\\\"form5Example21\\\" class=\\\"form-control IDLN09TC18BEAN39\\\"><label for=\\\"form5Example21\\\" data-raw-content=\\\"true\\\" class=\\\"form-label\\\">Email address<\\/label><\\/div>\\n                        <\\/div>\\n                        <!--Grid column-->\\n                        <!--Grid column-->\\n                        <div class=\\\"col-auto\\\">\\n                            <!-- Submit button --><button type=\\\"submit\\\" data-raw-content=\\\"true\\\" class=\\\"btn btn-outline-light mb-4\\\">\\n                                Subscribe\\n                            <\\/button><\\/div>\\n                        <!--Grid column-->\\n                    <\\/div>\\n                    <!--Grid row-->\\n                <\\/form>\\n            <\\/section><!-- Section: Form -->\\n            <!-- Section: Text -->\\n            <section class=\\\"mb-4\\\">\\n                <p data-raw-content=\\\"true\\\">Her you can write the content that you want to tell to your users<\\/p>\\n            <\\/section><!-- Section: Text -->\\n            <!-- Section: Links -->\\n            <section>\\n                <!--Grid row-->\\n                <div class=\\\"row\\\">\\n                    <!--Grid column-->\\n                    <div class=\\\"col-lg-3 col-md-6 mb-4 mb-md-0\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"text-uppercase\\\">Links<\\/h5>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled mb-0\\\">\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 1<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 2<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 3<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 4<\\/a><\\/li>\\n                        <\\/ul>\\n                    <\\/div>\\n                    <!--Grid column-->\\n                    <!--Grid column-->\\n                    <div class=\\\"col-lg-3 col-md-6 mb-4 mb-md-0\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"text-uppercase\\\">Links<\\/h5>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled mb-0\\\">\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 1<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 2<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 3<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 4<\\/a><\\/li>\\n                        <\\/ul>\\n                    <\\/div>\\n                    <!--Grid column-->\\n                    <!--Grid column-->\\n                    <div class=\\\"col-lg-3 col-md-6 mb-4 mb-md-0\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"text-uppercase\\\">Links<\\/h5>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled mb-0\\\">\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 1<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 2<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 3<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 4<\\/a><\\/li>\\n                        <\\/ul>\\n                    <\\/div>\\n                    <!--Grid column-->\\n                    <!--Grid column-->\\n                    <div class=\\\"col-lg-3 col-md-6 mb-4 mb-md-0\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"text-uppercase\\\">Links<\\/h5>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled mb-0\\\">\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 1<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 2<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 3<\\/a><\\/li>\\n                            <li><a href=\\\"#!\\\" class=\\\"text-white\\\">Link 4<\\/a><\\/li>\\n                        <\\/ul>\\n                    <\\/div>\\n                    <!--Grid column-->\\n                <\\/div>\\n                <!--Grid row-->\\n            <\\/section><!-- Section: Links -->\\n        <\\/div><!-- Grid container -->\\n        <!-- Copyright -->\\n        <div class=\\\"text-center p-3 IDLN09TC1OGF1OC10\\\">\\n            \\u00a9 2020 Copyright:\\n            <a href=\\\"https:\\/\\/dharwadhubballitutor.com\\/\\\" class=\\\"text-white IDLN09TC1OPTIAW11\\\">DharwadHubballiTutor<\\/a><\\/div><!-- Copyright -->\\n    <\\/footer><!-- Footer -->\\n<\\/div>\",\"is_html\":true}}}}', '2023-07-28 07:50:31');
INSERT INTO `pages` (`id`, `name`, `layout`, `data`, `created_at`) VALUES
(5, 'home', 'master', '{\"html\":[\"[block slug=\\\"features\\\" id=\\\"IDLMSYDVGADB1GZ0\\\"][block slug=\\\"top-section\\\" id=\\\"IDLOTZUV0TQ2LWG0\\\"][block slug=\\\"heading\\\" id=\\\"IDLQ1W1HXRCLTS42\\\"][block slug=\\\"homepage-banner\\\" id=\\\"IDLP8AUUEE5NUGY1\\\"][block slug=\\\"courses\\\" id=\\\"IDLPGR2CESJEU9T2\\\"][block slug=\\\"alumni-band\\\" id=\\\"IDLPDMI6HRP3OOF0\\\"][block slug=\\\"testimonial\\\" id=\\\"IDLP3PJBIOCDAHG4\\\"][block slug=\\\"footer\\\" id=\\\"IDLP6SWRSSWVHOV2\\\"]\"],\"components\":[[{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"features\",\"id\":\"IDLMSYDVGADB1GZ0\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"top-section\",\"id\":\"IDLOTZUV0TQ2LWG0\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"heading\",\"id\":\"IDLQ1W1HXRCLTS42\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"homepage-banner\",\"id\":\"IDLP8AUUEE5NUGY1\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"courses\",\"id\":\"IDLPGR2CESJEU9T2\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"alumni-band\",\"id\":\"IDLPDMI6HRP3OOF0\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"testimonial\",\"id\":\"IDLP3PJBIOCDAHG4\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"footer\",\"id\":\"IDLP6SWRSSWVHOV2\"}}]],\"css\":\"* { box-sizing: border-box; } body {margin: 0;}.col-md-6.aside-stretch.IDLP3NEPZ9Y665X2{background-color:#2b0b5f;}#demo2{background-color:#f1f1f1;}#i8oon{color:#2a0a5e;}#ivtwh{text-align:right;}#imfkf5{z-index:1000 !important;}.IDLOTZUT32ISA4S1{text-align:right;}@media only screen and (min-width: 768px){.col-lg-3{width:50%;}.foot{font-size:15px;}}@media only screen and (min-width: 992px){.col-lg-3{width:25%;}.foot{font-size:18px;}}@media (min-width: 1024px) and (max-width: 1439px){.foot{font-size:15px;}}\",\"style\":[{\"selectors\":[{\"name\":\"col-md-6\",\"label\":\"col-md-6\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"aside-stretch\",\"label\":\"aside-stretch\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLP3NEPZ9Y665X2\",\"label\":\"IDLP3NEPZ9Y665X2\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"#2b0b5f\"}},{\"selectors\":[{\"name\":\"col-lg-3\",\"label\":\"col-lg-3\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"width\":\"50%\"},\"mediaText\":\"only screen and (min-width: 768px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"foot\",\"label\":\"foot\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"font-size\":\"15px\"},\"mediaText\":\"only screen and (min-width: 768px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"col-lg-3\",\"label\":\"col-lg-3\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"width\":\"25%\"},\"mediaText\":\"only screen and (min-width: 992px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"foot\",\"label\":\"foot\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"font-size\":\"18px\"},\"mediaText\":\"only screen and (min-width: 992px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"foot\",\"label\":\"foot\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"font-size\":\"15px\"},\"mediaText\":\"(min-width: 1024px) and (max-width: 1439px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"demo2\",\"label\":\"demo2\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"#f1f1f1\"}},{\"selectors\":[{\"name\":\"i8oon\",\"label\":\"i8oon\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"color\":\"#2a0a5e\"}},{\"selectors\":[{\"name\":\"ivtwh\",\"label\":\"ivtwh\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"text-align\":\"right\"}},{\"selectors\":[{\"name\":\"imfkf5\",\"label\":\"imfkf5\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"z-index\":\"1000 !important\"}},{\"selectors\":[{\"name\":\"IDLOTZUT32ISA4S1\",\"label\":\"IDLOTZUT32ISA4S1\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"text-align\":\"right\"}}],\"blocks\":{\"en\":{\"IDLMSYDVGADB1GZ0\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLMSYAYOU8KRXK1\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLMSYAYOU8KRXK1\\\"><\\/div>\",\"is_html\":true},\"IDLOTZUV0TQ2LWG0\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLOTZUT32ISA4S1\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLOTZUT32ISA4S1\\\">\\n    <!-- As a link -->\\n    <nav class=\\\"navbar bg-primary container-fluid IDLOTZUT34GOEMV2\\\">\\n        <div class=\\\"container-md\\\">\\n            <div class=\\\"row text-white\\\">\\n                <div class=\\\"col-lg-4 col-md-6 align-self-center text-center\\\"><a href=\\\"#\\\" class=\\\"navbar-brand text-white IDLOTZUT35BC0IJ3\\\">DharwadHubballiTutor<\\/a><\\/div>\\n                <div class=\\\"col-lg-2 col-md-0 d-none d-lg-block align-self-center text-small\\\">\\n                    <address class=\\\"d-inline small align-content-center text-center\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-location-dot\\\"><\\/i> J.G. Nippani Complex, Gandhi Nagar, Dharwad-04\\n                    <\\/address>\\n                <\\/div>\\n                <div class=\\\"col-lg-2 col-md-0 d-none d-lg-block align-self-center text-small\\\">\\n                    <address class=\\\"d-inline small align-content-center\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-location-dot\\\"><\\/i> Plot# 26,Behind Gurudath Bhavan,Vidya Nagar,Hubballi-21\\n                    <\\/address>\\n                <\\/div>\\n                <div class=\\\"col-lg-2 col-md-3 text-md-end align-self-center text-small text-center\\\"><a href=\\\"tel: +919741237334\\\" class=\\\"small IDLOTZUT38JF81A4\\\">+91-9741-237334<\\/a><\\/div>\\n                <div class=\\\"col-lg-2 col-md-3 text-md-end align-self-center d-none d-md-block\\\"><a href=\\\"mailto:info@dharwadhubballitutor.com\\\" class=\\\"p-1 IDLOTZUT39FJXYO5\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-envelope\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.facebook.com\\/dharwadhubballitutor\\/\\\" class=\\\"p-1 IDLOTZUT3AERBKF6\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-facebook\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.instagram.com\\/dharwadhubballitutor\\/\\\" class=\\\"p-1 IDLOTZUT3B5G5LL7\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-instagram\\\"><\\/i><\\/a><a href=\\\" https:\\/\\/www.linkedin.com\\/company\\/dharwadhubballitutor\\\" class=\\\"p-1 IDLOTZUT3CHE7OQ8\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-linkedin\\\"><\\/i><\\/a><\\/div>\\n            <\\/div>\\n            <div>\\n\\n            <\\/div>\\n        <\\/div>\\n    <\\/nav>\\n<\\/div>\",\"is_html\":true},\"IDLQ1W1HXRCLTS42\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQ1VX5I0IK3S61\"}},\"blocks\":[],\"html\":\"<nav class=\\\"navbar bg-light navbar-expand-md fixed-sm-bottom IDLQ1VX5I0IK3S61\\\">\\n    <div class=\\\"container-lg\\\"><button type=\\\"button\\\" data-bs-toggle=\\\"offcanvas\\\" data-bs-target=\\\"#offcanvasNavbar\\\" aria-controls=\\\"offcanvasNavbar\\\" data-raw-content=\\\"true\\\" class=\\\"navbar-toggler text-dark-blue border-0\\\"><i class=\\\"fa-solid fa-bars\\\"><\\/i><\\/button><a href=\\\"\\/\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLQ1VX5IAF94YI2\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-house\\\"><\\/i><\\/a><a href=\\\"mailto:info@dharwadhubballitutor.com\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLQ1VX5ID98B6T3\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-envelope\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.facebook.com\\/dharwadhubballitutor\\/\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLQ1VX5IGO410W4\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-facebook\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.instagram.com\\/dharwadhubballitutor\\/\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLQ1VX5IIBXZ475\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-instagram\\\"><\\/i><\\/a><a href=\\\" https:\\/\\/www.linkedin.com\\/company\\/dharwadhubballitutor\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLQ1VX5IKWMD7D6\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-linkedin\\\"><\\/i><\\/a>\\n        <div tabindex=\\\"-1\\\" aria-labelledby=\\\"offcanvasNavbarLabel\\\" id=\\\"offcanvasNavbar\\\" class=\\\"offcanvas offcanvas-end\\\">\\n            <div class=\\\"offcanvas-header\\\"><a href=\\\"#\\\" class=\\\"navbar-brand IDLQ1VX5IMK0T4O7\\\">DharwadHubballiTutor<\\/a><button type=\\\"button\\\" data-bs-dismiss=\\\"offcanvas\\\" aria-label=\\\"Close\\\" data-raw-content=\\\"true\\\" class=\\\"btn-close IDLQ1VX5ING81LV8\\\"><\\/button><\\/div>\\n            <ul data-raw-content=\\\"true\\\" class=\\\"navbar-nav justify-content-start flex-grow-1 px-3 text-yellow\\\">\\n                <li class=\\\"nav-item\\\"><a aria-current=\\\"page\\\" href=\\\"\\/\\\" class=\\\"nav-link active\\\"><i class=\\\"fa-solid fa-house\\\"><\\/i><\\/a><\\/li>\\n                <li class=\\\"nav-item dropdown\\\"><a href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Trainings<\\/a>\\n                    <ul class=\\\"dropdown-menu\\\">\\n                        <li>\\n                            <h6 class=\\\"dropdown-header\\\">Full Stack Web Development<\\/h6>\\n                            <ul class=\\\"list-group list-group-flush\\\">\\n                                <li class=\\\"list-group-item\\\"><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Php Full Stack Web Development<\\/a><\\/li>\\n                            <\\/ul>\\n                        <\\/li>\\n                        <li>\\n                            <h6 class=\\\"dropdown-header\\\">Data Analytics<\\/h6>\\n                        <\\/li>\\n                        <li>\\n                            <h6 class=\\\"dropdown-header\\\">Software Testing<\\/h6>\\n                        <\\/li>\\n                    <\\/ul>\\n                <\\/li>\\n                <li class=\\\"nav-item dropdown\\\"><a href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Internship<\\/a>\\n                    <ul class=\\\"dropdown-menu\\\"><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Action<\\/a>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Another action<\\/a><\\/li>\\n                        <li>\\n                            <hr class=\\\"dropdown-divider\\\">\\n                        <\\/li>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Something else here<\\/a><\\/li>\\n                    <\\/ul>\\n                <\\/li>\\n                <li class=\\\"nav-item dropdown\\\"><a href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Services<\\/a>\\n                    <ul class=\\\"dropdown-menu\\\"><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Action<\\/a>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Another action<\\/a><\\/li>\\n                        <li>\\n                            <hr class=\\\"dropdown-divider\\\">\\n                        <\\/li>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Something else here<\\/a><\\/li>\\n                    <\\/ul>\\n                <\\/li>\\n                <li class=\\\"nav-item\\\"><a href=\\\"\\/\\\" class=\\\"nav-link\\\">Contact<\\/a><\\/li>\\n                <li class=\\\"nav-item\\\"><a href=\\\"\\/\\\" class=\\\"nav-link\\\">About<\\/a><\\/li>\\n                <li class=\\\"nav-item justify-content-end\\\"><a data-bs-toggle=\\\"modal\\\" data-bs-target=\\\"#demomodal\\\" class=\\\"nav-link active\\\">Book Demo<\\/a><\\/li>\\n            <\\/ul>\\n        <\\/div>\\n    <\\/div>\\n<\\/nav>\",\"is_html\":true},\"IDLP8AUUEE5NUGY1\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLP8AMO5RERTBD1\"}},\"blocks\":[],\"html\":\"\",\"is_html\":false},\"IDLPGR2CESJEU9T2\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLPGQOFE2T5QOH1\"}},\"blocks\":[],\"html\":\"<section class=\\\"mt-5 IDLPGQOFE2T5QOH1\\\">\\n    <div class=\\\"container py-5\\\">\\n        <div class=\\\"row d-flex justify-content-center\\\">\\n            <div class=\\\"col-md-10 col-xl-8 text-center\\\">\\n                <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Certified Courses Offered<\\/h3>\\n                <p data-raw-content=\\\"true\\\" class=\\\"mb-4 pb-2 mb-md-5 pb-md-0\\\"><\\/p>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"row row-cols-1 row-cols-md-3 g-4\\\">\\n            <div class=\\\"col\\\">\\n                <div class=\\\"card h-100 IDLPGQOFECWRZSA2\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/e188579c164dd816280d991e120c42fe19bd33af\\/1.svg\\\" alt=\\\"Hollywood Sign on The Hill\\\" class=\\\"card-img-top\\\">\\n                    <div class=\\\"text-bg-primary p-3 IDLPGQOFEC60MW13\\\"> Affordable Fees with easy installments<\\/div>\\n                    <div class=\\\"card-body IDLPGQOFEDMKJIL4\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\">Full Stack Web Development Course<\\/h5>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-check-to-slot\\\"><\\/i> Placement Assistance till the first job<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-business-time\\\"><\\/i> Learn form Industry Experts<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-flask\\\"><\\/i> Mock Interviews<\\/p>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-start\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                        <\\/ul><a href=\\\"http:\\/\\/\\\" class=\\\"btn btn-primary IDLPGQOFEK3FNI95\\\">Read More<\\/a>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col\\\">\\n                <div class=\\\"card h-100 IDLPGQOFEKIXUGS6\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/7513541e560c70595de019bcc9d1ec037465e20a\\/2.svg\\\" alt=\\\"Palm Springs Road\\\" class=\\\"card-img-top\\\">\\n                    <div class=\\\"text-bg-primary p-3 IDLPGQOFEL247337\\\"> Affordable Fees with easy installments<\\/div>\\n                    <div class=\\\"card-body IDLPGQOFELRHX698\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\">Data Analytics Course<\\/h5>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-check-to-slot\\\"><\\/i> Placement Assistance till the first job<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-business-time\\\"><\\/i> Learn form Industry Experts<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-flask\\\"><\\/i> Mock Interviews<\\/p>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-start\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                        <\\/ul><a href=\\\"http:\\/\\/\\\" class=\\\"btn btn-primary IDLPGQOFEU2DUXJ9\\\">Read More<\\/a>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col\\\">\\n                <div class=\\\"card h-100 IDLPGQOFEUDM5FF10 IDLPGR2ELKGLWXK0\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/f7823d918b0974c5e8a0d06b8a1a393a9dd7ac71\\/3.svg\\\" alt=\\\"Los Angeles Skyscrapers\\\" class=\\\"card-img-top\\\">\\n                    <div class=\\\"text-bg-primary p-3 IDLPGQOFEVJ74BT11 IDLPGR2ELL7CQG61\\\"> Affordable Fees with easy installments<\\/div>\\n                    <div class=\\\"card-body IDLPGQOFEVEAL9312 IDLPGR2ELL2P0AN2\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\">Data Science Course<\\/h5>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-check-to-slot\\\"><\\/i>Placement Assistance till the first job<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-business-time\\\"><\\/i>Learn form Industry Experts<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-flask\\\"><\\/i>Mock Interviews<\\/p>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-start\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                        <\\/ul><a href=\\\"http:\\/\\/\\\" class=\\\"btn btn-primary IDLPGQOFF40F95C13 IDLPGR2ELMYIVP43\\\">Read More<\\/a>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col\\\">\\n                <div class=\\\"card h-100 IDLPGQOFF5LRA3K14 IDLPGR2ELMTGSFM4\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/f71284f3fec595de9477c3f0ac9c54a9dfb16dec\\/4.svg\\\" alt=\\\"Skyscrapers\\\" class=\\\"card-img-top\\\">\\n                    <div class=\\\"text-bg-primary p-3 IDLPGQOFF5O7PAF15 IDLPGR2ELNBV6RI5\\\"> Affordable Fees with easy installments<\\/div>\\n                    <div class=\\\"card-body IDLPGQOFF6NLP8C16 IDLPGR2ELN5BB056\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\">Digital Marketing Course<\\/h5>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-check-to-slot\\\"><\\/i>Placement Assistance till the first job<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-business-time\\\"><\\/i>Learn form Industry Experts<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-flask\\\"><\\/i>Mock Interviews<\\/p>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-start\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                        <\\/ul><a href=\\\"http:\\/\\/\\\" class=\\\"btn btn-primary IDLPGQOFFDMQFXQ17 IDLPGR2ELOQZ4T37\\\">Read More<\\/a>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col\\\">\\n                <div class=\\\"card h-100 IDLPGQOFFDG2VU718 IDLPGR2ELOSL9QD8\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/f0bf77f3314a72068da8cccc52688e860b8ab70b\\/5.svg\\\" alt=\\\"Skyscrapers\\\" class=\\\"card-img-top\\\">\\n                    <div class=\\\"text-bg-primary p-3 IDLPGQOFFDTLYQY19 IDLPGR2ELPG0Q479\\\"> Affordable Fees with easy installments<\\/div>\\n                    <div class=\\\"card-body IDLPGQOFFEI8R7M20 IDLPGR2ELPQLG2J10 IDLPGR2KQU6YM8Q7\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\">Stock Market Analytics Course<\\/h5>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-check-to-slot\\\"><\\/i> Placement Assistance till the first job<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-business-time\\\"><\\/i> Learn form Industry Experts<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-flask\\\"><\\/i> Mock Interviews<\\/p>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-start\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                        <\\/ul><a href=\\\"http:\\/\\/\\\" class=\\\"btn btn-primary IDLPGQOFFKFTG1I21 IDLPGR2ELQPDVZY11 IDLPGR2KQVKFTZL8\\\">Read More<\\/a>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col\\\">\\n                <div class=\\\"card h-100 IDLPGQOFFLXMMY322 IDLPGR2ELQOBOUY12 IDLPGR2KQVN1AES9\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/a2f6169af7dc7051493411178fe27f20c48460db\\/6.svg\\\" alt=\\\"Skyscrapers\\\" class=\\\"card-img-top\\\">\\n                    <div class=\\\"text-bg-primary p-3 IDLPGQOFFLQ7EKF23 IDLPGR2ELRJ4PNT13 IDLPGR2KQWVFHJ410 IDLPI7H0YT62QIZ0\\\"> Affordable Fees with easy installments<\\/div>\\n                    <div class=\\\"card-body IDLPGQOFFMZA23024 IDLPGR2ELRU449914 IDLPGR2KQW61UA311 IDLPI7H0YWRA1OA1\\\">\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\">Automation Software Testing<\\/h5>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-check-to-slot\\\"><\\/i> Placement Assistance till the first job<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-business-time\\\"><\\/i> Learn form Industry Experts<\\/p>\\n                        <p data-raw-content=\\\"true\\\"><i class=\\\"fa-solid fa-flask\\\"><\\/i> Mock Interviews<\\/p>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-start\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-yellow\\\"><\\/i><\\/li>\\n                        <\\/ul><a href=\\\"http:\\/\\/\\\" class=\\\"btn btn-primary IDLPGQOFFV9D2DK25 IDLPGR2ELSOUGFM15 IDLPGR2KQXFM6HV12 IDLPI7H0ZA7ZWO72\\\">Read More<\\/a>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLPDMI6HRP3OOF0\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLPDMI32ZOC2JX1\"}},\"blocks\":[],\"html\":\"<section class=\\\"mt-5 IDLPDMI32ZOC2JX1\\\">\\n    <div class=\\\"container py-5\\\">\\n        <div class=\\\"row d-flex justify-content-center\\\">\\n            <div class=\\\"col-md-10 col-xl-8 text-center\\\">\\n                <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Our Alumni<\\/h3>\\n                <p data-raw-content=\\\"true\\\" class=\\\"mb-4 pb-2 mb-md-5 pb-md-0\\\">\\n                    Our Alumni are working with the below esteemed organisations.\\n                <\\/p>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n    <div class=\\\"owl-carousel owl-theme bg-secondary d-flex py-lg-5 align-items-center IDLPDMI33BU7QAP2\\\">\\n        <div class=\\\"item\\\"><img src=\\\"https:\\/\\/www.hidoc.co\\/assets\\/img\\/logo\\/logo-desktop.png\\\" alt=\\\"\\\" class=\\\"w-50 mx-auto\\\"><\\/div>\\n        <div class=\\\"item\\\"><img src=\\\"https:\\/\\/www.prolim.com\\/wp-content\\/uploads\\/2018\\/11\\/logo.png\\\" alt=\\\"\\\" class=\\\"w-auto mx-auto\\\"><\\/div>\\n        <div class=\\\"item\\\"><img src=\\\"https:\\/\\/kengen.in\\/assets\\/img\\/KENGENLOGO.svg\\\" alt=\\\"\\\" class=\\\"w-50 mx-auto\\\"><\\/div>\\n        <div class=\\\"item\\\"><img src=\\\"https:\\/\\/www.t-systems.com\\/resource\\/crblob\\/4136\\/bd88591b7daf9da413c65e4e207decbf\\/logo-t-systems-white.svg-data.svg\\\" alt=\\\"\\\" class=\\\"w-50 mx-auto\\\"><\\/div>\\n        <div class=\\\"item\\\"><img src=\\\"https:\\/\\/static.wixstatic.com\\/media\\/95d635_219830d4a9124b5e8bea654d6570ce1e~mv2.png\\/v1\\/crop\\/x_367,y_84,w_316,h_114\\/fill\\/w_180,h_65,al_c,q_85,usm_0.66_1.00_0.01,enc_auto\\/95d635_219830d4a9124b5e8bea654d6570ce1e~mv2.png\\\" alt=\\\"\\\" class=\\\"w-50 mx-auto\\\"><\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLP3PJBIOCDAHG4\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLP3O2Y6BGD60D1\"}},\"blocks\":[],\"html\":\"<section class=\\\"mt-5 IDLP3O2Y6BGD60D1\\\">\\n    <div class=\\\"container py-5\\\">\\n        <div class=\\\"row d-flex justify-content-center\\\">\\n            <div class=\\\"col-md-10 col-xl-8 text-center\\\">\\n                <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Testimonials<\\/h3>\\n                <p data-raw-content=\\\"true\\\" class=\\\"mb-4 pb-2 mb-md-5 pb-md-0\\\"><span style=\\\"font-size:18px;\\\">It\'s always a joy to hear that the work we do has positively reviews<\\/span><\\/p>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"row text-center\\\">\\n            <div class=\\\"col-md-4 mb-4 mb-md-0\\\">\\n                <div class=\\\"card IDLP3O2Y6I6AAL42\\\">\\n                    <div class=\\\"card-body py-4 mt-2 IDLP3O2Y6IX1DQM3\\\">\\n                        <div class=\\\"d-flex justify-content-center mb-4\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/4ae2cd07e005151c0d079ef78ae37b1cdc9bb10a\\/shweta.svg\\\" width=\\\"100\\\" height=\\\"100\\\" class=\\\"rounded-circle shadow-1-strong\\\"><\\/div>\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"font-weight-bold\\\">Shweta Kori<\\/h5>\\n                        <h6 data-raw-content=\\\"true\\\" class=\\\"font-weight-bold my-3\\\">Senior Web Developer<\\/h6>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-center\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                        <\\/ul>\\n                        <p data-raw-content=\\\"true\\\" class=\\\"mb-2\\\"><i class=\\\"fas fa-quote-left pe-2\\\" aria-hidden=\\\"true\\\"><\\/i>First thing I want to thank sir and mam for supporting me in all way.I have done Web development internship for 6 months at DharwadHubballiTutor.<br>This is the best place to learn .<br>In my internship I learnt all the fundamental concept of Web development and also had experienced in doing some projects.<br>,which helped me to get job recently. Bcoz of sir support I also worked as a trainer in this Institute and got some experience in teaching also. It was like a family for me. It was a great opportunity for me to work and learn here.<br><br>I really like to thank DharwadHubballiTutor for taking me as an intern and for sharing all your knowledge to me sir. I miss u DharwadHubbaliTutor.\\n                        <\\/p>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col-md-4 mb-4 mb-md-0\\\">\\n                <div class=\\\"card IDLP3O2Y6OWGKJT4\\\">\\n                    <div class=\\\"card-body py-4 mt-2 IDLP3O2Y6PA0MMH5\\\">\\n                        <div class=\\\"d-flex justify-content-center mb-4\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/9213f9708f0e730d6a4be83265968f6c0afc63cc\\/PSX_20201024_141136---Fazlur-Mudnal.jpg\\\" width=\\\"100\\\" height=\\\"100\\\" class=\\\"rounded-circle shadow-1-strong\\\"><\\/div>\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"font-weight-bold\\\">Fazlur Rehman<\\/h5>\\n                        <h6 data-raw-content=\\\"true\\\" class=\\\"font-weight-bold my-3\\\">Robotic Automation Engineer<\\/h6>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-center\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                        <\\/ul>\\n                        <p data-raw-content=\\\"true\\\" class=\\\"mb-2\\\"><i class=\\\"fas fa-quote-left pe-2\\\" aria-hidden=\\\"true\\\"><\\/i>This&nbsp;is&nbsp;one&nbsp;of&nbsp;the&nbsp;most&nbsp;useful&nbsp;resources<br>for&nbsp;learning&nbsp;about&nbsp;these courses.<br>The&nbsp;team&nbsp;has&nbsp;a&nbsp;lot&nbsp;of&nbsp;expertise&nbsp;and&nbsp;is&nbsp;very professional. They&nbsp;pay&nbsp;special&nbsp;attention&nbsp;to the individual\'s&nbsp;requirements&nbsp;and&nbsp;prepare<br>accordingly,&nbsp;till&nbsp;the&nbsp;desired&nbsp;result&nbsp;is<br>achieved. Thanks for the right support.\\n                        <\\/p>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"col-md-4 mb-0\\\">\\n                <div class=\\\"card IDLP3O2Y6V7DGV36\\\">\\n                    <div class=\\\"card-body py-4 mt-2 IDLP3O2Y6VALDG67\\\">\\n                        <div class=\\\"d-flex justify-content-center mb-4\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/cf4e9a6e5bf107ba294335cd676798cecca3e44d\\/Gurudatt-karjagar.jpg\\\" width=\\\"100\\\" height=\\\"100\\\" class=\\\"rounded-circle shadow-1-strong\\\"><\\/div>\\n                        <h5 data-raw-content=\\\"true\\\" class=\\\"font-weight-bold\\\">Gurudatt Karjagar<\\/h5>\\n                        <h6 data-raw-content=\\\"true\\\" class=\\\"font-weight-bold my-3\\\">Product Manager<\\/h6>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-unstyled d-flex justify-content-center\\\">\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                            <li><i class=\\\"fas fa-star fa-sm text-info\\\"><\\/i><\\/li>\\n                        <\\/ul>\\n                        <p data-raw-content=\\\"true\\\" class=\\\"mb-2\\\"><i class=\\\"fas fa-quote-left pe-2\\\" aria-hidden=\\\"true\\\"><\\/i>One of the best IT training institutes, the quality and confidence I gained from the institute exceeded my expectations. This is the institute where you will get proper practical knowledge that is required in corporate, and a special thanks to Sir Athar for his invaluable effort to prepare every student to be a self-established developer regardless of technology. It is my honest opinion, and I personally recommend the institute.\\n                        <\\/p>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLP6SWRSSWVHOV2\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLP6SWLBHBD2XV1\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLP6SWLBHBD2XV1\\\">\\n    <footer class=\\\"container-fluid IDLP6SWLBJJ6DMR2\\\"><br>\\n        <div class=\\\"foot\\\">\\n            <div class=\\\"row\\\">\\n                <div class=\\\"col-lg-3\\\">\\n                    <div align=\\\"center\\\" class=\\\"text-white\\\">About us<\\/div>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"text-white\\\">DharwadHubballiTutor is one of the fastest-growing and most esteemed Software Training Institutions in Dharwad and Hubli. We are one of the fasting growing institute in Dharwad and Hubli twin cities. In a span of 3 years, we have registered\\n                        tremendous growth in training the students on cutting-edge technologies like Web Development, Software Testing, Data Analytics and data science, Digital Marketing and Basic Programming Languages empowering the students to compete in\\n                        the fast growing world of Technology.\\n                    <\\/p>\\n                <\\/div>\\n                <div class=\\\"col-lg-3\\\">\\n                    <div align=\\\"center\\\" class=\\\"text-white\\\"> Quick Link<\\/div>\\n                    <hr>\\n                    <ul data-raw-content=\\\"true\\\" class=\\\"list-group list-group-flush\\\"><a aria-current=\\\"page\\\" href=\\\"\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Home<\\/a><a aria-current=\\\"page\\\" href=\\\"\\/about\\/\\\" class=\\\"list-group-item list-group-item-action\\\">About<\\/a><a aria-current=\\\"page\\\" href=\\\"\\/contact\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Contact<\\/a><\\/ul>\\n                <\\/div>\\n                <div class=\\\"col-lg-3\\\">\\n                    <div class=\\\"title-text\\\"><\\/div><br>\\n                    <hr>\\n                    <ul data-raw-content=\\\"true\\\" class=\\\"list-group list-group-flush\\\"><a aria-current=\\\"page\\\" href=\\\"\\/termsandconditions\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Terms and Conditions<\\/a><a aria-current=\\\"page\\\" href=\\\"\\/PrivacyPolicy\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Privacy\\n                            Policy<\\/a><\\/ul>\\n                <\\/div>\\n                <div class=\\\"col-lg-3\\\">\\n                    <div class=\\\"text-white\\\"> Our Contact<\\/div>\\n                    <hr>\\n                    <address>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-group list-group-flush\\\">\\n                            <li class=\\\"list-group-item\\\"><a href=\\\"tel:+919741237334\\\" class=\\\"navbar-brands align-items-center\\\" id=\\\"ilfemj\\\"><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-telephone-outbound-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z\\\"><\\/path>\\n                                    <\\/svg><i class=\\\"bi bi-telephone-outbound-fill\\\"><\\/i>\\n                                    +91-9741237334<\\/a><br><a href=\\\"tel: +918007961759\\\" class=\\\"navbar-brands align-items-center\\\" id=\\\"ijs4kp\\\"><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-telephone-outbound-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z\\\"><\\/path>\\n                                    <\\/svg><i class=\\\"bi bi-telephone-outbound-fill\\\"><\\/i>\\n                                    +918007961759<\\/a><\\/li>\\n                            <li class=\\\"list-group-item\\\"><a href=\\\"mailto:info@dharwadhubballitutor.com\\\" class=\\\"navbar-brands align-items-center\\\" id=\\\"ivt0fj\\\"><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-envelope-fill\\\">\\n                                        <path d=\\\"M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z\\\"><\\/path>\\n                                    <\\/svg> info@dharwadhubballitutor.com<\\/a><\\/li>\\n                            <li class=\\\"list-group-item\\\">\\n                                <p><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-geo-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z\\\"><\\/path>\\n                                    <\\/svg>DharwadHubballitutor <br>\\n                                    J.G. Nippani Complex, Gandhi Nagar, Dharwad-04<\\/p>\\n                            <\\/li>\\n                            <li class=\\\"list-group-item\\\">\\n                                <p><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-geo-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z\\\"><\\/path>\\n                                    <\\/svg>\\n                                    DharwadHubballitutor,<br>Plot #26, Jaya Nagar,<br>Vidya Nagar, Hubli-21<\\/p>\\n                            <\\/li>\\n                            <li class=\\\"list-group-item\\\" id=\\\"i67g6e\\\">\\n\\n                            <\\/li>\\n                        <\\/ul>\\n                    <\\/address>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/footer>\\n    <div class=\\\"desc\\\">\\n        <div class=\\\"row container-fluid bg-dark IDLP6SWLBTORQPH3\\\">\\n            <div align=\\\"center\\\" class=\\\"col-md-12 text-white\\\"><small data-raw-content=\\\"true\\\">Designed and Developed By : <a href=\\\"www.dharwadhubballitutor.com\\\" class=\\\"nav-item text-grey\\\">DharwadHubballitutor<\\/a><\\/small><br><small data-raw-content=\\\"true\\\"> All rights reserved to : <a href=\\\"www.dharwadhubballitutor.com\\\" class=\\\"nav-item text-grey\\\">DharwadHubballitutor<\\/a><\\/small><\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/div>\",\"is_html\":true}}}}', '2023-09-14 07:27:05');
INSERT INTO `pages` (`id`, `name`, `layout`, `data`, `created_at`) VALUES
(6, 'Web Design and Development', 'master', '{\"html\":[\"[block slug=\\\"features\\\" id=\\\"IDLN094BJ2V8K503\\\"][block slug=\\\"top-section\\\" id=\\\"IDLPI94APO6UZMF0\\\"][block slug=\\\"heading\\\" id=\\\"IDLPI94APQFTQ3R1\\\"][block slug=\\\"jumbotron\\\" id=\\\"IDLPQXFI8LJYAXT1\\\"][block slug=\\\"course-overview\\\" id=\\\"IDLQ1WYZJ79C9QS3\\\"][block slug=\\\"course-overview\\\" id=\\\"IDLQ1WYZJ8MYNIQ4\\\"][block slug=\\\"key-features\\\" id=\\\"IDLQRTKQD80U3NM3\\\"][block slug=\\\"Integrated Labs &amp; Tools\\\" id=\\\"IDLQ3OWN75380123\\\"][block slug=\\\"course-overview\\\" id=\\\"IDLQKKCMMDAKUZ712\\\"][block slug=\\\"course-overview\\\" id=\\\"IDLQKKCMMFY5YA913\\\"][block slug=\\\"course-overview\\\" id=\\\"IDLQKKCMMGFK55C14\\\"][block slug=\\\"course-overview\\\" id=\\\"IDLQKKCMMIYBB9D15\\\"][block slug=\\\"timeline\\\" id=\\\"IDLQRY3JY1N79FJ0\\\"][block slug=\\\"certificate\\\" id=\\\"IDLQ218TNBMF7S81\\\"][block slug=\\\"footer\\\" id=\\\"IDLPIA9NUT8ZODH1\\\"]\"],\"components\":[[{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"features\",\"id\":\"IDLN094BJ2V8K503\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"top-section\",\"id\":\"IDLPI94APO6UZMF0\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"heading\",\"id\":\"IDLPI94APQFTQ3R1\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"jumbotron\",\"id\":\"IDLPQXFI8LJYAXT1\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"course-overview\",\"id\":\"IDLQ1WYZJ79C9QS3\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"course-overview\",\"id\":\"IDLQ1WYZJ8MYNIQ4\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"key-features\",\"id\":\"IDLQRTKQD80U3NM3\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"Integrated Labs &amp; Tools\",\"id\":\"IDLQ3OWN75380123\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"course-overview\",\"id\":\"IDLQKKCMMDAKUZ712\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"course-overview\",\"id\":\"IDLQKKCMMFY5YA913\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"course-overview\",\"id\":\"IDLQKKCMMGFK55C14\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"course-overview\",\"id\":\"IDLQKKCMMIYBB9D15\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"timeline\",\"id\":\"IDLQRY3JY1N79FJ0\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"certificate\",\"id\":\"IDLQ218TNBMF7S81\"}},{\"tagName\":\"phpb-block\",\"content\":\"\",\"attributes\":{\"slug\":\"footer\",\"id\":\"IDLPIA9NUT8ZODH1\"}}]],\"css\":\"* { box-sizing: border-box; } body {margin: 0;}.navbar.bg-light.fixed-top.navbar-expand-md.IDLN0587J5HYHOO1{background-color:#0e80f3;}#demo2{background-color:#f1f1f1;}.btn.btn-outline-light.btn-lg.IDLPQTIKQM0KB3V2{background-color:rgba(0,0,0,0.46);}#ikvsa{color:#2a0a5e;}#iocwj{text-align:right;}#iwz7nk{background-color:#F0F2F5;}@media only screen and (min-width: 768px){.col-lg-3{width:50%;}.foot{font-size:15px;}}@media only screen and (min-width: 992px){.col-lg-3{width:25%;}.foot{font-size:18px;}}@media (min-width: 1024px) and (max-width: 1439px){.foot{font-size:15px;}}\",\"style\":[{\"selectors\":[{\"name\":\"navbar\",\"label\":\"navbar\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"bg-light\",\"label\":\"bg-light\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"fixed-top\",\"label\":\"fixed-top\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"navbar-expand-md\",\"label\":\"navbar-expand-md\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLN0587J5HYHOO1\",\"label\":\"IDLN0587J5HYHOO1\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"#0e80f3\"}},{\"selectors\":[{\"name\":\"navbar\",\"label\":\"navbar\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"bg-light\",\"label\":\"bg-light\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"fixed-top\",\"label\":\"fixed-top\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"navbar-expand-md\",\"label\":\"navbar-expand-md\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLN05BFGDOZ2TL5\",\"label\":\"IDLN05BFGDOZ2TL5\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}]},{\"selectors\":[{\"name\":\"demo2\",\"label\":\"demo2\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"#f1f1f1\"}},{\"selectors\":[{\"name\":\"col-lg-3\",\"label\":\"col-lg-3\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"width\":\"50%\"},\"mediaText\":\"only screen and (min-width: 768px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"foot\",\"label\":\"foot\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"font-size\":\"15px\"},\"mediaText\":\"only screen and (min-width: 768px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"col-lg-3\",\"label\":\"col-lg-3\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"width\":\"25%\"},\"mediaText\":\"only screen and (min-width: 992px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"foot\",\"label\":\"foot\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"font-size\":\"18px\"},\"mediaText\":\"only screen and (min-width: 992px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"foot\",\"label\":\"foot\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"font-size\":\"15px\"},\"mediaText\":\"(min-width: 1024px) and (max-width: 1439px)\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"btn\",\"label\":\"btn\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-outline-light\",\"label\":\"btn-outline-light\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-lg\",\"label\":\"btn-lg\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLPQTIKQM0KB3V2\",\"label\":\"IDLPQTIKQM0KB3V2\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"rgba(0,0,0,0.46)\"}},{\"selectors\":[{\"name\":\"btn\",\"label\":\"btn\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-outline-light\",\"label\":\"btn-outline-light\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-lg\",\"label\":\"btn-lg\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLPQTU1358ESPV2\",\"label\":\"IDLPQTU1358ESPV2\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}]},{\"selectors\":[{\"name\":\"btn\",\"label\":\"btn\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-outline-light\",\"label\":\"btn-outline-light\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-lg\",\"label\":\"btn-lg\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLPQUVJRNYVTA65\",\"label\":\"IDLPQUVJRNYVTA65\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}]},{\"selectors\":[{\"name\":\"btn\",\"label\":\"btn\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-outline-light\",\"label\":\"btn-outline-light\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"btn-lg\",\"label\":\"btn-lg\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false},{\"name\":\"IDLPQX8IEYOSKWO2\",\"label\":\"IDLPQX8IEYOSKWO2\",\"type\":1,\"active\":true,\"private\":false,\"protected\":false}]},{\"selectors\":[{\"name\":\"ikvsa\",\"label\":\"ikvsa\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"color\":\"#2a0a5e\"}},{\"selectors\":[{\"name\":\"iocwj\",\"label\":\"iocwj\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"text-align\":\"right\"}},{\"selectors\":[{\"name\":\"iwz7nk\",\"label\":\"iwz7nk\",\"type\":2,\"active\":true,\"private\":false,\"protected\":false}],\"style\":{\"background-color\":\"#F0F2F5\"}}],\"blocks\":{\"en\":{\"IDLN094BJ2V8K503\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLN091PWJVA7XR1\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLN091PWJVA7XR1\\\"><\\/div>\",\"is_html\":true},\"IDLPI94APO6UZMF0\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLPI90OX56BL171\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLPI90OX56BL171\\\">\\n    <!-- As a link -->\\n    <nav class=\\\"navbar bg-primary container-fluid IDLPI90OX6TEGPS2\\\">\\n        <div class=\\\"container-md\\\">\\n            <div class=\\\"row text-white\\\">\\n                <div class=\\\"col-lg-4 col-md-6 align-self-center text-center\\\"><a href=\\\"#\\\" class=\\\"navbar-brand text-white IDLPI90OX6CSQ7E3\\\">DharwadHubballiTutor<\\/a><\\/div>\\n                <div class=\\\"col-lg-2 col-md-0 d-none d-lg-block align-self-center text-small\\\">\\n                    <address class=\\\"d-inline small align-content-center text-center\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-location-dot\\\"><\\/i> J.G. Nippani Complex, Gandhi Nagar, Dharwad-04\\n                    <\\/address>\\n                <\\/div>\\n                <div class=\\\"col-lg-2 col-md-0 d-none d-lg-block align-self-center text-small\\\">\\n                    <address class=\\\"d-inline small align-content-center\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-location-dot\\\"><\\/i> Plot# 26,Behind Gurudath Bhavan,Vidya Nagar,Hubballi-21\\n                    <\\/address>\\n                <\\/div>\\n                <div class=\\\"col-lg-2 col-md-3 text-md-end align-self-center text-small text-center\\\"><a href=\\\"tel: +919741237334\\\" class=\\\"small IDLPI90OXBREGR54\\\">+91-9741-237334<\\/a><\\/div>\\n                <div class=\\\"col-lg-2 col-md-3 text-md-end align-self-center d-none d-md-block\\\"><a href=\\\"mailto:info@dharwadhubballitutor.com\\\" class=\\\"p-1 IDLPI90OXBUMYDR5\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-envelope\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.facebook.com\\/dharwadhubballitutor\\/\\\" class=\\\"p-1 IDLPI90OXDR2TRP6\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-facebook\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.instagram.com\\/dharwadhubballitutor\\/\\\" class=\\\"p-1 IDLPI90OXEIVQKA7\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-instagram\\\"><\\/i><\\/a><a href=\\\" https:\\/\\/www.linkedin.com\\/company\\/dharwadhubballitutor\\\" class=\\\"p-1 IDLPI90OXFHS33P8\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-linkedin\\\"><\\/i><\\/a><\\/div>\\n            <\\/div>\\n            <div>\\n\\n            <\\/div>\\n        <\\/div>\\n    <\\/nav>\\n<\\/div>\",\"is_html\":true},\"IDLPI94APQFTQ3R1\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLPI94D2WRLI400\"}},\"blocks\":[],\"html\":\"<nav class=\\\"navbar bg-light navbar-expand-md fixed-sm-bottom IDLPI90RMJADD6T10 IDLPI94D2WRLI400\\\">\\n    <div class=\\\"container-lg\\\"><button type=\\\"button\\\" data-bs-toggle=\\\"offcanvas\\\" data-bs-target=\\\"#offcanvasNavbar\\\" aria-controls=\\\"offcanvasNavbar\\\" data-raw-content=\\\"true\\\" class=\\\"navbar-toggler text-dark-blue border-0\\\"><i class=\\\"fa-solid fa-bars\\\"><\\/i><\\/button><a href=\\\"\\/\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLPI90RMO8RHP811 IDLPI94D2X6UBT21\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-house\\\"><\\/i><\\/a><a href=\\\"mailto:info@dharwadhubballitutor.com\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLPI90RMPKC1LI12 IDLPI94D2XCSM1F2\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-solid fa-envelope\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.facebook.com\\/dharwadhubballitutor\\/\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLPI90RMQBDI5S13 IDLPI94D2YMGDGM3\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-facebook\\\"><\\/i><\\/a><a href=\\\"https:\\/\\/www.instagram.com\\/dharwadhubballitutor\\/\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLPI90RMSV4GR014 IDLPI94D2Y51P1K4\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-instagram\\\"><\\/i><\\/a><a href=\\\" https:\\/\\/www.linkedin.com\\/company\\/dharwadhubballitutor\\\" class=\\\"navbar-toggler text-dark-blue border-0 IDLPI90RMT7XXVR15 IDLPI94D2Z5LGFE5\\\"><i data-raw-content=\\\"true\\\" class=\\\"fa-brands fa-linkedin\\\"><\\/i><\\/a>\\n        <div tabindex=\\\"-1\\\" aria-labelledby=\\\"offcanvasNavbarLabel\\\" id=\\\"offcanvasNavbar\\\" class=\\\"offcanvas offcanvas-end\\\">\\n            <div class=\\\"offcanvas-header\\\"><a href=\\\"#\\\" class=\\\"navbar-brand IDLPI90RMUK389I16 IDLPI94D2ZHRWR96\\\">DharwadHubballiTutor<\\/a><button type=\\\"button\\\" data-bs-dismiss=\\\"offcanvas\\\" aria-label=\\\"Close\\\" data-raw-content=\\\"true\\\" class=\\\"btn-close IDLPI90RMVCZGVN17\\\"><\\/button><\\/div>\\n            <ul data-raw-content=\\\"true\\\" class=\\\"navbar-nav justify-content-start flex-grow-1 px-3 text-yellow\\\">\\n                <li class=\\\"nav-item\\\"><a aria-current=\\\"page\\\" href=\\\"\\/\\\" class=\\\"nav-link active\\\"><i class=\\\"fa-solid fa-house\\\"><\\/i><\\/a><\\/li>\\n                <li class=\\\"nav-item dropdown\\\"><a href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Trainings<\\/a>\\n                    <ul class=\\\"dropdown-menu\\\">\\n                        <li>\\n                            <h6 class=\\\"dropdown-header\\\">Full Stack Web Development<\\/h6>\\n                            <ul class=\\\"list-group list-group-flush\\\">\\n                                <li class=\\\"list-group-item\\\"><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Php Full Stack Web Development<\\/a><\\/li>\\n                            <\\/ul>\\n                        <\\/li>\\n                        <li>\\n                            <h6 class=\\\"dropdown-header\\\">Data Analytics<\\/h6>\\n                        <\\/li>\\n                        <li>\\n                            <h6 class=\\\"dropdown-header\\\">Software Testing<\\/h6>\\n                        <\\/li>\\n                    <\\/ul>\\n                <\\/li>\\n                <li class=\\\"nav-item dropdown\\\"><a href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Internship<\\/a>\\n                    <ul class=\\\"dropdown-menu\\\"><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Action<\\/a>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Another action<\\/a><\\/li>\\n                        <li>\\n                            <hr class=\\\"dropdown-divider\\\">\\n                        <\\/li>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Something else here<\\/a><\\/li>\\n                    <\\/ul>\\n                <\\/li>\\n                <li class=\\\"nav-item dropdown\\\"><a href=\\\"#\\\" role=\\\"button\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\" class=\\\"nav-link dropdown-toggle\\\">Services<\\/a>\\n                    <ul class=\\\"dropdown-menu\\\"><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Action<\\/a>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Another action<\\/a><\\/li>\\n                        <li>\\n                            <hr class=\\\"dropdown-divider\\\">\\n                        <\\/li>\\n                        <li><a href=\\\"\\/\\\" class=\\\"dropdown-item\\\">Something else here<\\/a><\\/li>\\n                    <\\/ul>\\n                <\\/li>\\n                <li class=\\\"nav-item\\\"><a href=\\\"\\/\\\" class=\\\"nav-link\\\">Contact<\\/a><\\/li>\\n                <li class=\\\"nav-item\\\"><a href=\\\"\\/\\\" class=\\\"nav-link\\\">About<\\/a><\\/li>\\n                <li class=\\\"nav-item justify-content-end\\\"><a data-bs-toggle=\\\"modal\\\" data-bs-target=\\\"#demomodal\\\" class=\\\"nav-link active\\\">Book Demo<\\/a><\\/li>\\n            <\\/ul>\\n        <\\/div>\\n    <\\/div>\\n<\\/nav>\",\"is_html\":true},\"IDLPQXFI8LJYAXT1\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLPQX8IEP29K891\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLPQX8IEP29K891\\\">\\n    <!-- Background image -->\\n    <div class=\\\"text-center bg-image container-fluid position-relative p-0\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/1302c712dcfaeb2c118a2ccf7d13759d0b458510\\/Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg\\\" alt=\\\"course-banner-image\\\" class=\\\"img-fluid\\\">\\n        <div class=\\\"position-absolute w-100 top-25\\\">\\n            <div class=\\\"h-100\\\">\\n                <div class=\\\"text-white\\\">\\n                    <h5 data-raw-content=\\\"true\\\" class=\\\"mb-lg-3\\\">Advanced Executive Course in&nbsp;<\\/h5>\\n                    <h1 data-raw-content=\\\"true\\\" class=\\\"mb-lg-3\\\">Full Stack Web Design and Development&nbsp;<\\/h1>\\n                    <h4 data-raw-content=\\\"true\\\" class=\\\"mb-lg-3\\\">Unlimited Interview Opportunities<\\/h4><a data-bs-toggle=\\\"modal\\\" data-bs-target=\\\"#demomodal\\\" href=\\\"#!\\\" role=\\\"button\\\" class=\\\"btn btn-outline-light btn-lg IDLPQX8IEYOSKWO2\\\">Book Now<\\/a>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/div>\",\"is_html\":true},\"IDLQ1WYZJ79C9QS3\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQ1WKI8POMD091\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQ1WKI8POMD091\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">About the Course<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <p data-raw-content=\\\"true\\\" class=\\\"px-lg-5 px-sm-2 text-justify\\\">This course in Hubli can be pursued by Fresher\\u2019s and Professionals who want to make a career in Web Designing &amp; Development.<br><br>The course curriculum is periodically refreshed to keep it relevant. Access to certified trainers and flexible class timings.<br><br>Online and offline classes are available, Access to live projects and real case studies.<br><br>The MERN stack is a collection of technologies that comprise a full-stack capable of building applications with JavaScript. Because JavaScript is a front-end programming language, developers need additional tools in order to ensure functionality on the back end. MongoDB, Express, React, and Node.<br>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b<br><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQ1WYZJ8MYNIQ4\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQ1WPNYPI3CT93\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQ1WPNYPI3CT93\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">About DharwadHubballiTutor<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <p data-raw-content=\\\"true\\\" class=\\\"px-lg-5 px-sm-2 text-justify\\\">DharwadHubballiTutor is one of the fastest-growing and most esteemed Software Training Institutions in Dharwad and Hubli.<br><br>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bWe are one of the fasting growing institute in Dharwad and Hubli twin cities. In a span of 3 years, we have registered tremendous growth in training the students on cutting-edge technologies like Web Development, Software Testing, Data Analytics and data science, Digital Marketing and Basic Programming Languages empowering the students to complete in the fast growing world of Technology.<br><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQRTKQD80U3NM3\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQRSQJ4LVHO1H1\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQRSQJ4LVHO1H1\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Key Features<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center px-lg-5\\\">\\n                <div class=\\\"col-lg-4 ps-lg-5\\\">\\n                    <div class=\\\"card mb-3 border-0 ps-lg-5 IDLQRSQJ51RYAWZ2\\\">\\n                        <div class=\\\"card-body IDLQRSQJ52VOTMT3\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-list-check\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">8X higher live interaction with live online classes by industry experts<\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n                <div class=\\\"col-lg-4\\\">\\n                    <div class=\\\"card mb-3 border-0 IDLQRSQJ56VHAS44\\\">\\n                        <div class=\\\"card-body IDLQRSQJ57IPKIA5\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-regular fa-folder-open\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">\\n                                Flexible Class Timings Online\\/Offline.\\n                            <\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n                <div class=\\\"col-lg-4\\\">\\n                    <div class=\\\"card mb-3 border-0 IDLQRSQJ5GHG4DF6\\\">\\n                        <div class=\\\"card-body IDLQRSQJ5H9NHBF7\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-certificate\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">\\n                                Program Completion Certificate\\n                            <\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"row d-flex justify-content-center px-lg-5\\\">\\n                <div class=\\\"col-lg-4 ps-lg-5\\\">\\n                    <div class=\\\"card mb-3 border-0 ps-lg-5 IDLQRSQJ5MAEWTW8\\\">\\n                        <div class=\\\"card-body IDLQRSQJ5MQA4GH9\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-laptop-file\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">Projects with Internship Certificate.<\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n                <div class=\\\"col-lg-4\\\">\\n                    <div class=\\\"card mb-3 border-0 IDLQRSQJ5RS9QDS10 IDLQRTKSE4JFWOA0\\\">\\n                        <div class=\\\"card-body IDLQRSQJ5S1S40O11 IDLQRTKSE4IWGZQ1\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-vial\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">Experiential learning via multiple real-life innovation projects.<\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n                <div class=\\\"col-lg-4\\\">\\n                    <div class=\\\"card mb-3 border-0 IDLQRSQJ5YCTNGH12 IDLQRTKSE5YOMOY2\\\">\\n                        <div class=\\\"card-body IDLQRSQJ5YOQQGC13 IDLQRTKSE5L46M53\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-briefcase\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">\\n                                Special Attention to Weak Student\\n                            <\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n            <div class=\\\"row d-flex justify-content-center px-lg-5\\\">\\n                <div class=\\\"col-lg-4 ps-lg-5\\\">\\n                    <div class=\\\"card mb-3 border-0 ps-lg-5 IDLQRSQJ65YS3W414 IDLQRTKSE6MWPUV4\\\">\\n                        <div class=\\\"card-body IDLQRSQJ65EOAVV15 IDLQRTKSE6X1LVG5\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-user-check\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">Mock Interview.<\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n                <div class=\\\"col-lg-4\\\">\\n                    <div class=\\\"card mb-3 border-0 IDLQRSQJ6CK65XI16 IDLQRTKSE7DA3696\\\">\\n                        <div class=\\\"card-body IDLQRSQJ6D34K0F17 IDLQRTKSE8LV5D87\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-brands fa-searchengin\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">Get noticed by the top hiring companies.<\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n                <div class=\\\"col-lg-4\\\">\\n                    <div class=\\\"card mb-3 border-0 IDLQRSQJ6J4O96118 IDLQRTKSE9C2OM38\\\">\\n                        <div class=\\\"card-body IDLQRSQJ6KQHX9E19 IDLQRTKSEA4MFTO9\\\">\\n                            <h5 data-raw-content=\\\"true\\\" class=\\\"card-title\\\"><i class=\\\"fa-solid fa-award\\\"><\\/i><\\/h5>\\n                            <p data-raw-content=\\\"true\\\" class=\\\"card-text\\\">Guaranteed Placement Assistance.<\\/p>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQ3OWN75380123\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQ3OJDZHGJDLK1\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQ3OJDZHGJDLK1\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Integrated Labs &amp; Tools<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center px-lg-5 px-sm-2 mb-4\\\">\\n                <div class=\\\"col-md-2\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/89ccaaea01b90d36acea77801ce397008d85d762\\/vscode.png\\\" alt=\\\"\\\" srcset=\\\"\\\" class=\\\"d-block img-fluid w-50 mx-auto\\\"><\\/div>\\n                <div class=\\\"col-md-2\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/3d89326fcae3491b2dcd65c15541998f18e86b7c\\/react.svg\\\" alt=\\\"\\\" srcset=\\\"\\\" class=\\\"d-block img-fluid w-50 mx-auto\\\"><\\/div>\\n                <div class=\\\"col-md-2\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/33405b8b2919dc5409d14fd477945e8522200261\\/node-js.svg\\\" alt=\\\"\\\" srcset=\\\"\\\" class=\\\"d-block img-fluid w-50 mx-auto\\\"><\\/div>\\n                <div class=\\\"col-md-2\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/3d89326fcae3491b2dcd65c15541998f18e86b7c\\/react.svg\\\" alt=\\\"\\\" srcset=\\\"\\\" class=\\\"d-block img-fluid w-50 mx-auto\\\"><\\/div>\\n                <div class=\\\"col-md-2\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/8480c25986877ae70040d6f8b1031f9ec05d5da4\\/github.svg\\\" alt=\\\"\\\" srcset=\\\"\\\" class=\\\"d-block img-fluid w-50 mx-auto\\\"><\\/div>\\n            <\\/div>\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <ul data-raw-content=\\\"true\\\">\\n                        <li class=\\\"li-marker\\\">VSCode: Integrated development environments for coding and debugging.<\\/li>\\n                        <li class=\\\"li-marker\\\">React: Core React Developer Tools is a Chrome Dev Tools extension for the React JavaScript library. A very useful tool, if you are working on React.js applications. This extension adds React debugging tools to the Chrome Developer Tools.<\\/li>\\n                        <li class=\\\"li-marker\\\">NodeJs: It adds optional types, classes, and modules, which enable you to write more Maintainable code and take advantage of more powerful tooling. Node. Is Tools for Visual Studio provides full end-to-end support (from IntelliSense to unit testing) for Working with Typescript in your Node.<\\/li>\\n                        <li class=\\\"li-marker\\\">MongoDB: MongoDB is an open-source document database used to build highly scalable internet applications.<\\/li>\\n                        <li class=\\\"li-marker\\\">GitHub: GitHub is a web-based interface that uses Git, the open source version control Software that lets multiple people make separate changes to web pages at the same time.<\\/li>\\n                    <\\/ul>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQKKCMMDAKUZ712\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQKIQV1HCSDOT5\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQKIQV1HCSDOT5\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Course Outcomes<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <p data-raw-content=\\\"true\\\" class=\\\"px-lg-5 px-sm-2 text-justify\\\">At the end of this Advanced Executive Program in Python Full Stack Web Development Course You will:<br><br><\\/p>\\n                    <div class=\\\"row d-flex justify-content-center\\\">\\n                        <div class=\\\"col-md-10 col-xl-8\\\">\\n                            <ul data-raw-content=\\\"true\\\">\\n                                <li class=\\\"li-marker\\\">Understanding the Full web application life cycle.<\\/li>\\n                                <li class=\\\"li-marker\\\">Advance Knowledge in HTML, CSS, Bootstrap.<\\/li>\\n                                <li class=\\\"li-marker\\\">Mastering the UI Layer (React JS), API Layer (Express JS and Node JS) and DB Layer (Mongo DB) with Industry leading MERN technologies.<\\/li>\\n                                <li class=\\\"li-marker\\\">This Program helps to gain the right skills required for top companies.<\\/li>\\n                                <li class=\\\"li-marker\\\">Know How to identify, debug the web application performance issues.<\\/li>\\n                                <li class=\\\"li-marker\\\">Build real-world simulated web application.<br><\\/li>\\n                            <\\/ul>\\n                        <\\/div>\\n                    <\\/div>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQKKCMMFY5YA913\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQKJ9W1E820YS7\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQKJ9W1E820YS7\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Course Eligibility Criteria and Prerequisites<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <p data-raw-content=\\\"true\\\" class=\\\"px-lg-5 px-sm-2 text-justify\\\">Those wishing to enroll in the Advanced Executive Program in Python Full Stack Web Development Course in collaboration with DharwadHubballiTutor will be required to apply for admission.<br><br><br><\\/p>\\n                    <h4 data-raw-content=\\\"true\\\">Eligibility Criteria<\\/h4>\\n                    <p data-raw-content=\\\"true\\\">For admission to this Advanced Executive Program in Python Full Stack Web Development Course, candidates:<br><br><\\/p>\\n                    <div class=\\\"row d-flex justify-content-center\\\">\\n                        <div class=\\\"col-md-10 col-xl-8\\\">\\n                            <ul data-raw-content=\\\"true\\\">\\n                                <li class=\\\"li-marker\\\">Should have a bachelor\\u2019s degree in BE, BCA, B.Sc. and any Technical Background.<\\/li>\\n                                <li class=\\\"li-marker\\\">Understanding of basic computer science concepts.<\\/li>\\n                                <li class=\\\"li-marker\\\">Any Working Persons Familiar with Coding.<\\/li>\\n                                <li class=\\\"li-marker\\\">MongoDB: MongoDB is an open-source document database used to build highly scalable internet applications.<\\/li>\\n                                <li class=\\\"li-marker\\\">GitHub: GitHub is a web-based interface that uses Git, the open source version control Software that lets multiple people make separate changes to web pages at the same time.<\\/li>\\n                            <\\/ul>\\n                        <\\/div>\\n                    <\\/div>\\n                    <h4 data-raw-content=\\\"true\\\">Application Process<\\/h4>\\n                    <p data-raw-content=\\\"true\\\">The Application Process Consists Simple Steps. Call and Book Free Demo Class and take admission. For Admission we need One Photo Copy and Aadhar id Proof.<\\/p>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQKKCMMGFK55C14\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQKJJ31WF0FWF9\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQKJJ31WF0FWF9\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Talk to an Admissions Counselor<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <p data-raw-content=\\\"true\\\" class=\\\"px-lg-5 px-sm-2 text-justify\\\"><span style=\\\"\\\">\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b<span contenteditable=\\\"false\\\" style=\\\"height: 0px; padding: 0px; margin: 0px; display: block; z-index: 9999; color: rgb(255, 255, 255); font-size: 0px; line-height: 0px; position: absolute; border-top: 1px dashed rgb(255, 0, 0); user-select: none; left: 0px; top: 4697.42px; right: 0px;\\\"><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px\\\">&nbsp;<\\/span><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px\\\">&nbsp;<\\/span><span contenteditable=\\\"false\\\" style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(https:\\/\\/cdn.ckeditor.com\\/4.21.0\\/full-all\\/plugins\\/magicline\\/images\\/icon.png?t=N2M9) center no-repeat #ff0000;cursor:pointer;top:-8px; border-radius: 2px;\\\" title=\\\"Insert paragraph here\\\">\\u21b5<\\/span><\\/span><\\/span><span style=\\\"\\\"><span contenteditable=\\\"false\\\" style=\\\"height: 0px; padding: 0px; margin: 0px; display: block; z-index: 9999; color: rgb(255, 255, 255); font-size: 0px; line-height: 0px; position: absolute; border-top: 1px dashed rgb(255, 0, 0); user-select: none; left: 0px; top: 4697.42px; right: 0px;\\\"><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px\\\">&nbsp;<\\/span><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px\\\">&nbsp;<\\/span><span contenteditable=\\\"false\\\" style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(https:\\/\\/cdn.ckeditor.com\\/4.21.0\\/full-all\\/plugins\\/magicline\\/images\\/icon.png?t=N2M9) center no-repeat #ff0000;cursor:pointer;top:-8px; border-radius: 2px;\\\" title=\\\"Insert paragraph here\\\">\\u21b5<\\/span><\\/span><\\/span><span style=\\\"\\\"><span contenteditable=\\\"false\\\" style=\\\"height: 0px; padding: 0px; margin: 0px; display: block; z-index: 9999; color: rgb(255, 255, 255); font-size: 0px; line-height: 0px; position: absolute; border-top: 1px dashed rgb(255, 0, 0); user-select: none; left: 0px; top: 4697.42px; right: 0px;\\\"><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px\\\">&nbsp;<\\/span><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px\\\">&nbsp;<\\/span><span contenteditable=\\\"false\\\" style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(https:\\/\\/cdn.ckeditor.com\\/4.21.0\\/full-all\\/plugins\\/magicline\\/images\\/icon.png?t=N2M9) center no-repeat #ff0000;cursor:pointer;top:-8px; border-radius: 2px;\\\" title=\\\"Insert paragraph here\\\">\\u21b5<\\/span><\\/span><\\/span><span style=\\\"\\\"><span contenteditable=\\\"false\\\" style=\\\"height: 0px; padding: 0px; margin: 0px; display: block; z-index: 9999; color: rgb(255, 255, 255); font-size: 0px; line-height: 0px; position: absolute; border-top: 1px dashed rgb(255, 0, 0); user-select: none; left: 0px; top: 4697.42px; right: 0px;\\\"><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;right:0px;border-right-color:#ff0000;border-width:8px 8px 8px 0;top:-8px\\\">&nbsp;<\\/span><span style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;border-color:transparent;display:block;border-style:solid;left:0px;border-left-color:#ff0000;border-width:8px 0 8px 8px;top:-8px\\\">&nbsp;<\\/span><span contenteditable=\\\"false\\\" style=\\\"width:0px;height:0px;padding:0px;margin:0px;display:block;z-index:9999;color:#fff;position:absolute;font-size: 0px;line-height:0px;height:17px;width:17px;right:17px;background:url(https:\\/\\/cdn.ckeditor.com\\/4.21.0\\/full-all\\/plugins\\/magicline\\/images\\/icon.png?t=N2M9) center no-repeat #ff0000;cursor:pointer;top:-8px; border-radius: 2px;\\\" title=\\\"Insert paragraph here\\\">\\u21b5<\\/span><\\/span><\\/span>We have a team of dedicated admissions counselors who are here to help guide you in the application process and related matters.<br><br>They are available to:<\\/p>\\n                    <div class=\\\"row d-flex justify-content-center\\\">\\n                        <div class=\\\"col-md-10 col-xl-8\\\">\\n                            <ul data-raw-content=\\\"true\\\">\\n                                <li class=\\\"li-marker\\\">Address questions related to the application.<\\/li>\\n                                <li class=\\\"li-marker\\\">Assist with financial aid (if required)<\\/li>\\n                                <li class=\\\"li-marker\\\">Help you better understand the program and answer your questions.<\\/li>\\n                            <\\/ul>\\n                        <\\/div>\\n                    <\\/div>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQKKCMMIYBB9D15\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQKKCPEXQ7JY10\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQKJWRGQX52ZF11 IDLQKKCPEXQ7JY10\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Who Should Enroll in this Course?<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container px-lg-5 px-sm-2\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <p data-raw-content=\\\"true\\\" class=\\\"px-lg-5 px-sm-2 text-justify\\\">The program has been designed to meet the upskilling requirements of lower and mid-level management professionals working in IT fields who come with prior technical knowledge on the basics of Coding. The course is idealfor people looking to work in job roles\\/positions such as, but not limited to:<br><br><\\/p>\\n                    <div class=\\\"row d-flex justify-content-center\\\">\\n                        <div class=\\\"col-md-5 col-xl-5\\\">\\n                            <ul data-raw-content=\\\"true\\\">\\n                                <li class=\\\"li-marker\\\">Computer Science Graduates.<\\/li>\\n                                <li class=\\\"li-marker\\\">Career Changers<\\/li>\\n                                <li class=\\\"li-marker\\\">MERN stack Enthusiasts&nbsp;<\\/li>\\n                                <li class=\\\"li-marker\\\">Web Designers\\/Developers:<\\/li>\\n                                <li class=\\\"li-marker\\\">Anyone Interested in Building Web Applications<\\/li>\\n                            <\\/ul>\\n                        <\\/div>\\n                        <div class=\\\"col-md-5 col-xl-5\\\">\\n                            <ul data-raw-content=\\\"true\\\">\\n                                <li class=\\\"li-marker\\\">BE, BCA, B.Sc. Students<\\/li>\\n                                <li class=\\\"li-marker\\\">Aspiring Software developers.<\\/li>\\n                                <li class=\\\"li-marker\\\">Entrepreneurs<\\/li>\\n                                <li class=\\\"li-marker\\\">Freelancers.<\\/li>\\n                            <\\/ul>\\n                        <\\/div>\\n                    <\\/div>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLQRY3JY1N79FJ0\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQRXUW5SZJZED1\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLQRXUW5SZJZED1\\\">\\n    <section class=\\\"IDLQRXUW5YI4FKW2\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">Learning Path<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"pb-2 mb-md-5 pb-md-0\\\">\\n                    <\\/p>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\"><\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <div class=\\\"main-timeline-2\\\">\\n                        <div class=\\\"timeline-2 left-2 py-5\\\">\\n                            <div class=\\\"card IDLQRXUW64Q3D5G3\\\">\\n                                <div class=\\\"card-body p-4 IDLQRXUW64RGD2K4\\\">\\n                                    <h4 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Ut enim ad minim veniam<\\/h4>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"text-muted mb-4\\\"><i aria-hidden=\\\"true\\\" class=\\\"far fa-clock\\\"><\\/i> 2017<\\/p>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"mb-0\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\\n                                        consequat.\\n                                    <\\/p>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                        <div class=\\\"timeline-2 right-2 py-5\\\">\\n                            <div class=\\\"card IDLQRXUW68XWUSK5\\\">\\n                                <div class=\\\"card-body p-4 IDLQRXUW68DYE7Y6\\\">\\n                                    <h4 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Duis aute irure dolor<\\/h4>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"text-muted mb-4\\\"><i aria-hidden=\\\"true\\\" class=\\\"far fa-clock\\\"><\\/i> 2016<\\/p>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"mb-0\\\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo\\n                                        enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.<\\/p>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                        <div class=\\\"timeline-2 left-2\\\">\\n                            <div class=\\\"card IDLQRXUW6CMBOER7\\\">\\n                                <div class=\\\"card-body p-4 IDLQRXUW6D6DU1R8\\\">\\n                                    <h4 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Sed ut nihil unde omnis<\\/h4>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"text-muted mb-4\\\"><i aria-hidden=\\\"true\\\" class=\\\"far fa-clock\\\"><\\/i> 2015<\\/p>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"mb-0\\\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,\\n                                        quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum\\n                                        qui dolorem eum fugiat quo voluptas nulla pariatur?<\\/p>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                        <div class=\\\"timeline-2 right-2\\\">\\n                            <div class=\\\"card IDLQRXUW6H9S4TS9\\\">\\n                                <div class=\\\"card-body p-4 IDLQRXUW6HJ77XO10\\\">\\n                                    <h4 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\"> Quis autem vel eum voluptate<\\/h4>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"text-muted mb-4\\\"><i aria-hidden=\\\"true\\\" class=\\\"far fa-clock\\\"><\\/i> 2014<\\/p>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"mb-0\\\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in\\n                                        culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.<\\/p>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                        <div class=\\\"timeline-2 left-2\\\">\\n                            <div class=\\\"card IDLQRXUW6LBFGDJ11\\\">\\n                                <div class=\\\"card-body p-4 IDLQRXUW6LR7ZF112\\\">\\n                                    <h4 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Mussum ipsum cacilds<\\/h4>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"text-muted mb-4\\\"><i aria-hidden=\\\"true\\\" class=\\\"far fa-clock\\\"><\\/i> 2013<\\/p>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"mb-0\\\">Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis\\n                                        voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\n                                    <\\/p>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                        <div class=\\\"timeline-2 right-2\\\">\\n                            <div class=\\\"card IDLQRXUW6PS2Z6Z13\\\">\\n                                <div class=\\\"card-body p-4 IDLQRXUW6QN61SP14\\\">\\n                                    <h4 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Mussum ipsum cacilds<\\/h4>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"text-muted mb-4\\\"><i aria-hidden=\\\"true\\\" class=\\\"far fa-clock\\\"><\\/i> 2013<\\/p>\\n                                    <p data-raw-content=\\\"true\\\" class=\\\"mb-0\\\">Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis\\n                                        voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\n                                    <\\/p>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/section>\\n    <section>\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-1\\\">STEP<\\/h3>\\n                    <ul role=\\\"tablist\\\" data-raw-content=\\\"true\\\" id=\\\"pills-tab\\\" class=\\\"nav nav-pills mb-3\\\">\\n                        <li role=\\\"presentation\\\" class=\\\"nav-item\\\"><button data-bs-toggle=\\\"pill\\\" data-bs-target=\\\"#pills-home\\\" type=\\\"button\\\" role=\\\"tab\\\" aria-controls=\\\"pills-home\\\" aria-selected=\\\"true\\\" id=\\\"pills-home-tab\\\" class=\\\"nav-link active\\\">1<\\/button><\\/li>\\n                        <li role=\\\"presentation\\\" class=\\\"nav-item\\\"><button data-bs-toggle=\\\"pill\\\" data-bs-target=\\\"#pills-profile\\\" type=\\\"button\\\" role=\\\"tab\\\" aria-controls=\\\"pills-profile\\\" aria-selected=\\\"false\\\" id=\\\"pills-profile-tab\\\" class=\\\"nav-link\\\">2<\\/button><\\/li>\\n                        <li role=\\\"presentation\\\" class=\\\"nav-item\\\"><button data-bs-toggle=\\\"pill\\\" data-bs-target=\\\"#pills-contact\\\" type=\\\"button\\\" role=\\\"tab\\\" aria-controls=\\\"pills-contact\\\" aria-selected=\\\"false\\\" id=\\\"pills-contact-tab\\\" class=\\\"nav-link\\\">3<\\/button><\\/li>\\n                        <li role=\\\"presentation\\\" class=\\\"nav-item\\\"><button data-bs-toggle=\\\"pill\\\" data-bs-target=\\\"#pills-contact\\\" type=\\\"button\\\" role=\\\"tab\\\" aria-controls=\\\"pills-contact\\\" aria-selected=\\\"false\\\" id=\\\"pills-contact-tab-2\\\" class=\\\"nav-link\\\">4<\\/button><\\/li>\\n                        <li role=\\\"presentation\\\" class=\\\"nav-item\\\"><button data-bs-toggle=\\\"pill\\\" data-bs-target=\\\"#pills-contact\\\" type=\\\"button\\\" role=\\\"tab\\\" aria-controls=\\\"pills-contact\\\" aria-selected=\\\"false\\\" id=\\\"pills-contact-tab-3\\\" class=\\\"nav-link\\\">5<\\/button><\\/li>\\n                        <li role=\\\"presentation\\\" class=\\\"nav-item\\\"><button data-bs-toggle=\\\"pill\\\" data-bs-target=\\\"#pills-contact\\\" type=\\\"button\\\" role=\\\"tab\\\" aria-controls=\\\"pills-contact\\\" aria-selected=\\\"false\\\" id=\\\"pills-contact-tab-4\\\" class=\\\"nav-link\\\">6<\\/button><\\/li>\\n                    <\\/ul>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8\\\">\\n                    <div id=\\\"pills-tabContent\\\" class=\\\"tab-content\\\">\\n                        <div role=\\\"tabpanel\\\" aria-labelledby=\\\"pills-home-tab\\\" tabindex=\\\"0\\\" id=\\\"pills-home\\\" class=\\\"tab-pane fade show active\\\">\\n                            <h3 data-raw-content=\\\"true\\\">HTML<\\/h3>\\n                            <hr>\\n                            <h4 data-raw-content=\\\"true\\\">Module Overview:<\\/h4>\\n                            <p data-raw-content=\\\"true\\\">The This HTML module provides a solid foundation for learners to understand the structure of web documents, create basic web pages, and lay the groundwork for further exploration into web development.<\\/p>\\n                            <h4 data-raw-content=\\\"true\\\">Module Curriculum:<\\/h4>\\n                            <div class=\\\"row d-flex justify-content-center\\\">\\n                                <div class=\\\"col-md-6 col-xl-6\\\">\\n                                    <ul data-raw-content=\\\"true\\\">\\n                                        <li class=\\\"li-marker\\\">What is Markup Language? <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Basic Structure of HTML <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Head Section and Elements <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Meta Tags <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">External Link Tags <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">HTML Structure Tags <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Create Table, Div and Frame Tab <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Content and Header Tags <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Paragraph, Span, Pre Tags <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Anchor Links and Named Anchors <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Object, frame and Image Tag <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Implementing iframe in Real\\u0002time <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Working with Forms <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Form Tag and Attributes<br><\\/li>\\n                                        <li class=\\\"li-marker\\\">POST and GET Method<br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Text Input, Text Area, Checkbox and Radio<br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Password Field<br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Select Option, Option Group<\\/li>\\n                                    <\\/ul>\\n                                <\\/div>\\n                                <div class=\\\"col-md-6 col-xl-6\\\">\\n                                    <ul data-raw-content=\\\"true\\\">\\n                                        <li class=\\\"li-marker\\\"> File Field and Hidden Fields <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Submit, Reset, Image Buttons <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Relation between HTML Form and PHP <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Creating a Live Website Form <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">XHTM what is XHTML? <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Difference between HTML &amp; XHTML <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">XHTML Basics <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Introduction to Doc Types <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">XHTML Validation <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">HTML5 (Latest Version)<br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Introduction to HTML5 <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">What\\u2019s new in HTML5 <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">HTML5 Api <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">HTML5 Semantic Tags <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">New Structure <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">HTML5 Multimedia <br><\\/li>\\n                                        <li class=\\\"li-marker\\\">Search, Email and URL Tel Input<br><\\/li>\\n                                    <\\/ul>\\n                                <\\/div>\\n                            <\\/div>\\n                        <\\/div>\\n                        <div role=\\\"tabpanel\\\" aria-labelledby=\\\"pills-profile-tab\\\" tabindex=\\\"0\\\" id=\\\"pills-profile\\\" class=\\\"tab-pane fade\\\"><\\/div>\\n                        <div role=\\\"tabpanel\\\" aria-labelledby=\\\"pills-contact-tab\\\" tabindex=\\\"0\\\" id=\\\"pills-contact\\\" class=\\\"tab-pane fade\\\">...<\\/div>\\n                        <div role=\\\"tabpanel\\\" aria-labelledby=\\\"pills-disabled-tab\\\" tabindex=\\\"0\\\" id=\\\"pills-disabled\\\" class=\\\"tab-pane fade\\\">...<\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/section>\\n<\\/div>\",\"is_html\":true},\"IDLQ218TNBMF7S81\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLQ218VC4TES8X0\"}},\"blocks\":[],\"html\":\"<section class=\\\"container-fluid IDLQ20XZXWMJKXG11 IDLQ218VC4TES8X0\\\">\\n    <div class=\\\"row\\\">\\n        <div class=\\\"container py-5\\\">\\n            <div class=\\\"row d-flex justify-content-center\\\">\\n                <div class=\\\"col-md-10 col-xl-8 text-center\\\">\\n                    <h3 data-raw-content=\\\"true\\\" class=\\\"fw-bold mb-4\\\">Certificate<\\/h3>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"mb-4 pb-2 mb-md-5 pb-md-0\\\">Course completion certificate will be provide to all the participants<\\/p>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"container\\\"><img src=\\\"http:\\/\\/localhost:8080\\/dharwadhubballitutor\\/uploads\\/aea21b1fdc87f72124c631f83f036360cb59ee03\\/certificates-to-get-printed.jpg\\\" alt=\\\"Certificate\\\" class=\\\"d-block mx-auto img-fluid\\\"><\\/div>\\n    <\\/div>\\n<\\/section>\",\"is_html\":true},\"IDLPIA9NUT8ZODH1\":{\"settings\":{\"attributes\":{\"style-identifier\":\"IDLPIA8T0939U2J1\"}},\"blocks\":[],\"html\":\"<div class=\\\"IDLPIA8T0939U2J1\\\">\\n    <footer class=\\\"container-fluid IDLPIA8T0GNTIY02\\\"><br>\\n        <div class=\\\"foot\\\">\\n            <div class=\\\"row\\\">\\n                <div class=\\\"col-lg-3\\\">\\n                    <div align=\\\"center\\\" class=\\\"text-white\\\">About us<\\/div>\\n                    <hr>\\n                    <p data-raw-content=\\\"true\\\" class=\\\"text-white\\\">DharwadHubballiTutor is one of the fastest-growing and most esteemed Software Training Institutions in Dharwad and Hubli. We are one of the fasting growing institute in Dharwad and Hubli twin cities. In a span of 3 years, we have registered\\n                        tremendous growth in training the students on cutting-edge technologies like Web Development, Software Testing, Data Analytics and data science, Digital Marketing and Basic Programming Languages empowering the students to compete in\\n                        the fast growing world of Technology.\\n                    <\\/p>\\n                <\\/div>\\n                <div class=\\\"col-lg-3\\\">\\n                    <div align=\\\"center\\\" class=\\\"text-white\\\"> Quick Link<\\/div>\\n                    <hr>\\n                    <ul data-raw-content=\\\"true\\\" class=\\\"list-group list-group-flush\\\"><a aria-current=\\\"page\\\" href=\\\"\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Home<\\/a><a aria-current=\\\"page\\\" href=\\\"\\/about\\/\\\" class=\\\"list-group-item list-group-item-action\\\">About<\\/a><a aria-current=\\\"page\\\" href=\\\"\\/contact\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Contact<\\/a><\\/ul>\\n                <\\/div>\\n                <div class=\\\"col-lg-3\\\">\\n                    <div class=\\\"title-text\\\"><\\/div><br>\\n                    <hr>\\n                    <ul data-raw-content=\\\"true\\\" class=\\\"list-group list-group-flush\\\"><a aria-current=\\\"page\\\" href=\\\"\\/termsandconditions\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Terms and Conditions<\\/a><a aria-current=\\\"page\\\" href=\\\"\\/PrivacyPolicy\\/\\\" class=\\\"list-group-item list-group-item-action\\\">Privacy\\n                            Policy<\\/a><\\/ul>\\n                <\\/div>\\n                <div class=\\\"col-lg-3\\\">\\n                    <div class=\\\"text-white\\\"> Our Contact<\\/div>\\n                    <hr>\\n                    <address>\\n                        <ul data-raw-content=\\\"true\\\" class=\\\"list-group list-group-flush\\\">\\n                            <li class=\\\"list-group-item\\\"><a href=\\\"tel:+919741237334\\\" class=\\\"navbar-brands align-items-center\\\" id=\\\"i2y9bn\\\"><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-telephone-outbound-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z\\\"><\\/path>\\n                                    <\\/svg><i class=\\\"bi bi-telephone-outbound-fill\\\"><\\/i>\\n                                    +91-9741237334<\\/a><br><a href=\\\"tel: +918007961759\\\" class=\\\"navbar-brands align-items-center\\\" id=\\\"iyb3mi\\\"><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-telephone-outbound-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z\\\"><\\/path>\\n                                    <\\/svg><i class=\\\"bi bi-telephone-outbound-fill\\\"><\\/i>\\n                                    +918007961759<\\/a><\\/li>\\n                            <li class=\\\"list-group-item\\\"><a href=\\\"mailto:info@dharwadhubballitutor.com\\\" class=\\\"navbar-brands align-items-center\\\" id=\\\"i4cpb4\\\"><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-envelope-fill\\\">\\n                                        <path d=\\\"M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z\\\"><\\/path>\\n                                    <\\/svg> info@dharwadhubballitutor.com<\\/a><\\/li>\\n                            <li class=\\\"list-group-item\\\">\\n                                <p><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-geo-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z\\\"><\\/path>\\n                                    <\\/svg>DharwadHubballitutor <br>\\n                                    J.G. Nippani Complex, Gandhi Nagar, Dharwad-04<\\/p>\\n                            <\\/li>\\n                            <li class=\\\"list-group-item\\\">\\n                                <p><svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" width=\\\"16\\\" height=\\\"16\\\" fill=\\\"currentColor\\\" viewBox=\\\"0 0 16 16\\\" class=\\\"bi bi-geo-fill\\\">\\n                                        <path fill-rule=\\\"evenodd\\\" d=\\\"M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z\\\"><\\/path>\\n                                    <\\/svg>\\n                                    DharwadHubballitutor,<br>Plot #26, Jaya Nagar,<br>Vidya Nagar, Hubli-21<\\/p>\\n                            <\\/li>\\n                            <li class=\\\"list-group-item\\\" id=\\\"iqkk0d\\\">\\n\\n                            <\\/li>\\n                        <\\/ul>\\n                    <\\/address>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/footer>\\n    <div class=\\\"desc\\\">\\n        <div class=\\\"row container-fluid bg-dark IDLPIA8T0UM7DYF3\\\">\\n            <div align=\\\"center\\\" class=\\\"col-md-12 text-white\\\"><small data-raw-content=\\\"true\\\">Designed and Developed By : <a href=\\\"www.dharwadhubballitutor.com\\\" class=\\\"nav-item text-grey\\\">DharwadHubballitutor<\\/a><\\/small><br><small data-raw-content=\\\"true\\\"> All rights reserved to : <a href=\\\"www.dharwadhubballitutor.com\\\" class=\\\"nav-item text-grey\\\">DharwadHubballitutor<\\/a><\\/small><\\/div>\\n        <\\/div>\\n    <\\/div>\\n<\\/div>\",\"is_html\":true}}}}', '2023-09-21 07:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
CREATE TABLE IF NOT EXISTS `page_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `locale` varchar(50) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` longtext NOT NULL,
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `meta_title`, `meta_description`, `meta_keywords`, `route`, `created_at`) VALUES
(10, 5, 'en', 'Home', 'Home', 'Home', '', '/', '2023-09-14 07:27:05'),
(11, 2, 'en', 'software-testing', 'software-testing', 'software-testing', '', '/software-testing', '2023-09-21 06:37:16'),
(14, 6, 'en', 'Web Design and Development', 'Web Design and Development', 'Web Design and Development', 'Web Design and Development', '/Web-Design-and-Development', '2023-11-28 11:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

DROP TABLE IF EXISTS `placement`;
CREATE TABLE IF NOT EXISTS `placement` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Admissionid` int NOT NULL,
  `Assistedon` date NOT NULL,
  `Companyname` varchar(50) NOT NULL,
  `jobpost` varchar(50) NOT NULL,
  `Result` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Rejectedby` varchar(11) DEFAULT NULL,
  `offerletter` varchar(11) DEFAULT NULL,
  `CreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Createdby` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Modifiedby` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Modifiedon` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Admissionid` (`Admissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`Id`, `Admissionid`, `Assistedon`, `Companyname`, `jobpost`, `Result`, `Reason`, `Rejectedby`, `offerletter`, `CreatedOn`, `Createdby`, `Modifiedby`, `Modifiedon`) VALUES
(2, 3, '2022-03-24', 'WIPRO', 'System Analyst', 'Inprogress', '', '', '', '2022-03-18 16:07:01', '', '', '0000-00-00 00:00:00'),
(3, 3, '2022-03-17', 'Accenture', 'Software engineer', 'Placed', '', '', '', '2022-03-18 16:08:07', '', '', '0000-00-00 00:00:00'),
(4, 3, '2022-03-20', 'TCS', 'Software', 'Placed', '', '', 'blank.jpg', '2022-03-18 17:04:44', '', '', '0000-00-00 00:00:00'),
(5, 3, '2022-03-12', 'Infosys', 'Software engineer', 'GotRejected', 'Technicle round', 'Company', '', '2022-03-21 12:14:49', '', '', '0000-00-00 00:00:00'),
(6, 53, '2022-02-03', 'People Tech Pvt Ltd', 'Java Developer', 'GotRejected', 'Technical Round not cleared', 'Company', '', '2022-05-09 05:07:31', '', '', '0000-00-00 00:00:00'),
(7, 53, '2022-02-25', 'Infosys Limited', 'Operations Executive', 'GotRejected', 'Technical round not cleared', 'Company', '', '2022-05-09 05:13:48', '', '', '0000-00-00 00:00:00'),
(8, 51, '2022-04-29', 'Healthsignz Technologies', 'UI Developer', 'GotRejected', 'Could not clear the Technical Round', 'Company', '', '2022-05-17 23:15:37', '', '', '0000-00-00 00:00:00'),
(9, 51, '2022-04-05', 'Prototyze Services Pvt Ltd', 'UI Developer', 'GotRejected', 'Did not wanted to relocate', 'Candidate', '', '2022-05-17 23:18:49', '', '', '0000-00-00 00:00:00'),
(10, 75, '2022-06-07', 'Desicrew', 'Internship', 'Placed', '', '', 'Anoop_DesiC', '2022-06-14 05:31:37', '', '', '0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postId`, `postTitle`, `postUrl`, `LinkUnder`, `appearOnHome`, `postDescription`, `postCreatedOn`, `postCreatedBy`, `titleTag`, `keywords`, `modifiedBy`) VALUES
(95, 'C Programming', '/dharwadhubballitutor/software-testing', 2, '1', '<p>C programming language is the fundamental step toward a programming career. One interested in computer programming or wants to build a career in the software industry must study C programming language as their first step. \n<br />\n</p>\n<h2><strong>Who Can study this course?</strong></h2>\n<p>\n<br />\n We recommend this course to anybody who whats to start their journey in programming. \n<br />\n</p>\n<ol>\n<li>It may be students studying in higher secondary school.</li>\n<li>It may be students studying in pre-university college.</li>\n<li>It may be students pursuing degrees.</li>\n<li>It may be students after completing the degree.</li>\n</ol>\n<p>\n<br />\n</p>\n<h2><strong>Course Features:</strong></h2>\n<p>\n<br />\n</p>\n<ol>\n<li>Concepts will be covered from the very basics, Keeping in consideration of students from nonprogramming backgrounds.</li>\n<li>All topics would be covered in depth and individual attention would be given to students\' queries.</li>\n<li>More than 300+ programming questions would be given as part of assignments.</li>\n<li>Programming questions would be from the list of programs that have been asked often in IT companies\' interviews.</li>\n<li>The major focus would be given to the logic building.</li>\n<li>100% Placement Assistance would be given.</li>\n</ol>\n<p>\n<br />\n</p>\n<h2><strong>For Further Enquiry:</strong></h2>\n<p>\n<br />\n Call us at <a href=\"tel:9741-237334\">+91-9741-237334</a> or <a href=\"tel:8007-961759\">+91-8007-961759</a>. \n<br />\n Write to <a href=\"mailto:info@dharwadhubballitutor.com\">info@dharwadhubballitutor.com</a> \n<br />\n</p>\n', '2022-12-21 11:45:34', 'info@acedecors.in', 'C Programming', 'programming classes in hubli, c programming in hubli, programming in hubli, computer programming in hubli, best programming in hubli, software training institute in hubli, computer training institute in hubli', 'info@acedecors.in'),
(93, 'Django Internship Training', '/dharwadhubballitutor/Django-Internship-Training', 2, '', '<p>This session was conducted with 6th-semester computer science students of Gangadhar Polytechnic College Dharwad. It was a wonderful experience for us as well as for the trainer to take this course and deliver it up to the mark. Daily a session of 4 hours was planned for the students in which 2 hours were planned for the theory session and 2 hours were planned for the practical session. \n<br />\n \n<br />\n Here in this training, the topics that were covered were the basics of python programming and the Django Framework to build the web application. Post which students were able to successfully build the calorie calculator. \n<br />\n Below are a few words by the students as well about their experience in this training session. \n<br />\n \n<br />\n DhawadHubballitutor is one of the best tutors in Dharwad we had a good experience in the 15 days of our training with <strong>Python with Django framework</strong> it was really fun and a good experience for each of us. The teaching is a very good and very comfortable environment and they give real-time examples for each topic so it is so easy to understand the topics and we are really glad that we had training in such expertise teacher. Thank you so many sirs for your support and guidance with your guidance we can surely gain so much knowledge about Python and Django frameworks we are glad to sir. And they also teach all other growing programming languages such as Web designing, HTML, javascript, graphic designing, software marketing, and so on so do visit the DharwadHubblli tutors for your better experience in a programming language. \n<br />\n</p>\n', '2022-05-25 04:21:48', 'info@acedecors.in', 'Django Internship Training', 'Python Internship, Python Programming courses near me, Free Python, HTML, CSS, JavaScript, Django Projects, Django Framework', 'info@acedecors.in'),
(94, 'Job on Manual and Automation Software Testing', '/dharwadhubballitutor/Software-Testing-Job', 2, '', '<h2><strong>Job Description:</strong></h2>\n<p>\n<br />\n  \n<br />\n</p>\n<ol>\n<li>Candidate should have sound knowledge of Software Engineering Subject.</li>\n<li>Candidates should have good communication and analytical skill.</li>\n<li>Candidates should be interested in working on software testing profiles manual and automation.</li>\n<li>Candidates must be from BCA, BE CS/IT, MCA, Bsc CS, or Msc CS, background.</li>\n<li>Currently, the work location is work from home. The company might call for work from the office in the future.</li>\n<li>Salary Depends on the interview performance.</li>\n</ol>\n<p> \n<br />\n For further details please contact us at +91-8007961759/ +91-9741237334 \n<br />\n</p>\n', '2022-05-29 21:53:36', 'info@acedecors.in', 'Job on Manual and Automation Software Testing', 'Job on manual and automation testing, Jobs near me, Software jobs, Jobs for BCA MCA Msc Bsc, IT jobs, Computer science,Graduations', 'info@acedecors.in'),
(96, 'Python Programming', '/dharwadhubballitutor/hubli/python-programming-training', 2, '1', '<p><span style=\"color: #4d5156;\">Python is a very simple and easy-to-understand programming language. Python has simple syntax like the English language. Python can be used to write less and do more strategic programs.</span>\n\n</p>\n<h2><strong>Who Can study this course?</strong></h2>\n<p>\n<br />\n We recommend this course to anybody who whats to start their journey in programming. \n<br />\n</p>\n<ol>\n<li>It may be students studying in higher secondary school.</li>\n<li>It may be students studying in pre-university college.</li>\n<li>It may be students pursuing degrees.</li>\n<li>It may be students after completing the degree.</li>\n</ol>\n<p>Also, one looking to build a career in Data Science and Analytics can opt for python programming.\n\n</p>\n<h2><strong>Course Features:</strong></h2>\n<p> \n<br />\n</p>\n<ol>\n<li>Concepts will be covered from the very basics, Keeping in consideration of students from nonprogramming backgrounds.</li>\n<li>All topics would be covered in depth and individual attention would be given to students\' queries.</li>\n<li>More than 300+ programming questions would be given as part of assignments.</li>\n<li>Programming questions would be from the list of programs often asked in IT companies\' interviews.</li>\n<li>The primary focus would be given to logic building.</li>\n<li>100% Placement Assistance would be given.</li>\n</ol>\n<p>\n<br />\n</p>\n<h2><strong>For Further Enquiry:</strong></h2>\n<p> \n<br />\n Call us at <a href=\"tel:9741-237334\">+91-9741-237334</a> or <a href=\"tel:8007-961759\">+91-8007-961759</a>. \n<br />\n Write to <a href=\"mailto:info@dharwadhubballitutor.com\">info@dharwadhubballitutor.com</a> \n<br />\n</p>\n', '2022-12-21 18:37:49', 'info@acedecors.in', 'Python Programming', 'Python Programming,python,python programming training,python programming training in dharwad,python language,python coaching in dharwad,python coaching,python language,python language training, python language coaching in dharwad,python tutorial in dharwad,python tutorial,python basics,python programming for beginners,python for beginners in dharwad', 'info@acedecors.in');

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

INSERT INTO `postcatmapping` (`postId`, `catId`) VALUES
(1, 4),
(3, 5),
(4, 5),
(5, 5),
(2, 5),
(6, 12),
(7, 12);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postimages`
--

INSERT INTO `postimages` (`postImageId`, `postImage`, `createdOn`, `createdBy`, `modifiedBy`, `imageAlternateText`, `postId`) VALUES
(96, 0x707974686f6e2d70726f6772616d6d696e672d69636f6e2e737667, '2022-12-21 18:37:49', 'info@acedecors.in', 'info@acedecors.in', 'python-programming-training-logo', 96),
(95, 0x6370726f6772616d6d696e672e737667, '2022-12-21 11:45:34', 'info@acedecors.in', 'info@acedecors.in', 'c-programming-icon', 95),
(93, 0x576861747341707020496d61676520323032322d30352d32342061742031322e35322e353820504d2e6a706567, '2022-05-25 04:21:48', 'info@acedecors.in', 'info@acedecors.in', 'Internship-Inplant-Training', 93),
(94, 0x315f736c6c595255696c4b2d756545696b465039385868512e6a706567, '2022-05-29 21:53:36', 'info@acedecors.in', 'info@acedecors.in', 'Software testing job', 94);

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

--
-- Dumping data for table `postsubcatmapping`
--

INSERT INTO `postsubcatmapping` (`postId`, `subCatId`) VALUES
(94, 110),
(93, 109),
(96, 111),
(96, 89),
(95, 89);

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

DROP TABLE IF EXISTS `privacypolicy`;
CREATE TABLE IF NOT EXISTS `privacypolicy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `description`) VALUES
(3, '&amp;lt;p&amp;gt;hjsdshshdjsdhjd\n&amp;lt;br /&amp;gt;\n&amp;lt;/p&amp;gt;'),
(4, '<p>jdhfdfhdjhfj\n<br />\n</p>\n'),
(5, '<p>jdhfdfhdjhfj  xczc\n<br />\n</p>\n'),
(6, '<p>Our Privacy Plicy\n<br />\n</p>\n'),
(7, '<p>Our Privacy Policy \n<br />\n</p>\n'),
(8, '<ol>\n<li>We collect your basic information like name, phone, email address, and aadhar details.</li>\n<li>We do not share your information collected with any third party.</li>\n<li>The information collect is not published anywhere on the internet.</li>\n</ol>\n');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(2, 'Employee'),
(1, 'Onwer');

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
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `setting` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL,
  `is_array` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting` (`setting`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`, `is_array`) VALUES
(2, 'languages', 'en', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliderimages`
--

INSERT INTO `sliderimages` (`imageId`, `image`, `createdOn`, `alternatetext`, `imageCaption`, `modifiedBY`, `createdBy`) VALUES
(3, 'slide0.jpg', '2022-02-05 15:56:40', 'Slide1', 'slide1', 'info@acedecors.in', 'info@acedecors.in'),
(4, 'slide2.jpg', '2022-02-05 15:56:57', 'Slide2', 'Slide2', 'info@acedecors.in', 'info@acedecors.in'),
(5, 'slide3.jpg', '2022-02-05 15:57:19', 'Slide3', 'Slide3', 'info@acedecors.in', 'info@acedecors.in');

-- --------------------------------------------------------

--
-- Table structure for table `smsdetails`
--

DROP TABLE IF EXISTS `smsdetails`;
CREATE TABLE IF NOT EXISTS `smsdetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `APIkey` varchar(50) NOT NULL,
  `key` varchar(100) NOT NULL,
  `test` int NOT NULL,
  `ModifiedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CreatedBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `smsdetails`
--

INSERT INTO `smsdetails` (`Id`, `username`, `APIkey`, `key`, `test`, `ModifiedOn`, `CreatedOn`, `ModifiedBy`, `CreatedBy`) VALUES
(1, 'atharshaikh1@gmail.com', 'ZDg0ZWJiOGQ4N2E4MjJhNDVhZDEyYzZjZGI1MzJhOTY=', '650d05aea27f2bad20a99358b460a1980388a591d2cebaa63d04e1f03ca83605', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialmediahandle`
--

DROP TABLE IF EXISTS `socialmediahandle`;
CREATE TABLE IF NOT EXISTS `socialmediahandle` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modifiedBy` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modifiedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `socialmediahandle`
--

INSERT INTO `socialmediahandle` (`Id`, `name`, `handle`, `icon`, `createdon`, `createdBy`, `modifiedBy`, `modifiedon`) VALUES
(16, 'Facebook', 'https://www.facebook.com/DharwadhubballiTutor', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-facebook\" viewBox=\"0 0 16 16\">\n            <path d=\"M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z\"/>\n          </svg>', '2022-02-14 12:54:27', 'info@acedecors.in', 'info@acedecors.in', '2022-02-14 12:54:27'),
(17, 'Twitter', 'https://www.twitter.com/DharwadTutor', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-twitter\" viewBox=\"0 0 16 16\">\n            <path d=\"M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z\"/>\n          </svg>', '2022-02-15 12:55:30', 'info@acedecors.in', 'info@acedecors.in', '2022-02-15 12:55:30'),
(18, 'Instagram', 'https://www.instagram.com/dharwadhubballitutor/', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-instagram\" viewBox=\"0 0 16 16\">\n            <path d=\"M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z\"/>\n          </svg>', '2022-02-15 12:56:31', 'info@acedecors.in', 'info@acedecors.in', '2022-02-15 12:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subCategoryDescription` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subCategoryCreatedBy` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subCategoryCreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subCategoryModifiedBy` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subCategoryModifiedon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subCategoryId`, `subCategoryName`, `subCategoryDescription`, `subCategoryCreatedBy`, `subCategoryCreatedOn`, `subCategoryModifiedBy`) VALUES
(89, 'Programming Languages', 'Programming Languages', 'info@acedecors.in', '2022-02-07 15:11:00', 'info@acedecors.in'),
(97, 'Civil Design Software', 'Civil Design Software', 'info@acedecors.in', '2022-02-24 11:56:06', 'info@acedecors.in'),
(98, 'Cloud Computing', 'Cloud Computing', 'info@acedecors.in', '2022-02-24 12:29:44', 'info@acedecors.in'),
(100, 'Mechanical Design Software', 'Mechanical Design Software', 'info@acedecors.in', '2022-03-05 14:49:42', 'info@acedecors.in'),
(101, 'Web Design and Development', 'Web Design and Development', 'info@acedecors.in', '2022-03-12 15:54:08', 'info@acedecors.in'),
(102, 'Digital Marketing', 'Digital marketing', 'info@acedecors.in', '2022-03-12 15:55:13', 'info@acedecors.in'),
(103, 'Graphic Designing', 'Graphic Designing', 'info@acedecors.in', '2022-03-12 15:55:49', 'info@acedecors.in'),
(104, 'Business Process Set Up', 'Business Process Set Up', 'info@acedecors.in', '2022-03-12 15:56:24', 'info@acedecors.in'),
(106, 'Branding', 'Branding', 'info@acedecors.in', '2022-03-12 15:57:26', 'info@acedecors.in'),
(108, 'Demo', 'Demo class', 'info@acedecors.in', '2022-04-05 04:49:07', 'info@acedecors.in'),
(109, 'In Plant Training', 'In Plant Training', 'info@acedecors.in', '2022-05-24 00:29:05', 'info@acedecors.in'),
(110, 'Software Testing', 'Software Testing job opportunity in udpi', 'info@acedecors.in', '2022-05-26 00:42:37', 'info@acedecors.in'),
(111, 'Data Science', 'Data Science', 'info@acedecors.in', '2022-12-21 18:25:22', 'info@acedecors.in');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE IF NOT EXISTS `template` (
  `messageId` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`messageId`, `sender`, `message`) VALUES
(9, 'DHTENQ', 'Thank you {name} for enquiring with DharwadHubballiTutor.%nFor any further assistance please contact us on%n+91-9741237334 +91-8007961759%n www.dharwadhubballitutor.com');

-- --------------------------------------------------------

--
-- Table structure for table `termsandconditions`
--

DROP TABLE IF EXISTS `termsandconditions`;
CREATE TABLE IF NOT EXISTS `termsandconditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `termsandconditions`
--

INSERT INTO `termsandconditions` (`id`, `description`) VALUES
(1, '<p>hjerhehrrh\n<br />\n</p>\n'),
(2, '<p>hjerhehrrh  cxz\n<br />\n</p>\n'),
(3, '<p>Our Terms And Conditions\n<br />\n</p>\n'),
(4, '<ol>\r\n<li>100% fee needs to be paid before starting the classes for any course.</li>\r\n<li> Should a student cause any damage to the Institutions property, they are to be held responsible for compensation including full costs of repair. </li>\r\n<li> Students are expected to observe and act upon the class timetable and must attend all classes on time .</li>\r\n\r\n</ol>'),
(5, '<ol>\r\n<li>100% fee needs to be paid before starting the classes for any course.</li>\r\n<li>Should a student cause any damage to the institution\'s property, they are to be held responsible for compensation including full costs of repair.</li>\r\n<li>Students are expected to observe and act upon the class timetable and must attend all classes on time.</li>\r\n<li>Once the fee is paid, it will not be refunded.</li>\r\n<li>After Making the payment if the student doesn\'t attend any class for a month, then the fees paid would get lapsed and further students need to make repayment of a fee to take the classes again.</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Stand-in structure for view `test`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
`id` int
,`Name` varchar(50)
,`Email` varchar(100)
,`Phone` varchar(12)
,`Qualification` varchar(100)
,`source` varchar(50)
,`branch` varchar(100)
,`Trainings` varchar(40)
,`Internship` varchar(40)
,`Demo` varchar(100)
,`Services` varchar(100)
,`status` tinyint(1)
,`Modified_Date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Image` longblob NOT NULL,
  `ImageAlternateText` varchar(50) NOT NULL,
  `RateNow` varchar(5) NOT NULL,
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modifiedby` varchar(111) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`Id`, `Name`, `Description`, `Image`, `ImageAlternateText`, `RateNow`, `createdDate`, `Modifiedby`, `createdby`) VALUES
(1, 'Anusha Joshi', 'Attending courses at DharwadHubballiTutor is a great pleasure because the staff is really encouraging and motivational, and they pleasantly explain ideas.', 0x416e757368612d5f3439392dc3972d3439382d70785f2e77656270, '', '5', '2022-03-02 14:31:18', 'info@acedecors.in', 'info@acedecors.in'),
(2, 'Fazlur Rehman', 'The team has a lot of expertise and is very professional. They pay special attention to the individual\'s requirements and prepare accordingly.', 0x66617a6c75722d5f3439392dc3972d3439382d70785f2e77656270, '', '5', '2022-03-02 14:32:03', 'info@acedecors.in', 'info@acedecors.in');

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
  `id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `Coursesassigned` varchar(100) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `AdhaarNo` varchar(20) NOT NULL,
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `public_id` varchar(50) NOT NULL,
  `original_file` varchar(512) NOT NULL,
  `mime_type` varchar(50) NOT NULL,
  `server_file` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_id` (`public_id`),
  UNIQUE KEY `server_file` (`server_file`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `public_id`, `original_file`, `mime_type`, `server_file`) VALUES
(8, '9213f9708f0e730d6a4be83265968f6c0afc63cc', 'PSX_20201024_141136---Fazlur-Mudnal.jpg', 'image/jpeg', '9213f9708f0e730d6a4be83265968f6c0afc63cc/PSX_20201024_141136---Fazlur-Mudnal.jpg'),
(11, '4ae2cd07e005151c0d079ef78ae37b1cdc9bb10a', 'shweta.svg', 'image/svg+xml', '4ae2cd07e005151c0d079ef78ae37b1cdc9bb10a/shweta.svg'),
(12, 'cf4e9a6e5bf107ba294335cd676798cecca3e44d', 'Gurudatt-karjagar.jpg', 'image/jpeg', 'cf4e9a6e5bf107ba294335cd676798cecca3e44d/Gurudatt-karjagar.jpg'),
(13, 'e188579c164dd816280d991e120c42fe19bd33af', '1.svg', 'image/svg+xml', 'e188579c164dd816280d991e120c42fe19bd33af/1.svg'),
(14, '7513541e560c70595de019bcc9d1ec037465e20a', '2.svg', 'image/svg+xml', '7513541e560c70595de019bcc9d1ec037465e20a/2.svg'),
(15, 'f7823d918b0974c5e8a0d06b8a1a393a9dd7ac71', '3.svg', 'image/svg+xml', 'f7823d918b0974c5e8a0d06b8a1a393a9dd7ac71/3.svg'),
(16, 'f71284f3fec595de9477c3f0ac9c54a9dfb16dec', '4.svg', 'image/svg+xml', 'f71284f3fec595de9477c3f0ac9c54a9dfb16dec/4.svg'),
(17, 'f0bf77f3314a72068da8cccc52688e860b8ab70b', '5.svg', 'image/svg+xml', 'f0bf77f3314a72068da8cccc52688e860b8ab70b/5.svg'),
(18, 'a2f6169af7dc7051493411178fe27f20c48460db', '6.svg', 'image/svg+xml', 'a2f6169af7dc7051493411178fe27f20c48460db/6.svg'),
(22, 'aea21b1fdc87f72124c631f83f036360cb59ee03', 'certificates-to-get-printed.jpg', 'image/jpeg', 'aea21b1fdc87f72124c631f83f036360cb59ee03/certificates-to-get-printed.jpg'),
(24, '4002890c2de674b18378853b82670ad1a6a35d3c', 'Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg', 'image/jpeg', '4002890c2de674b18378853b82670ad1a6a35d3c/Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg'),
(26, '0754a57ec1a872c192af3dd97527334737758afb', 'Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg', 'image/jpeg', '0754a57ec1a872c192af3dd97527334737758afb/Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg'),
(27, '1302c712dcfaeb2c118a2ccf7d13759d0b458510', 'Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg', 'image/jpeg', '1302c712dcfaeb2c118a2ccf7d13759d0b458510/Blue-Modern-Gradient-Technology-LinkedIn-Banner-(Website).jpg'),
(28, '9f3d06d029bdf8c51b750ecdceb244cc6faf55d1', 'vscode-visual-studio-code-11562929010rwlaaoeohl.png', 'image/png', '9f3d06d029bdf8c51b750ecdceb244cc6faf55d1/vscode-visual-studio-code-11562929010rwlaaoeohl.png'),
(29, '89ccaaea01b90d36acea77801ce397008d85d762', 'vscode.png', 'image/png', '89ccaaea01b90d36acea77801ce397008d85d762/vscode.png'),
(30, '577f7b62bd5dd135d0e59be8699bb85cca0c903d', 'react.svg', 'image/svg+xml', '577f7b62bd5dd135d0e59be8699bb85cca0c903d/react.svg'),
(31, '3d89326fcae3491b2dcd65c15541998f18e86b7c', 'react.svg', 'image/svg+xml', '3d89326fcae3491b2dcd65c15541998f18e86b7c/react.svg'),
(32, '33405b8b2919dc5409d14fd477945e8522200261', 'node-js.svg', 'image/svg+xml', '33405b8b2919dc5409d14fd477945e8522200261/node-js.svg'),
(33, 'd95cb017f0fbe6386300c8445edc949eb70bb786', 'mongodb.svg', 'image/svg+xml', 'd95cb017f0fbe6386300c8445edc949eb70bb786/mongodb.svg'),
(34, '8480c25986877ae70040d6f8b1031f9ec05d5da4', 'github.svg', 'image/svg+xml', '8480c25986877ae70040d6f8b1031f9ec05d5da4/github.svg');

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
  `roleId` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_password`, `user_type`, `user_status`, `user_created_on`, `roleId`) VALUES
(2, 'info@acedecors.in', '9742367112', 'info@acedecors.in', 'Acedecors@123', 'Admin', 'Enable', '2021-05-01 18:47:39', 1),
(11, 'user_1', '1234567890', 'user_1@dharwadhubballitutor.com', 'vG%18j6Og0jl', 'Manager', 'Enable', '2022-10-19 14:38:23', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `yearlyincome`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `yearlyincome`;
CREATE TABLE IF NOT EXISTS `yearlyincome` (
`YEAR` int
,`AmountCollected` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Structure for view `admissionsforlastq`
--
DROP TABLE IF EXISTS `admissionsforlastq`;

DROP VIEW IF EXISTS `admissionsforlastq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admissionsforlastq`  AS  select count(0) AS `Admissions`,monthname((curdate() + interval -(3) month)) AS `MONTH` from `admissions` where ((monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(3) month))) and (year(`admissions`.`Modified_Date`) = year((curdate() + interval -(3) month)))) union select count(0) AS `Admissions`,monthname((curdate() + interval -(2) month)) AS `MONTH` from `admissions` where ((monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(2) month))) and (year(`admissions`.`Modified_Date`) = year((curdate() + interval -(3) month)))) union select count(0) AS `Admissions`,monthname((curdate() + interval -(1) month)) AS `MONTH` from `admissions` where ((monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(1) month))) and (year(`admissions`.`Modified_Date`) = year((curdate() + interval -(3) month)))) ;

-- --------------------------------------------------------

--
-- Structure for view `coursebasedenq`
--
DROP TABLE IF EXISTS `coursebasedenq`;

DROP VIEW IF EXISTS `coursebasedenq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coursebasedenq`  AS  select `candidates`.`Trainings` AS `Trainings`,count(`candidates`.`id`) AS `NUMBER` from `candidates` where (`candidates`.`Trainings` <> '') group by `candidates`.`Trainings` ;

-- --------------------------------------------------------

--
-- Structure for view `enqueriesforlastq`
--
DROP TABLE IF EXISTS `enqueriesforlastq`;

DROP VIEW IF EXISTS `enqueriesforlastq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `enqueriesforlastq`  AS  select count(0) AS `Enqueries`,monthname((curdate() + interval -(3) month)) AS `MONTH` from `candidates` where ((monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(3) month))) and (year(`candidates`.`Modified_Date`) = year((curdate() + interval -(1) month)))) union select count(0) AS `Enqueries`,monthname((curdate() + interval -(2) month)) AS `MONTH` from `candidates` where ((monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(2) month))) and (year(`candidates`.`Modified_Date`) = year((curdate() + interval -(1) month)))) union select count(0) AS `Enqueries`,monthname((curdate() + interval -(1) month)) AS `MONTH` from `candidates` where ((monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(1) month))) and (year(`candidates`.`Modified_Date`) = year((curdate() + interval -(1) month)))) ;

-- --------------------------------------------------------

--
-- Structure for view `feescollectionlastm`
--
DROP TABLE IF EXISTS `feescollectionlastm`;

DROP VIEW IF EXISTS `feescollectionlastm`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `feescollectionlastm`  AS  select `a`.`id` AS `Id`,`a`.`Name` AS `Name`,`a`.`CoursesOpted` AS `Course`,`f`.`TotalFees` AS `TotalFees`,`f`.`DueDate` AS `DueDate`,sum(`f`.`PaidFees`) AS `PaidFees` from (`admissions` `a` join `fees` `f` on((`a`.`id` = `f`.`Admissionid`))) group by `f`.`TotalFees`,`a`.`Name`,`a`.`CoursesOpted` order by `a`.`id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `monthlyincome`
--
DROP TABLE IF EXISTS `monthlyincome`;

DROP VIEW IF EXISTS `monthlyincome`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monthlyincome`  AS  select month(`fees`.`Modified_Date`) AS `monthNum`,sum(`fees`.`PaidFees`) AS `AmountCollected`,date_format(`fees`.`Modified_Date`,'%b') AS `MONTH` from `fees` where (year(`fees`.`Modified_Date`) = year(curdate())) group by `monthNum`,`MONTH` ;

-- --------------------------------------------------------

--
-- Structure for view `test`
--
DROP TABLE IF EXISTS `test`;

DROP VIEW IF EXISTS `test`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test`  AS  select `candidates`.`id` AS `id`,`candidates`.`Name` AS `Name`,`candidates`.`Email` AS `Email`,`candidates`.`Phone` AS `Phone`,`candidates`.`Qualification` AS `Qualification`,`candidates`.`source` AS `source`,`candidates`.`branch` AS `branch`,`candidates`.`Trainings` AS `Trainings`,`candidates`.`Internship` AS `Internship`,`candidates`.`Demo` AS `Demo`,`candidates`.`Services` AS `Services`,`candidates`.`status` AS `status`,`candidates`.`Modified_Date` AS `Modified_Date` from `candidates` ;

-- --------------------------------------------------------

--
-- Structure for view `yearlyincome`
--
DROP TABLE IF EXISTS `yearlyincome`;

DROP VIEW IF EXISTS `yearlyincome`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yearlyincome`  AS  select year(`fees`.`Modified_Date`) AS `YEAR`,sum(`fees`.`PaidFees`) AS `AmountCollected` from `fees` group by `YEAR` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
