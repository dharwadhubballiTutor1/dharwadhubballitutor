-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2022 at 05:44 AM
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
(NULL, 1, 'Gauri Gatade', '7019353194', 'gomzyr3@gmail.com', '1997-09-11', 'BSCinHomeScience', 'Savitri Gatade', '9480296486', 'Basic Computers', 'H.no. 13 Sharada Residency, Yalakki Shettar Colony, Dharwad 580001', '123456789012', '', 'Dummy-Icon-Female.jpeg', 'Gauri Resume.docx', 'Female', 1, 2, '2021-03-27 07:51:09'),
(NULL, 2, 'Pallavi Hokrani', '9845067824', 'pallavihokrani20@gmail.com', '2000-05-12', 'MBA', 'Omkar Hokrani', '8747851425', 'Advanced Excel Program', 'Bylhallik tq  Bhalki dist  Bidar', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'Dummy-Icon-Female.jpg', 'dummyresume.docx', 'Female', 1, 2, '2021-09-21 21:16:07'),
(NULL, 3, 'Jagadeesh s kalappanavar', '9880137833', 'jagadishkoppanavar@gmail.com', '1974-09-18', 'Bcom', 'jagadish', '9880137833', 'Basic Computers', 'Haveri', '123456789012', 'Dummy-Aadhaar-Screenshot.png', 'dummy-icon-male.jpg', 'dummyresume.docx', 'Male', 1, 1, '2021-03-27 07:56:48'),
(0, 4, 'Niyazahmed Garag', '9036099541', 'nzgarag@gmail.com', '1988-09-30', 'Bcom', 'Nazeer', '9743311127', 'Basic Computers', 'Maheboob nagar Last Bus stop near quba masjid 2nd cross Hashmi nagar dharwad', '506125065410', 'IMG-20190223-WA0015 - Niyaz Garag.jpg', 'IMG_20191113_193617 - Niyaz Garag.jpg', 'Resume Niyaz 2 - Niyaz Garag.pdf', 'Male', 1, 2, '2021-03-27 07:56:59'),
(52, 5, 'Hasen dongri', '9741834207', 'hasendongri8@gmail.com', '1993-06-04', 'BCA', 'Bandagisab', '9148990467', 'C Programming', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 3, '2021-09-21 21:16:56'),
(0, 6, 'Hasen dongri', '9741834207', 'hasendongri8@gmail.com', '1993-06-04', 'BCA', 'Bandagisab', '9148990467', 'Advanced Excel Program', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 2, '2021-04-09 02:55:54'),
(0, 13, 'Aparna Devangamath', '09742333450', 'aparnadevangamath@gmail.com', '1978-11-27', 'BABed', 'Meghna', '7022970032', 'Basics of Computers', 'H.no 92 nadiger house lingaraj Nagar hubli', '606819116783', '20210520_201648 - Aparna Devangmath.jpg', '20210611_202315 - Aparna Devangmath.jpg', 'resume - Aparna Devangmath.pdf', 'Female', 1, 1, '2021-06-14 03:16:14'),
(128, 29, 'KHALILULLA HUSSAINI', '9731883071', '0603khalil@gmail.com', '2001-06-03', 'BE', 'kishwar jahan', '7337760376', 'AutoCad', 'behind Vanita sewa samaj, near noorani masjid, azad Nagar, dharward 580001', '814500273810', 'IMG-20210913-WA0005 - KHALILULLA HUSSAINI.jpg', 'IMG-20210807-WA0005 - KHALILULLA HUSSAINI.jpg', 'Khalilulla Hussaini - KHALILULLA HUSSAINI.docx', 'Male', 1, 7, '2021-09-13 03:01:45'),
(0, 7, 'Santhosh Motagi', '9480172258', 'santhoshmotagi99@gmail.com', '1999-07-14', 'BE', 'Sangappa Motagi', '9449539278', 'Etabs', 'Near MGVC College, Behind ZP Compound, Maruti Nagar, Muddebihal (Tq &amp; Post), Vijayapura(Dst)-586212', '469069654423', 'Adhar card.pdf', 'IMG_20210417_133818.jpg', 'SANTHOSH MOTAGI.pdf', 'Male', 1, 12, '2021-04-18 02:25:00'),
(0, 8, 'Mallikarjuna.ST', '9742778969', 'mallikarjun2751999@gmail.com', '1999-05-27', 'BE', 'Shambhulinga', '8073062912', 'Etabs', 'Saptapur 1st  cross, Dharwad', '689175529206', 'Adhar card (Mallikarjun).pdf', '20210417_144726 (1).jpg', 'manjesh.docx', 'Male', 1, 12, '2021-04-17 03:50:45'),
(0, 9, 'Hasen dongri', '9741834207', 'hasendongri8@gmail.com', '1993-06-04', 'BCA', 'Bandagisab', '9148990467', 'C++ Programming', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 4, '2021-05-11 23:36:38'),
(0, 10, 'Mallikarjuna.ST', '9742778969', 'mallikarjun2751999@gmail.com', '1999-05-27', 'BE', 'Shambhulinga', '8073062912', 'AutoCad', 'Saptapur 1st  cross, Dharwad', '689175529206', 'Adhar card (Mallikarjun).pdf', '20210417_144726 (1).jpg', 'manjesh.docx', 'Male', 1, 7, '2021-09-21 21:15:36'),
(0, 11, 'Santhosh Motagi', '9480172258', 'santhoshmotagi99@gmail.com', '1999-07-14', 'BE', 'Sangappa Motagi', '9449539278', 'AutoCad', 'Near MGVC College, Behind ZP Compound, Maruti Nagar, Muddebihal (Tq &amp; Post), Vijayapura(Dst)-586212', '469069654423', 'Adhar card (1).pdf', 'IMG_20210417_133818.jpg', 'SANTHOSH MOTAGI.pdf', 'Male', 1, 7, '2021-05-18 03:18:11'),
(0, 12, 'Fazlur_rehman Mudnal', '7204605340', 'fazlur44rehman@gmail.com', '1993-04-08', 'Diploma', 'Nasrin Mudnal', '7204605340', 'C Programming', 'Pathan street Old Hubli.', '308852398631', 'IMG_20210525_112522 - Fazlur Mudnal.jpg', 'PSX_20201024_141136 - Fazlur Mudnal.jpg', 'IMG_20210525_120713 - Fazlur Mudnal.jpg', 'Male', 1, 3, '2021-05-25 00:42:48'),
(76, 14, 'TAHEERHUSAIN LAGADAK', '7848011543', 'taheer489@gmail.com', '1994-06-17', 'BECIVIL', 'ABDULRASHID', '9731743981', 'Revit Designing Software', 'SANGOLLI RAYANNA NAGAR DHARWAD', '707578640993', '78585b0b-6e2b-40ac-bd75-5ec5875060df - Taheer L.jfif', '716e7ef6-db60-4209-95c7-96e30d237664 - Taheer L.jfif', 'TAHEER CV - Taheer L.pdf', 'Male', 1, 8, '2021-06-19 06:54:10'),
(0, 15, 'Vaibhav Kammar', '9035555835', 'vaibhav.incredible9@gmail.com', '1999-02-01', 'BCA', 'Ashok kammar', '9743197900', 'BCAProject', 'Jaladarshini layout next to RK nagar Dharwad', '917906899941', 'Screenshot_20210630-122747 - vaibhav kammar.jpg', 'IMG_20210602_144618 - vaibhav kammar.jpg', 'Screenshot_20210630-122934 - vaibhav kammar.jpg', 'Male', 1, 14, '2021-06-30 00:07:04'),
(81, 16, 'Nagveni Betgeri', '6362307884', 'nagavenibetageri4@gmail.com', '1999-12-27', 'BCA', 'Basavaraj y betageri', '9483738174', 'BCAProject', 'Hebballi agasi dharwad', '483313064696', 'IMG-20210630-WA0000 - Nagaveni Nagaveni.jpg', '20210515_213846 - Nagaveni Nagaveni.jpg', 'Screenshot_20210630-191400_Gallery - Nagaveni Nagaveni.jpg', 'Female', 1, 14, '2021-07-01 05:25:12'),
(0, 17, 'Nagaratna Nesargi', '6363599248', 'nagaratnanesargi24@gmail.com', '2000-06-24', 'BCA', 'Manjunath Nesargi', '9740826711', 'BCAProject', 'Kamanakatti hosayallapur Dharwad', '431559218388', '1625291917266419336553173459497 - Aishwarya Nesargi.jpg', 'IMG_20210524_000640585 - Aishwarya Nesargi.jpg', 'Document 17 - Aishwarya Nesargi.pdf', 'Female', 1, 14, '2021-07-02 23:15:16'),
(0, 18, 'VINAY V KAMMAR', '9686069261', 'vinaymkammar@gmail.com', '1999-07-17', 'BEIIIyear', 'V M KAMMAR', '8904614918', 'C Programming', 'Malamaddi, dharwad - 580007', '825917165474', 'Screenshot_2021_0726_143251 - VINAY KAMMAR.png', 'Screenshot_2021_0726_143543 - VINAY KAMMAR.png', 'Screenshot_2021_0726_142725 - VINAY KAMMAR.png', 'Male', 1, 3, '2021-07-26 04:29:22'),
(0, 19, 'Dr. Mahantesh Angadi', '9738663352', 'angadimantu@gmail.com', '1979-05-25', 'PhD', 'Amarappa', '9738663353', 'Web Design and Development', 'Raichur', '583243051540', 'Aadhar-30205-2 - Mahantesh Angadi.jpg', 'WhatsApp Image 2021-08-09 at 2.30.11 PM - Mahantesh Angadi.jpeg', 'Resume_MA Angadi - Mahantesh Angadi.pdf', 'Male', 1, 6, '2021-08-09 02:19:58'),
(0, 20, 'Hasen dongri', '9741834207', 'hasendongri8@gmail.com', '1993-07-04', 'BCA', 'Bandagisab', '9148990467', 'Basics of Computers', 'Bagalkot', '837697914889', 'HasenAadhar.jpg', 'Hasen.jpg', 'Hasen-Resume.docx', 'Male', 1, 1, '2021-08-16 04:50:08'),
(0, 21, 'Sowmya patil', '7996968242', 'sowmyapatil720@gmail.com', '1998-11-11', 'BEFinalYear', 'Bhemanagouda', '7204253530', 'Python with Machine Learning', 'Shri chennabasava nagar, behind Vinay oil mill, Sindhanur , Raichur', '612152928337', 'soumya adhar.jpeg', 'soumya.jpeg', 'Sowmya_resume.docx', 'Female', 1, 18, '2021-08-22 23:46:03'),
(0, 22, 'Priyanka lokur', '7619686021', 'priyalokur2000@gmail.com', '2000-05-12', 'BEFinalYear', 'Siddappa', '9902104480', 'Python with Machine Learning', 'Halyal tq: athani dist: belgaum', '877520712955', 'priyanka adhar.jpg', 'pppriyanka.jpg', '_Priyanka lokur_resume - Priyanka Lokur.pdf', 'Female', 1, 18, '2021-08-23 21:41:03'),
(0, 23, 'vaishnavi purohit', '9481439837', 'purohit0826@gmail.com', '2002-08-26', 'BE', 'Anant Purohit', '8310937332', 'Python Programming', 'Shivanandnagar 1 st cross dharwad', '599810378222', 'adhaar.pdf', 'photo 239.pdf', 'resume....pdf', 'Female', 1, 5, '2021-08-26 06:32:57'),
(0, 24, 'p pooja', '9108766156', 'poojashipoo57402@gmail.com', '2000-03-21', 'BE', 'p kottesh', '9591993989', 'C Programming', 'near market road teligi', '328597208286', 'WhatsApp Image 2021-08-28 at 3.19.42 PM.jpeg', 'WhatsApp Image 2021-08-28 at 3.19.42 PM (1).jpeg', 'cv pooja 1.pdf', 'Female', 1, 3, '2021-08-28 02:55:00'),
(0, 25, 'Komal Avarsang', '8197880391', 'kavarsang@gmail.com', '2000-10-20', 'Diploma', 'Mallikarjun', '8147493132', 'Python with Machine Learning', '#72, Siddheshwar Nagar unkal cross hubli', '336219278008', 'aadhar_card - Komal Avarsang.pdf', 'WhatsApp Image 2021-08-30 at 1.13.09 PM.jpeg', 'Komal_Avarsang - Komal Avarsang.pdf', 'Female', 1, 18, '2021-09-21 21:18:37'),
(0, 26, 'Veeresh  G', '6361962823', 'veereshgd4@gmail.com', '2000-08-06', 'BE', 'Gururaj Dandagi', '9880909183', 'AutoCad', 'Maradagi (N), tq// Chittapur, ds//Gulbarga, pin code-585218', '798958928169', 'adhar card - Veeresh G Dandagi.pdf', 'IMG_20210609_201759_compress94 - Veeresh G Dandagi.jpg', 'VEERESH G DANDAGI - Veeresh G Dandagi.docx', 'Male', 1, 7, '2021-09-03 23:12:08'),
(0, 27, 'Prateek girish Giriraddi', '+916362354841', 'prateekgg23@gmail.com', '2000-09-23', 'BE', 'Girish', '9743664915', 'AutoCad', 'AT- yattinahalli ,post - gudagur ,tal- ranibennur, dist - haveri', '307541717207', 'gg adar - Prateek gg.pdf', 'gg pic - Prateek gg.pdf', 'PRATEEK GIRISH GIRIRADDI - Prateek gg.docx', 'Male', 1, 7, '2021-09-21 21:18:07'),
(0, 28, 'Anuradha Katti', '9036392395', 'akatti04@gmail.com', '1992-03-16', 'MSc', 'Arpana', '9886723696', 'Web Design and Development', 'Kammankatti, Kumbar Oni , Dharwad', '928964421834', '78AED4A2-E640-4288-9A87-B98B8BA95620 - Anu Katti.jpeg', '3EF3401B-DE23-4554-818C-C1D90700B4C4 - Anu Katti.jpeg', 'ANURADHA RESUME - Anu Katti.doc', 'Female', 1, 6, '2021-09-04 02:58:23'),
(0, 30, 'KHALILULLA HUSSAINI', '9731883071', '0603khalil@gmail.com', '2001-06-03', 'BE', 'kishwar jahan', '7337760376', 'Revit Designing Software', 'behind Vanita sewa samaj, near noorani masjid, azad Nagar, dharward 580001', '814500273810', 'IMG-20210913-WA0005 - KHALILULLA HUSSAINI.jpg', 'IMG-20210807-WA0005 - KHALILULLA HUSSAINI.jpg', 'Khalilulla Hussaini - KHALILULLA HUSSAINI.docx', 'Male', 1, 8, '2021-09-13 06:16:22'),
(0, 31, 'Kanchan satush sankangoudar', '6361860345', 'kanchusankangoudar@gmail.com', '1996-05-27', 'BE', 'Satish Sankangoudar', '9901913735', 'Python Programming', 'C/O satish sankangoudar, 5th ward Gajendragad road, Naregal 582119  Dist-Gadag Tq- Gajendragad', '720480398305', 'IMG_20210914_093418 - Kanchu Sankangoudar.jpg', 'IMG_20210914_092445 - Kanchu Sankangoudar (1).jpg', 'KANCHAN Resume (1) - Kanchu Sankangoudar.pdf', 'Female', 1, 5, '2021-09-14 02:01:05'),
(0, 32, 'Abhsihek bhavikatti', '9035361728', 'abhishekbhavikatti1234@gamil.com', '1997-11-25', 'BE', 'Sushma bhavikatti', '98454140306', 'Python Programming', 'U.b.hill 2nd cross near head post bhavikatti compound dharwad', '901289546013', 'aadhaar - Abhishek M. B.pdf', 'photo - Abhishek M. B.pdf', 'Abhishek resum - Abhishek M. B.docx', 'Male', 1, 5, '2021-09-14 20:50:33'),
(0, 33, 'Sukhavindersingh Thakur', '08861139181', 'sukhavindersing@gmail.com', '2000-09-19', 'BE', 'seema s thakur', '9964300737', 'C Programming', '#48 R B Thakur mangal gatti plot sadhankeri dharwad-580008', '444914931241', 'adharr - Sukhavindersingh Thakur.pdf', 'adharr - Sukhavindersingh Thakur.pdf', 'MYRESUME01 - Sukhavindersingh Thakur.pdf', 'Male', 1, 3, '2021-09-14 20:59:09'),
(0, 34, 'Nagarajkumar. Malatesh. Talawar', '9916967384', 'nagarajpower1432@gmail.com', '2000-07-12', 'PUC', 'Ashok. R. Talawar', '8884054744', 'Basics of Computers', 'C/o Ravindra. G. Kundargi Plot no:-63,1st floor Yallamma devi housing society dharwad Dharwad-580004', '995812838204', '16317774155947710734289256290883 - KA27 Creations.jpg', '16317775646122505826318711933813 - KA27 Creations.jpg', '16317777034022581754231735415936 - KA27 Creations.jpg', 'Male', 1, 1, '2021-09-16 07:02:40'),
(0, 35, 'Basavtej N Patil', '9743980119', 'patilbasavatejnpatil@gmail.com', '2002-07-24', 'PUC', 'Neeta Patil', '9844785997', 'C Programming', 'Home number-38, Hanuman Nagar, Baloga Th-khanapur District-Belgaum', '793761943428', 'Adhar card - Basavatej N Patil Patil (1).pdf', 'WhatsApp Image 2021-09-17 at 7.27.04 PM.jpeg', 'Basavtej  - Basavatej N Patil Patil.pdf', 'Male', 1, 3, '2021-09-21 21:17:36'),
(0, 36, 'Anusha Joshi', '+917899008636', 'joshipanusha@gmail.com', '2001-05-19', 'BE', 'Jyothi Joshi', '7354861836', 'Core Java', 'Kamitartha building ,fourth cross , Malmaddi , Dharwad , Karnataka', '612947919442', 'anusha_aadhaar_card_new - anusha joshi.pdf', 'WhatsApp Image 2021-09-21 at 7.50.20 PM.jpeg', 'AnushaJoshi_Resume - anusha joshi.pdf', 'Female', 1, 19, '2021-09-21 21:19:19'),
(0, 37, 'Suraj Tanaji Gajakosh', '7899707498', 'surajt028@gmail.com', '1999-04-18', 'BE', 'Tanaji K Gajakosh', '9480693895', 'Mechanical Combo', '5th cross,rudset road,gandhi nagar,Dharwad', '531166202938', 'IMG_MJL_â˜£ï¸-Sharp-&-Natural-ðŸ€_20210922_055210883 - Suraj T.jpg', 'Photo_1 (2) - Suraj T.jpg', 'Surajs Resume - Suraj T.pdf', 'Male', 1, 20, '2021-09-22 07:44:54'),
(0, 38, 'Rudragouda patil', '8073239820', 'rudragoudapatil260@gmail.com', '1997-04-01', 'BE', 'Basangouda patil', '8792798699', 'Python with Machine Learning', 'Bharati nagar dharwad', '607751473050', 'Aadhar - Rudragouda patil.jpg', 'img227 - Rudragouda patil.jpg', 'Resume_Rudragouda (1)-converted (1) - Rudragouda patil.pdf', 'Male', 1, 18, '2021-09-28 23:49:02'),
(109, 39, 'HajiAli MS', '8660564094', 'hajialisadarbhai53@gmail.com', '2000-11-09', 'BE', 'Meheboobali', '9916584171', 'Python Programming', 'Murgamath savdatti road renuka nagar 10t cross Dharwad 5800067546', '754684246007', 'WhatsApp Image 2021-10-05 at 7.39.50 PM.jpeg', 'WhatsApp Image 2021-10-05 at 7.39.52 PM.jpeg', 'resume.pdf', 'Male', 1, 5, '2021-10-05 07:11:28'),
(0, 40, 'Bharati Kusoji', '8095532105', 'kusojibharati@gmail.com', '1986-06-01', 'MBA', 'Mr. Manjunath', '9916312833', 'Python Programming', '178 B block Tapovan Nagar, Behind Magdum Kalyan Mantap, Dharwad.', '828282432634', 'identi_proof_adhar_card.pdf', 'WhatsApp Image 2021-10-07 at 11.01.02 AM.jpeg', 'identi_proof_adhar_card.pdf', 'Female', 1, 5, '2021-10-06 22:31:32'),
(0, 41, 'Manoj M Hatalageri', '9482000617', 'manojhatalgeri2508@gmail.com', '2003-03-22', 'PUC', 'Mallappa Hatalageri', '9482000617', 'C Programming', '5th cross,rudset road,gandhi nagar,Dharwad', '964191987994', 'WhatsApp Image 2021-10-19 at 12.09.01 PM.jpeg', 'WhatsApp Image 2021-10-19 at 12.07.15 PM.jpeg', 'Basavtej N Patil2021-09-17.pdf', 'Male', 1, 3, '2021-10-18 23:43:57'),
(155, 42, 'Sakshi Kampli', '8310787715', 'sakshsk01@gmail.com', '2002-09-01', 'BE', 'Kusum Kampli', '8879737405', 'C Programming', 'Aashirwad building, hallikeri chawl, second cross, haliyal road near K C park Dharwad', '910110722819', 'New Doc 2020-07-11 17.18.56_4 - Sakshi Kampli.jpg', '3020120 - Sakshi Kampli.jpg', '3020120 - Sakshi Kampli.jpg', 'Female', 1, 3, '2021-10-20 22:34:47'),
(157, 43, 'Sneha', '8296723688', 'snehawagh628@gmail.com', '2001-11-24', 'BE', 'Shakuntala Wagh', '9535396046', 'Python Programming', 'Karnataka Vikas Grameena Bank, H/o branch,Opposite PB road. Dharwad', '274488612230', 'WhatsApp Image 2021-10-22 at 6.30.31 PM.jpeg', 'WhatsApp Image 2021-10-22 at 6.34.35 PM.jpeg', 'WhatsApp Image 2021-10-22 at 6.30.31 PM.jpeg', 'Female', 1, 5, '2021-10-22 06:08:24'),
(159, 44, 'Harish Chavan', '7760758852', 'harishchavan97@gmail.com', '1997-05-12', 'BE', 'AppaSaheb Chavan', '7760758852', 'Electrical AutoCAD', 'At Baad ,Dharwad', '662337517462', 'WhatsApp Image 2021-10-23 at 11.23.49 AM.jpeg', 'Soft Copy (1).jpg', 'WhatsApp Image 2021-10-23 at 11.23.49 AM.jpeg', 'Male', 1, 22, '2021-10-22 23:01:27'),
(156, 45, 'Pavan Annigeri', '9902635977', 'annigeripavan077@gmail.com', '2001-07-07', 'BE', 'Manjunath Annigeri', '9964808588', 'Python Programming', 'Mehboob Nagar, Gadi Karkhana ,Sonapur 5th cross ,Dharwad.', '800120593688', 'WhatsApp Image 2021-10-25 at 6.05.34 PM.jpeg', '2SD20ME415.jpg', 'WhatsApp Image 2021-10-25 at 6.05.34 PM.jpeg', 'Male', 1, 5, '2021-10-25 05:37:13'),
(163, 46, 'Ujwal S Bhavikatti', '8618785314', 'bhavikattiujwal@gmail.com', '1997-11-08', 'BE', 'Sanjay Bhavikatti', '8618785314', 'C Programming', 'c/o Y B Suresh Door no 30, MHB colony,Koppadgeri,Dharwad.', '649898103416', 'WhatsApp Image 2021-10-29 at 11.39.14 AM.jpeg', 'WhatsApp Image 2021-10-29 at 11.42.56 AM.jpeg', '', 'Male', 1, 3, '2021-10-28 23:15:29'),
(129, 47, 'Bhavana', '9591518960', 'bhavana.hr123@gmail.com', '1999-07-08', 'BE', 'Padma', '7411438246', 'Digital Media Marketing', 'C/o RavindraKumar,Navneeta Apartment,Flat no 102,Vidyagiri,Sattur Colony,Dharwad.', '743272004438', 'WhatsApp Image 2021-10-30 at 2.49.54 PM.jpeg', 'WhatsApp Image 2021-10-30 at 2.49.54 PM (1).jpeg', 'WhatsApp Image 2021-10-30 at 2.49.54 PM (1).jpeg', 'Female', 1, 15, '2021-10-30 02:44:47'),
(0, 48, 'Rekha Naganagouda Hongal', '8971718675', 'rekhanavalgund@gmail.com', '2001-05-10', 'BE', 'Naganagouda Hongal', '8971718675', 'Python Programming', 'Jawoor,Navalgund', '217205377537', 'Aadhaar card.pdf', 'WhatsApp Image 2021-10-30 at 3.30.27 PM.jpeg', 'WhatsApp Image 2021-10-30 at 3.30.27 PM.jpeg', 'Female', 1, 5, '2021-10-30 03:11:09'),
(161, 49, 'Ayaz kagazi', '8951634603', 'kagaziayaz8186@gmail.com', '1994-05-29', 'Diploma', 'Kifayat Kagazi', '9342584672', '22', 'Hospet Galli,Gokak', '273194712736', 'New Doc 2019-11-18 10.58.05.pdf', 'WhatsApp Image 2021-11-08 at 3.19.56 PM.jpeg', 'New Doc 2019-11-18 10.58.05.pdf', 'Male', 1, 22, '2021-11-08 05:56:47'),
(170, 50, 'Maitri Sulakhe', '8197915498', 'maitrisulakhe99@gmail.com', '1998-09-09', 'BE', 'Shivaran Sulakhe', '9535227400', 'C Programming', 'Krishnadham 2nd cross Daneshwari Nagar, Vidyagiri , Dharwad.', '892912725968', 'WhatsApp Image 2021-11-15 at 7.06.05 PM.jpeg', 'WhatsApp Image 2021-11-15 at 7.06.04 PM.jpeg', 'WhatsApp Image 2021-11-15 at 7.06.05 PM.jpeg', 'Female', 1, 3, '2021-11-15 06:40:25'),
(151, 51, 'Vasudha', '9945187425', 'dadegalvasudha@gmail.com', '1997-07-25', 'BE', 'Pradeep Gouda Patil', '7204722149', 'Web Design and Development', 'Ashirwad Building , Sangolli Rayanna Nagar, Tejaswini Nagar, Dharwad', '323380370701', 'WhatsApp Image 2021-11-24 at 12.19.22 PM.jpeg', 'WhatsApp Image 2021-11-24 at 12.19.21 PM.jpeg', 'WhatsApp Image 2021-11-24 at 12.19.22 PM.jpeg', 'Female', 1, 6, '2021-11-23 23:50:24'),
(169, 52, 'Varsha Patil', '8792448568', 'varshapatil1932002@gmail.com', '2002-03-19', 'BE(3rdsem)', 'Suresh Patil', '9731578423', 'C Programming', 'Drivers Colony, near Rudset, Gandhi Nagar, Dharwad.', '912081305441', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'WhatsApp Image 2021-11-30 at 5.42.21 PM (1).jpeg', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'Female', 1, 3, '2021-11-30 05:13:23'),
(0, 53, 'Netravati Patil', '8867626802', 'netravp28@gmail.com', '2000-09-28', 'BscCS', 'Vighneshwar Gouda', '9880253650', 'Core and Advanced JAVA', 'V V Patil at Shivligeshwar Nagar, Narendra.', '451665350056', 'WhatsApp Image 2021-12-01 at 11.29.08 AM.jpeg', 'WhatsApp Image 2021-12-01 at 11.29.08 AM (1).jpeg', 'WhatsApp Image 2021-12-01 at 11.29.08 AM.jpeg', 'Female', 1, 24, '2021-11-30 23:09:26'),
(185, 54, 'Premkishan Ainapur', '9686665759', '123@gmail.com', '2003-03-25', 'BscCS', 'Rakesh', '9880253650', '3', 'Godavari building 3 rd cross shrinagar Dharwad-580003', '593133166558', 'WhatsApp Image 2021-12-01 at 11.47.27 AM.jpeg', 'WhatsApp Image 2021-12-01 at 11.47.27 AM (1).jpeg', 'WhatsApp Image 2021-12-01 at 11.47.27 AM.jpeg', 'Male', 1, 3, '2021-12-03 07:51:12'),
(186, 55, 'Tarun Karigar', '9972548514', 'tarunkarigar9@gmail.com', '2003-06-27', 'BE', 'Gurusiddappa Karigar', '9964827883', '3', 'Jamadar galli jakani bavi road Dharwad  580001', '582560605911', 'WhatsApp Image 2021-12-01 at 11.55.00 AM.jpeg', 'WhatsApp Image 2021-12-01 at 11.55.00 AM (1).jpeg', 'WhatsApp Image 2021-12-01 at 11.55.00 AM.jpeg', 'Male', 1, 3, '2021-12-03 07:51:31'),
(188, 56, 'Veena Harikantra', '9113564481', 'veenaharikantra4419@gmail.com', '1999-07-10', 'Diploma', 'Vinayak Narayan Harikantra', '9482210498', 'Web Design and Development', 'At Mudangi Gokarna post Tadadi Taluk Kumta Dist Uttara Karnataka', '726287639573', 'WhatsApp Image 2021-12-20 at 10.52.42 AM.jpeg', 'WhatsApp Image 2021-12-20 at 10.54.12 AM.jpeg', 'WhatsApp Image 2021-12-20 at 10.54.12 AM.jpeg', 'Female', 1, 6, '2021-12-19 22:32:11'),
(0, 57, 'Gayatri Naik', '7483949567', 'ngayatri071@gmail.com', '2000-09-08', 'Diploma', 'Renuka Nayak', '6361398658', 'Web Design and Development', 'At Kannegeri post Kannegeri Taluq:Yellapur', '383306130397', 'WhatsApp Image 2021-12-20 at 10.54.25 AM.jpeg', 'WhatsApp Image 2021-12-20 at 10.54.25 AM (1).jpeg', 'WhatsApp Image 2021-12-20 at 10.54.25 AM.jpeg', 'Female', 1, 6, '2021-12-19 22:35:17'),
(0, 58, 'Nagarajkumar. Malatesh. Talawar', '9916967384', 'nagarajpower1432@gmail.com', '2000-07-12', 'PUC', 'Ashok. R. Talawar', '8884054744', 'Advanced Excel Program', 'C/o Ravindra. G. Kundargi Plot no:-63,1st floor Yallamma devi housing society dharwad Dharwad-580004', '995812838204', '16317774155947710734289256290883 - KA27 Creations.jpg', 'nag.jpg', '16317774155947710734289256290883 - KA27 Creations.jpg', 'Male', 1, 2, '2021-12-20 22:27:04'),
(0, 59, 'VINAY V KAMMAR', '9686069261', 'vinaymkammar@gmail.com', '1999-07-17', 'BE', 'V M KAMMAR', '8904614918', '5', 'Malamaddi, dharwad - 580007', '825917165474', 'Screenshot_2021_0726_143251 - VINAY KAMMAR.png', 'vin.png', 'Screenshot_2021_0726_143251 - VINAY KAMMAR.png', 'Male', 1, 5, '2021-12-24 23:51:26'),
(0, 60, 'Mohammed Abrar Rotiwale', '9035988512', 'abrarrotiwale0019@gmail.com', '1998-05-25', 'BPharm', 'Zahir Rotiwale', '9880847042', 'Web Design and Development', 'madhpur, Taj Nagar near AFS hall, Dharwad', '675138317475', 'WhatsApp Image 2022-01-01 at 7.29.22 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.31.22 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.29.22 PM.jpeg', 'Male', 1, 6, '2022-01-01 07:02:07'),
(0, 61, 'Mohammed Suhail Asundi', '8892889962', 'suhailasundi5@gmail.com', '1998-08-01', 'BCA', 'Mehboobsubhani Asundi', '9008775104', 'Web Design and Development', 'Mehboob nagar, Sonapur 3rd cross dharwad', '496434537080', 'WhatsApp Image 2022-01-01 at 7.34.49 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.34.50 PM.jpeg', 'WhatsApp Image 2022-01-01 at 7.34.49 PM.jpeg', 'Male', 1, 6, '2022-01-01 07:06:15'),
(0, 62, 'Vanita S Sagrekar', '7337897128', 'vanitasagrekar12@gmail.com', '1999-12-12', 'MCA', 'Sagrekar', '7411612222', 'Web Design and Development', 'Manohar R Pavar, Plot no 32A,Yallakki Settar Colony, Dharwad', '256143017086', 'Aadhar card.pdf', 'Photo .pdf', 'Aadhar card.pdf', 'Female', 1, 6, '2022-01-05 23:05:15'),
(199, 63, 'Vaishnavi Sarjoshi', '7483716639', 'vaishnavisarjoshi18@gmail.com', '2004-05-18', 'PUC', 'Bakulavati Sarjoshi', '9916147617', 'Web Design and Development', 'c/o Suraj Padaki Patil Hanumath nilaya near kariyamma temple Yellakki Shetter colony Dharwad', '786956818821', '1609402206153a55673448_pdf.pdf', 'WhatsApp Image 2022-01-10 at 6.36.54 PM.jpeg', '1609402206153a55673448_pdf.pdf', 'Female', 1, 6, '2022-01-10 06:08:10'),
(0, 64, 'Tasmiya M Shaikh', '8660644826', 'tasmiyashaikh2618@gmail.com', '2000-12-26', 'BCA', 'Mohammad Iqbal Shaikh', '9611157689', 'Placement Assistance', 'Mehboob Nagar near idga Maidan,Dharwad.', '597892743618', 'WhatsApp Image 2022-01-22 at 1.39.33 PM.jpeg', 'WhatsApp Image 2022-01-22 at 1.40.16 PM.jpeg', 'Tasmiya M Shaikh (1).pdf', 'Female', 1, 26, '2022-01-22 01:10:53'),
(0, 65, 'Samuel V Dandin', '9513601992', 'dandinsamuel@gmail.com', '1991-07-13', 'BE', 'VijayKumar dandin', '9845655277', 'Web Design and Development', 'S/o: Vijaykumar Sumitra A.I.R Road Courpalis Compound Dharwad Dharwad Dharwad K.c.park Hubli Dharwad Karnataka 580008', '849618463375', 'Aadhar Card (1).pdf', 'Phtotgraph.pdf', 'Phtotgraph.pdf', 'Male', 1, 6, '2022-01-31 06:42:23'),
(0, 66, 'Spoorthi Kammar', '7022174601', 'spoorthikammar153@gmail.com', '1995-10-28', 'BVoC', 'Vinodha Kammar', '9513269213', 'Web Design and Development', 'Daneshwari Nagar 1st cross chaitanya apartment Dharwad', '302920692448', 'WhatsApp Image 2022-02-01 at 1.18.20 PM.jpeg', 'WhatsApp Image 2022-02-01 at 1.18.20 PM (1).jpeg', 'WhatsApp Image 2022-02-01 at 1.18.20 PM.jpeg', 'Female', 1, 6, '2022-02-01 00:52:21'),
(0, 67, 'Rakesh Naik', '7975743902', 'rakeshnaik7673@gmail.com', '2002-08-13', 'BCA', 'Baburao Naik', '7975743902', 'C Programming', 'Charantimath Garden, Opposite Jai jinendra colony,Hanuman Temple, Dharwad.', '641734867750', 'WhatsApp Image 2022-02-05 at 10.58.22 AM.jpeg', 'WhatsApp Image 2022-02-05 at 10.58.22 AM (1).jpeg', 'WhatsApp Image 2022-02-05 at 10.58.22 AM.jpeg', 'Male', 1, 3, '2022-02-04 22:32:24'),
(205, 68, 'Mahesh Angadi', '7795428836', 'maheshmangadi27@gmail.com', '2000-02-27', 'PUC', 'Malleshappa  Angadi', '7795428836', 'Basics of Computers', 'Shakambari layout 2nd cross behind KMF,Dharwad', '457930908097', 'WhatsApp Image 2022-02-10 at 12.32.12 PM.jpeg', 'WhatsApp Image 2022-02-10 at 12.32.13 PM.jpeg', 'WhatsApp Image 2022-02-10 at 12.32.12 PM.jpeg', 'Male', 1, 1, '2022-02-10 00:03:02'),
(0, 69, 'Mallikarjungouda I Patil', '9945216939', 'mp6418@gmail.com', '1981-07-22', 'MABPED', 'Mallikarjungouda I Patil', '9945216939', 'C Programming', 'At post maradagi, Dharwad-580112', '491476618235', 'WhatsApp Image 2022-02-14 at 11.24.14 AM.jpeg', 'WhatsApp Image 2022-02-14 at 11.24.15 AM.jpeg', 'WhatsApp Image 2022-02-14 at 11.24.14 AM.jpeg', 'Male', 1, 3, '2022-02-13 23:04:50'),
(217, 70, 'Megha Marigoudar', '9110686577', 'meghamarogoudar@gmail.com', '2003-07-04', 'PUC', 'Mallikarjun Marigoudar', '9110686577', 'C Programming', 'Hosa yellapur', '860441087026', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.11.54 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'Female', 1, 3, '2022-02-16 06:44:57'),
(220, 71, 'Fouziya I Byali', '8073446986', 'fouziyabyalli@gmail.com', '1998-05-19', 'BE', 'Imtiyaz Ahmed Byali', '8073446986', 'Web Design and Development', 'Mantur Road, Hubli', '259461952362', 'WhatsApp Image 2022-02-22 at 9.52.16 AM.jpeg', 'WhatsApp Image 2022-02-22 at 9.55.13 AM.jpeg', 'WhatsApp Image 2022-02-22 at 9.52.16 AM.jpeg', 'Female', 1, 6, '2022-02-21 21:26:00'),
(0, 72, 'Pooja Chavoor', '9019850527', 'poojachavoor200b@gmail.com', '2000-11-18', 'BCA', 'Bharati Chavoor', '9008114831', 'Web Design and Development', 'Jaynagar 1st cross, pratiksha building near chi guru library, Dharwad', '875858584132', 'WhatsApp Image 2022-02-23 at 10.34.48 AM (1).jpeg', 'WhatsApp Image 2022-02-23 at 10.34.48 AM (1).jpeg', 'WhatsApp Image 2022-02-23 at 10.34.48 AM (1).jpeg', 'Female', 1, 6, '2022-02-22 22:06:28'),
(224, 73, 'Kiran M Patted', '6361873647', 'kiranpatted072@gmail.com', '2000-08-02', 'PursuingBAEconomics', 'Renuka M Patted', '6361873647', 'Digital Media Marketing', 'Abhyudaya h.no 350,Narayanpur 2nd main,3rd cross Dharwad, 580008', '884671040139', 'WhatsApp Image 2022-02-24 at 4.34.45 PM.jpeg', 'WhatsApp Image 2022-02-24 at 4.34.46 PM.jpeg', 'WhatsApp Image 2022-02-24 at 4.34.45 PM.jpeg', 'Male', 1, 15, '2022-02-24 04:05:18'),
(223, 74, 'Varun Kapali', '9986447452', 'kapalivarun17@gmail.com', '1997-11-01', 'BE', 'Ravindar kapali', '9986447452', 'C Programming', 'Saraswatpur Bhavani Nagar, Dharwad', '899739157613', 'WhatsApp Image 2022-03-01 at 10.22.33 AM.jpeg', 'WhatsApp Image 2022-03-01 at 10.24.08 AM.jpeg', 'WhatsApp Image 2022-03-01 at 10.22.33 AM.jpeg', 'Male', 1, 3, '2022-02-28 21:54:28'),
(225, 75, 'Anoop H C', '9148894801', 'anoophc18@gmail.com', '1999-04-05', 'BSclifescience', 'Geeta H C', '7411085047', 'Basics of Computers', 'Kumareshwar Nagar, Hangal', '867726212988', 'WhatsApp Image 2022-03-07 at 10.57.41 AM.jpeg', 'WhatsApp Image 2022-03-07 at 10.57.40 AM.jpeg', 'WhatsApp Image 2022-03-07 at 10.57.41 AM.jpeg', 'Male', 1, 1, '2022-03-06 22:30:22'),
(230, 76, 'Darshan Jadhav', '9902911772', 'dj006872@gmail.com', '2003-08-10', 'PUC', 'Shankarappa Jadhav', '9902911772', 'Basics of Computers', 'Yadgir,\r\nDharwad', '641035726185', 'darshan aadhar.jpeg', 'darsan photo.jpeg', 'darshan aadhar.jpeg', 'Male', 1, 1, '2022-03-16 22:41:20'),
(233, 77, 'Harsha Jigajinni', '8792111252', 'jigajinniharsha@gmail.com', '2000-02-12', 'BCA', 'Rajeshwari Jigajinni', '8904983048', 'Software Testing', 'Jigajinni Galli,\r\nBazar Road\r\nBailhongal', '678198407136', 'WhatsApp Image 2022-03-21 at 3.46.52 PM.jpeg', 'WhatsApp Image 2022-03-21 at 3.46.52 PM (1).jpeg', 'WhatsApp Image 2022-03-21 at 3.46.52 PM.jpeg', 'Female', 1, 27, '2022-03-21 03:18:29'),
(232, 78, 'Nanda F Karigar', '8546825380', 'nandakarigar18@gmail.com', '1999-04-30', 'BCA', 'Mangala Karigar', '8762105180', 'Software Testing', 'Mahanth Nagar \r\nMatti plot\r\nnear new APMC road\r\nDharwad.', '249266427775', 'WhatsApp Image 2022-03-26 at 7.42.20 PM.jpeg', 'WhatsApp Image 2022-03-26 at 7.42.21 PM.jpeg', 'WhatsApp Image 2022-03-26 at 7.42.20 PM.jpeg', 'Female', 1, 27, '2022-03-26 07:13:18'),
(0, 81, 'Shree Shirahatti', '9632701996', 'shreeshirahatti17@gmail.com', '2012-09-17', 'stdv', 'Shilpa Shirahatti', '9632701996', 'Basics of Computers', 'Shiratti', '334323601222', 'WhatsApp Image 2022-04-05 at 11.18.06 AM.jpeg', 'WhatsApp Image 2022-04-05 at 11.18.06 AM (1).jpeg', 'WhatsApp Image 2022-04-05 at 11.18.06 AM.jpeg', 'Female', 1, 1, '2022-04-05 00:14:50'),
(261, 82, 'Sachit Reddy', '9481820279', 'pbpatil0108@gmail.com', '2012-08-13', 'STD5', 'Dr Preeti Reddy', '9591197196', 'Basics of Computers', 'Dharwad', '925662851909', 'WhatsApp Image 2022-04-13 at 12.21.26 PM (3).jpeg', 'WhatsApp Image 2022-04-13 at 12.21.26 PM (2).jpeg', 'WhatsApp Image 2022-04-13 at 12.21.26 PM (3).jpeg', 'Male', 1, 1, '2022-04-12 23:56:34'),
(265, 83, 'Abhishek Hanabaratti', '8147003877', 'abhishekhanabaratti@gmail.com', '1998-08-12', 'BE(Mech)', 'Manjunath Hanabaratti', '8861520862', 'C Programming', 'C/O chanappa sungar, beerband oni, Old Hubali, Hubballi', '885788448045', 'IMG-20220416-WA0004 (1).jpg', 'IMG-20220416-WA0003.jpg', 'resume-sample.pdf', 'Male', 1, 3, '2022-04-16 01:42:29'),
(264, 84, 'Hrithik Koravar', '8147249949', 'hrithikkoravar@gmail.com', '2000-07-18', 'BE(Mech)', 'Rajshekhar Koravar', '9538610154', 'C Programming', 'CBT, Hubli', '534570628534', 'MY ADHAR CARD 12-19-2021 13.54 (1).pdf', 'WhatsApp Image 2022-04-16 at 2.19.26 PM.jpeg', 'My Resume .pdf', 'Male', 1, 3, '2022-04-16 01:50:19'),
(263, 85, 'Rahul Mathad', '6360136167', 'mathadrahul8055@gmail.com', '1999-08-30', 'BEMech', 'Shivabasavaswami Mathad', '9731741804', '3', 'Near Nevedita School\r\nYalakkishettar Colony Sharadha colony,3rd cross VTC Dharwad, PO : Dharwad Vidyagiri-580004', '875576489235', 'rahul mathad.jpeg', 'rahul mathad.jpg', 'rahul mathad.jpeg', 'Male', 1, 3, '2022-04-16 02:48:49'),
(239, 86, 'Arun Kumar', '8095086142', 'arunkumaremmiyavar@gmail.com', '1994-04-17', 'BCA', 'Shankarappa', '8884357274', 'Web Design and Development', 'SKS Colony 5th main 1st cross Haliyal road dharwad.', '792700866436', 'arun adhar.jpeg', 'arun photo.jpeg', 'arun adhar.jpeg', 'Male', 1, 6, '2022-04-18 00:49:47'),
(266, 87, 'Amrut Haladi', '7353491458', 'haladiamrut@gmail.com', '2002-05-28', 'Bcom', 'Rakesh Wani', '8904136571', 'Data Science', 'Madihal near Gayakwad Kalyan mantap, Dharwad.', '319691627914', 'WhatsApp Image 2022-04-22 at 11.20.29 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.20.27 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.20.27 AM.jpeg', 'Male', 1, 28, '2022-04-21 23:10:06'),
(0, 88, 'Amogh Haladi', '6364579195', 'amogh1525@gmail.com', '2001-04-18', 'Bcom', 'Rakesh Wani', '8904136571', 'Data Science', 'Madihal near Gayakwad Kalyan mantap\r\nDharwad', '801159309613', 'WhatsApp Image 2022-04-22 at 11.29.49 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.29.48 AM.jpeg', 'WhatsApp Image 2022-04-22 at 11.29.49 AM.jpeg', 'Male', 1, 28, '2022-04-21 23:14:03'),
(272, 89, 'Yashoda Sogi', '9902659968', 'yashodasogi@gmail.com', '2000-12-08', 'Diploma', 'Ajjappa Sogi', '9980876431', 'Python Programming', 'Near Kannada School\r\nSogi Plot \r\nAmargol', '360035620419', 'yashoda adhar.jpeg', 'yashodha photo.jpeg', 'yashoda adhar.jpeg', 'Female', 1, 5, '2022-04-23 23:42:08'),
(0, 90, 'Aishwarya Kulkarni', '6366625272', 'aishwaryakulkarni012@gmail.com', '2001-12-02', 'Diploma', 'Ravi Kulkarni', '8123633764', 'Python Programming', 'Near TulajaBhavani Temple\r\nShreeRam Nagar Hattikola Dharwad', '971058796031', 'Aishwarya.jpeg', 'Aishwarys ph.jpeg', 'Aishwarya.jpeg', 'Female', 1, 5, '2022-04-23 23:47:21'),
(0, 91, 'Sahana Jadhav', '7019588575', 'sahanajadhav9@gmail.com', '2003-08-08', 'Diploma', 'Sanjay Jadhav', '9900655274', 'Python Programming', 'Omnagar Near ozone hotel Pb road Dharwad', '872361224829', 'sahana.jpeg', 'sahana1.jpeg', 'sahana.jpeg', 'Female', 1, 5, '2022-04-23 23:52:17'),
(0, 92, 'Sneha Sachin Ghorpade', '8904339356', 'snehaghorpade2244@gmail.com', '2001-11-16', 'Diploma', 'Swapna Ghorpade', '9591459356', 'Python Programming', 'ShreeRam Nagar \r\nNear Tuljabhavani Temple\r\nDharwad', '974864000275', 'WhatsApp Image 2022-04-24 at 12.28.47 PM.jpeg', 'WhatsApp Image 2022-04-24 at 12.27.45 PM.jpeg', 'WhatsApp Image 2022-04-24 at 12.27.45 PM.jpeg', 'Female', 1, 5, '2022-04-23 23:59:10'),
(0, 93, 'Megha Kittur', '6363491985', 'kitturmegha006@gmail.com', '2002-07-25', 'Diploma', 'Jyoti Koregannvar', '7411250975', 'Python Programming', 'New APmc \r\nPatreshwar Nagar \r\nDharwad', '778076194812', 'megha adhar.jpeg', 'megha1.jpeg', 'megha adhar.jpeg', 'Female', 1, 5, '2022-04-24 00:03:58'),
(0, 94, 'Nikshita Shetty', '7411701082', 'nikshitacshetty@gmail.com', '2000-08-01', 'Diploma', 'Chandrashekar Shetty', '9901623902', 'Python Programming', 'Mahimailarling Nagar\r\nKalghatgi \r\nDharwad', '270731118617', 'nik1.jpeg', 'nik.jpeg', 'nik1.jpeg', 'Female', 1, 5, '2022-04-24 00:10:32'),
(0, 95, 'Vaishnavi Kamble', '7411866100', 'kkvk2212@gmail.com', '2000-12-22', 'Diploma', 'Kiran Kamble', '9483193800', 'Python Programming', 'SBI Colony\r\nPolice Head quarters\r\nnear new bus stand \r\nDharwad', '946196475990', 'vaish.jpeg', 'vaish1.jpeg', 'vaish.jpeg', 'Female', 1, 5, '2022-04-24 00:14:42'),
(0, 96, 'Vaishnavi Kulkarni', '6363232039', 'vaishnavikulkarni065@gmail.com', '2001-03-09', 'Diploma', 'Vasanthrao Kulkarni', '9900757345', 'Python Programming', 'Kelgeri Road \r\nMahanasa Apartment\r\nDharwad', '623521229872', 'WhatsApp Image 2022-04-23 at 8.42.12 PM.jpeg', 'WhatsApp Image 2022-04-23 at 9.42.24 PM.jpeg', 'WhatsApp Image 2022-04-23 at 8.42.12 PM.jpeg', 'Female', 1, 5, '2022-04-24 23:22:19'),
(0, 97, 'Srushti M Kittur', '9845253680', 'srushtikittur22@gmail.com', '2000-06-22', 'Diploma', 'Sangappa Koti', '7259169680', 'Python Programming', 'Kamakshi Colony Kumareshwar nagar\r\nnear new bus stand Dharwad', '517308402392', 'WhatsApp Image 2022-04-25 at 11.48.32 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.49.37 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.48.32 AM.jpeg', 'Female', 1, 5, '2022-04-24 23:26:54'),
(0, 98, 'Sameen Taj', '9148736979', 'nasirahmmadahmmad@gmail.com', '2001-11-15', 'Diploma', 'Nasir Ahmmad', '9980665837', 'Python Programming', 'Goudally Sirsi Uttara Karnataka', '796125021877', 'WhatsApp Image 2022-04-25 at 11.56.02 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.59.32 AM.jpeg', 'WhatsApp Image 2022-04-25 at 11.56.02 AM.jpeg', 'Female', 1, 5, '2022-04-24 23:32:35'),
(0, 99, 'Jyoti C Sutagatti', '7619374678', 'jyoticsutagatti121@gmail.com', '2003-01-12', 'Diploma', 'Chandrakanth sutagatti', '9886463275', 'Python Programming', 'Gokak Mills\r\nSavadatti', '899063057268', 'WhatsApp Image 2022-04-25 at 12.00.43 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.00.42 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.00.43 PM.jpeg', 'Female', 1, 5, '2022-04-24 23:36:42'),
(268, 100, 'Harshita Raju Wani', '9353743067', 'harshitawani@gmail.com', '2001-12-23', 'Bcom', 'Asha Wani', '9449884092', 'Advanced Excel Program', 'H.no 5\r\nAdishakti Nagar\r\nMadihal\r\nDharwad', '615719056243', 'WhatsApp Image 2022-04-25 at 12.17.54 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.18.17 PM.jpeg', 'WhatsApp Image 2022-04-25 at 12.17.54 PM.jpeg', 'Female', 1, 2, '2022-04-24 23:51:40'),
(0, 101, 'Chaitra Vijay Pishe', '9740473909', 'chairspise@gmail.com', '2002-04-21', 'Diploma', 'Sunita PIshe', '9449079293', 'Python Programming', 'Mudholkar Compound 2nd cross Chikmaligad Road\r\nDharwad', '641517878717', 'WhatsApp Image 2022-04-25 at 11.49.41 AM.jpeg', 'WhatsApp Image 2022-04-25 at 4.48.01 PM.jpeg', 'WhatsApp Image 2022-04-25 at 11.49.41 AM.jpeg', 'Female', 1, 5, '2022-04-25 22:11:51'),
(0, 102, 'Savita Payappa Jainar', '9353971187', 'savitajainar93@gmail.com', '2002-03-05', 'Diploma', 'Payappa Jainar', '7411131588', 'Python Programming', 'Hosayellapur Hosa Oni\r\nDharwad', '811629813767', 'WhatsApp Image 2022-04-26 at 10.57.10 AM.jpeg', 'WhatsApp Image 2022-04-26 at 11.01.37 AM.jpeg', 'WhatsApp Image 2022-04-26 at 10.57.10 AM.jpeg', 'Female', 1, 5, '2022-04-25 22:31:55'),
(0, 103, 'Divya Venkatesh Raikar', '9742009385', 'divyaraikar1999@gmail.com', '1999-08-01', 'MSc', 'Venkatesh Raikar', '7483431073', 'BCAProject', 'RKC hostel \r\nPavate Nagar\r\nDharwad', '444331170776', 'WhatsApp Image 2022-04-29 at 3.31.28 PM.jpeg', 'WhatsApp Image 2022-04-29 at 3.31.53 PM.jpeg', 'WhatsApp Image 2022-04-29 at 3.31.28 PM.jpeg', 'Female', 1, 14, '2022-04-29 03:07:05'),
(274, 104, 'Safa Arshiya', '9591469958', 'safaarshiya58@gmail.com', '1998-08-17', 'BBA', 'Subhan', '9886595058', 'Digital Media Marketing', 'House#10,2nd Cross, Tungabhadra Coloni, Shree Nagar, Dharwad', '569735428811', 'WhatsApp Image 2022-05-01 at 12.01.36 PM.jpeg', 'WhatsApp Image 2022-05-01 at 12.04.29 PM.jpeg', 'safa-cv.pdf', 'Female', 1, 15, '2022-04-30 23:43:07'),
(279, 105, 'Preeti Pujar', '8971745896', 'preetipujar58@gmail.com', '2001-05-02', 'BCA', 'Laxman Pujar', '9663251870', 'BCAProject', 'Hull Oni,  Ettinagudda, Dharwad, Karnataka, 580005', '515692179057', 'WhatsApp Image 2022-05-07 at 12.01.17 PM.jpeg', 'WhatsApp Image 2022-05-07 at 12.06.14 PM.jpeg', 'Preeti resume.pdf', 'Female', 1, 14, '2022-05-06 23:38:53'),
(278, 106, 'Mangla Patil', '9148297747', 'patilmangla738@gmail.com', '2001-10-14', 'BCA', 'Shivappa Patil', '7829574541', 'BCAProject', 'Chikkmagaligoud Road, Near Adharsh Nagar, Durga Colony Dharwad', '803312068532', 'WhatsApp Image 2022-05-07 at 12.10.29 PM.jpeg', 'WhatsApp Image 2022-05-07 at 12.10.13 PM.jpeg', 'MANGALA. S. PATIL.pdf', 'Female', 1, 14, '2022-05-06 23:45:29'),
(0, 107, 'Shruti Nagesh Halavar', '7892499694', 'shrutihalavar20@gmail.com', '1997-07-20', 'MCOM', 'Nagesh', '8197730496', 'Placement Assistance', 'At: Malligawad Post: Koliwad\r\nTq:Hubli Dist: Dharwad', '626969230079', 'WhatsApp Image 2022-05-07 at 5.36.05 PM.jpeg', 'WhatsApp Image 2022-05-07 at 5.26.58 PM.jpeg', 'Brown Elegant Digital Marketing Specialist Resume (3) (1).pdf', 'Female', 1, 26, '2022-05-07 05:11:38'),
(0, 108, 'Jasmeen Halli', '7338214516', 'jasmeen.halli16@gmail.com', '1999-05-23', 'MCA', 'Heena Halli', '9740881482', 'MCA-Project', 'Kasab Galli, Ilkal Hungund Taluk, Bagalkot', '464046826936', '5da05142-769e-4f12-a88a-c19998e326ba.pdf', 'Untitled design (45).png', 'Jasmeen_resume (3).pdf', 'Female', 1, 14, '2022-05-13 03:16:22'),
(0, 109, 'Umashri Sahadev Hawaldar', '9591404370', 'umashriabc@gmail.com', '1997-07-30', 'MCA', 'Sahadev Hawaldar', '9535947177', 'MCA-Project', 'At post jalapur raibag, belgaum', '556602762238', '1652436822246.pdf', 'WhatsApp Image 2022-05-13 at 3.44.33 PM.jpeg', 'Jasmeen_resume (3).pdf', 'Female', 1, 14, '2022-05-13 03:29:54'),
(0, 110, 'Surekha S Dayal', '9632840509', 'roshnidayal048@gmail.com', '1999-06-01', 'MCA', 'Sharanppa Dayal', '8722578923', 'MCA-Project', 'Bidar', '870068084101', 'Surekhas-aadhar.pdf', 'surekha.jpeg', 'Surekha-Resume.pdf', 'Female', 1, 14, '2022-05-13 03:40:21'),
(0, 111, 'Santosh Chalageri', '9880020224', 'santoshchalageri1999@gmail.com', '1999-04-11', 'MCA', 'Sharanppa Chalageri', '9741742140', 'MCA-Project', 'Kalburgi', '770054132815', 'WhatsApp Image 2022-05-13 at 4.13.05 PM.jpeg', 'WhatsApp Image 2022-05-13 at 4.13.17 PM.jpeg', 'resum.pdf', 'Male', 1, 29, '2022-05-13 03:46:58'),
(0, 112, 'Anuradha Anil Kumar', '8904308206', 'anuradhabhandi50@gmail.com', '2000-11-01', 'MCA', 'Anil Kumar', '8152973030', 'MCA-Project', 'Kalburgi', '675406863436', 'aadhar card.pdf', 'Untitled design (46).png', 'anuradharesume.pdf', 'Female', 1, 29, '2022-05-13 03:55:14'),
(0, 113, 'Vivekanand Parakali', '9036327907', 'vivekanandparakali1998@gmail.com', '1998-10-11', 'BSCnursing', 'Susheela  Byahatti', '7483071010', 'Basics of Computers', 'Yellakki Shettar Colony\r\nDharwad', '662710548034', 'WhatsApp Image 2022-05-13 at 5.15.20 PM.jpeg', 'WhatsApp Image 2022-05-13 at 5.28.46 PM (1).jpeg', 'WhatsApp Image 2022-05-13 at 5.15.20 PM.jpeg', 'Male', 1, 1, '2022-05-13 05:07:44'),
(0, 114, 'Rajeshwari Patil', '6360825543', 'mrajeshwaripatil@gmail.com', '2003-07-26', 'BEsecondsem', 'Mahantesh Patil', '9448223920', 'Data Structures', 'yellakki Shettar Colony\r\nDharwad', '993346866933', 'New doc 10 Nov 2021 22.49 (1).pdf', 'WhatsApp Image 2022-05-13 at 6.50.20 PM.jpeg', 'New doc 10 Nov 2021 22.49 (1).pdf', 'Female', 1, 23, '2022-05-13 06:24:04'),
(254, 115, 'Radha Maraddi', '9591343049', 'dummy@gmail.com', '1987-06-01', 'BA', 'Nigareddy Maraddi', '9591343049', 'AutoCad', 'Near New Bus Stand Shalavai navalgund Dharwad', '648316403736', 'WhatsApp Image 2022-05-16 at 11.14.01 AM.jpeg', 'WhatsApp Image 2022-05-16 at 11.13.10 AM.jpeg', 'WhatsApp Image 2022-05-16 at 11.14.01 AM.jpeg', 'Female', 1, 7, '2022-05-15 22:49:23'),
(0, 116, 'Damini A Sunkad', '7899477508', 'daminisunkad@gmail.com', '2002-12-24', 'BEsecondsem', 'Ashok Sunkad', '9972276274', 'Data Structures', '1st main second cross behind Hero showroom,\r\nVidyagiri Dharwad', '412026211730', 'WhatsApp Image 2022-05-17 at 8.05.55 PM (1).jpeg', 'WhatsApp Image 2022-05-17 at 8.19.05 PM.jpeg', 'WhatsApp Image 2022-05-17 at 8.05.55 PM (1).jpeg', 'Female', 1, 23, '2022-05-17 07:40:43'),
(0, 117, 'Vaishnavi Kulkarni', '9606041854', 'vaishnavikulkarni7524@gmail.com', '1999-10-03', 'MSc', 'Uday Kulkarni', '9731639601', 'MCA-Project', 'plot no 42\r\nRukmini Pandurang niwas\r\nSaityapramodnagar\r\nAthani', '123456789012', 'WhatsApp Image 2022-05-18 at 2.55.43 PM.jpeg', 'WhatsApp Image 2022-05-18 at 2.56.26 PM.jpeg', 'WhatsApp Image 2022-05-18 at 2.55.43 PM.jpeg', 'Female', 1, 29, '2022-05-18 02:29:45'),
(0, 118, 'Akshatha Nyamagowda', '748368103', 'akshathasn17@gmail.com', '1999-07-22', 'MSC', 'Shreekanth Nyamagowda', '8073044160', 'MCA-Project', 'Taluk Jamkhandi\r\nDist Bagalkot\r\nVillage Kadakol', '625823602824', 'WhatsApp Image 2022-05-21 at 11.18.57 AM (1).jpeg', 'WhatsApp Image 2022-05-21 at 11.18.57 AM.jpeg', 'WhatsApp Image 2022-05-21 at 11.18.57 AM (1).jpeg', 'Female', 1, 29, '2022-05-21 01:16:43'),
(267, 119, 'Laxmi Lamani', '9380422653', 'lamanilakshmi88@gmail.com', '1999-07-31', 'Bsc', 'Hirappa Lamani', '8867601538', 'Basics of Computers', 'Drivers Colony ,\r\n2nd cross Gandhi Nagar\r\nDharwad', '303124669420', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.26.56 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'Female', 1, 1, '2022-05-23 07:00:26'),
(287, 120, 'Akshata T B', '6363042577', 'akshatatb1932@gmail.com', '2002-03-19', 'Bcom', 'Tharanath M B', '9449999242', 'Basics of Computers and Advanced Excel', 'Kaiga Township \r\nKarwar', '123456678990', 'WhatsApp Image 2022-05-27 at 5.15.05 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.15.05 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.15.05 PM.jpeg', 'Female', 1, 31, '2022-05-27 04:49:05'),
(288, 121, 'Pooja Patil', '9535693777', 'patildpooja152@gmail.com', '2001-01-15', 'BE', 'Dundappa Patil', '9901739559', 'C Programming', '2nd  cross defence colony,\r\nDharwad', '930341298326', 'WhatsApp Image 2022-05-27 at 5.25.49 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.26.26 PM.jpeg', 'WhatsApp Image 2022-05-27 at 5.25.49 PM.jpeg', 'Female', 1, 3, '2022-05-27 04:59:09'),
(0, 122, 'Tanuja S M', '8884101726', 'tanusm99@gmail.com', '1999-04-04', 'Msc', 'Swamivivekananda', '8884101726', 'MCA-Project', 'Hirekerur Taluk\r\nkalagonda\r\nHaveri\r\nKarnataka', '702545739593', 'WhatsApp Image 2022-05-30 at 1.13.37 PM.jpeg', 'WhatsApp Image 2022-05-30 at 1.13.37 PM (1).jpeg', 'WhatsApp Image 2022-05-30 at 1.13.37 PM.jpeg', 'Female', 1, 29, '2022-05-30 00:49:14'),
(0, 123, 'Naheed Khan Shivalli', '6364903790', 'naheedkhannk51189@gmail.com', '2001-02-10', 'BCA', 'Nasir Khan Shivalli', '7676917940', 'BCAProject', 'Daneswari Nagar,\r\nLidkar Colony\r\nVidyagiri\r\nDharwad.', '245548363493', 'Aadhar card.pdf', 'photo-2.jpg', 'Aadhar card.pdf', 'Female', 1, 14, '2022-05-30 02:58:46'),
(118, 124, 'Najmusahar kalkoti', '9902823247', 'najmusaharkalkoti@gmail.com', '2001-07-22', 'BCA', 'Parveen Kalkoti', '9448822489', 'BCAProject', 'Rasheed-e Shama Manzil\r\nNear Rayar Math\r\nManjunathpur Malmaddi\r\nDharwad', '799157680847', 'najmusahar adhar card.pdf', 'passport.jpg', 'najmusahar adhar card.pdf', 'Female', 1, 14, '2022-05-30 03:01:52'),
(0, 125, 'Riya Revankar', '+1 (973) 917-9404', 'dummy@gmail.com', '2004-04-30', 'Grade12', 'Rajeshwari Revankar', '+1 (973) 870-2528', 'C Programming', 'USA', '123456677765', 'Bob the Builder - Lookup question (1).xlsx', 'Bob the Builder - Lookup answer.xlsx', 'Bob the Builder - Lookup answer.xlsx', 'Female', 1, 3, '2022-05-31 05:03:25'),
(0, 126, 'Olivia Dsilva', '9611092025', 'dsilvaolivia391@gmail.com', '2004-03-29', 'PUC', 'Rosalin Dsilva', '9986221716', 'Basics of Computers', 'H.no 1767\r\n63 main cross,\r\nVanasiri Nagar\r\nSattur Dharwad', '474145174668', 'WhatsApp Image 2022-06-13 at 12.50.32 PM (1).jpeg', 'WhatsApp Image 2022-06-13 at 12.55.45 PM.jpeg', 'WhatsApp Image 2022-06-13 at 12.50.32 PM (1).jpeg', 'Female', 1, 1, '2022-06-13 00:26:01'),
(0, 127, 'Anushka Yaligar', '9663492057', 'anushkayaligar@gmail.com', '2004-04-01', 'PUC', 'Rekha Yaligar', '9620133057', 'Basics of Computers', 'c/o \r\nS Y Narvekar\r\nLIG 18\r\nKHB Colony\r\nDharwad.', '617419546366', 'WhatsApp Image 2022-06-13 at 12.51.18 PM.jpeg', 'WhatsApp Image 2022-06-13 at 12.53.35 PM.jpeg', 'WhatsApp Image 2022-06-13 at 12.51.18 PM.jpeg', 'Female', 1, 1, '2022-06-13 00:30:52'),
(0, 128, 'Geeta Mirji', '8431218469', 'geeta.mirji5213@gmail.com', '2001-06-06', 'BSc(PMS)', 'Mallikarjuna Mirji', '9741321201', 'Basics of Computers', 'Venkateshwara colony\r\nnear Raghvendra temple\r\nLingasugur', '677159989867', 'adhar.jpeg', 'photo.jpeg', 'adhar.jpeg', 'Female', 1, 1, '2022-06-22 05:22:29'),
(0, 129, 'Sumedha Deshpande', '8431175497', 'sumedha.s.d.sd@gmail.com', '2001-06-14', 'BSc(PMS)', 'Shrinivas Deshpande', '9845110356', 'Basics of Computers', 'Venkateshwara Colony\r\nNear Raghavendra temple\r\nLingasugur', '758811044948', 'sumedha.jpeg', 'sumedhapoto.jpeg', 'sumedhapoto.jpeg', 'Female', 1, 1, '2022-06-22 05:35:20'),
(0, 130, 'Sooryanarayan Bhat', '9481367311', 'sooryabhat98@gmail.com', '1998-08-01', 'MSc', 'Savita Bhat', '8660111532', 'MCA-Project', 'Daneshwar Nagar\r\nDharwad', '301665883577', 'soorya.jpeg', 'sooryaph.jpeg', 'soorya.jpeg', 'Male', 1, 29, '2022-06-23 03:21:44'),
(314, 131, 'Prajwal M Salimath', '7619342132', 'prajwalsalimath2004@gmail.com', '2004-02-17', 'PUC', 'Mantesh Salimath', '8123905322', 'C Programming', 'Banashri Layout Behind KHK hostel, Yalakki  Shetter Colony, Dharwad', '691628123903', 'WhatsApp Image 2022-06-26 at 12.54.32 PM.jpeg', 'WhatsApp Image 2022-06-26 at 12.54.33 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 3, '2022-06-26 00:27:17'),
(315, 132, 'prajwal s karigoudar', '9972580183', 'prajwalkarigoudar163@gmail.com', '2004-03-16', 'PUC', 'Sadanandgouda', '9980114319', 'C Programming', 'Maruti Nagar VTC Nargund Gadag', '813759414594', 'WhatsApp Image 2022-06-26 at 1.04.08 PM.jpeg', 'WhatsApp Image 2022-06-26 at 1.04.08 PM (1).jpeg', 'resume-sample.pdf', 'Male', 1, 3, '2022-06-26 00:35:28'),
(0, 133, 'Patadayya G Chikkamath', '6362927185', 'patadayyachikkamath9089@gmail.com', '2004-01-30', 'PUC', 'Gangadhar Chikmath', '9481944773', 'C Programming', 'Gandhi Nagar 2nd cross\r\nDharwad', '452175791046', 'WhatsApp Image 2022-06-26 at 1.11.29 PM (1).jpeg', 'WhatsApp Image 2022-06-26 at 1.11.28 PM (1).jpeg', 'WhatsApp Image 2022-06-26 at 1.11.29 PM (1).jpeg', 'Male', 1, 3, '2022-06-27 21:16:17'),
(0, 134, 'Goudappa Patil', '9019721702', 'goudappapatil921@gmail.com', '2004-03-04', 'PUC', 'Ninganagouda Patil', '9686306092', 'C Programming', 'Vivekanand Navkar\r\nDharwad', '272751798701', 'WhatsApp Image 2022-06-30 at 11.04.03 AM.jpeg', 'WhatsApp Image 2022-06-30 at 11.04.41 AM.jpeg', 'WhatsApp Image 2022-06-30 at 11.03.36 AM.jpeg', 'Male', 1, 3, '2022-06-29 22:37:33'),
(0, 135, 'Ibrahim Sureban', '8095470011', 'smd.ibrahimsn46@gmail.com', '1991-11-27', 'BE(CIVIL)', 'Mohammad Sureban', '8861393316', 'Python Programming', 'Ward 5 Kotwal Peth, Irkal, Bagalkot', '626285251141', 'WhatsApp Image 2022-06-30 at 7.22.53 PM.jpeg', 'WhatsApp Image 2022-06-30 at 7.22.56 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 5, '2022-06-30 06:59:02'),
(0, 136, 'Modinsab', '8105178963', 'modinsab.jigalur024@gmail.com', '1994-08-07', 'BE(CIVIL)', 'Yamanurasab jigalur', '9901665208', 'Python Programming', 'Mandina housing colony Gandhi Nagar\r\ndharwad', '442814540695', 'WhatsApp Image 2022-06-30 at 7.33.17 PM.jpeg', 'WhatsApp Image 2022-06-30 at 7.32.33 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 5, '2022-06-30 07:11:41'),
(123, 137, 'Ashwini Pujari', '8971511564', 'ashwinipujari333@gmail.com', '1999-12-25', 'MBA', 'Shakuntala Pujari', '8197284719', 'Advanced Excel Program', 'KPC colony Ganeshgudi\r\n33/1', '309781314665', 'WhatsApp Image 2022-07-01 at 3.11.42 PM.jpeg', 'WhatsApp Image 2022-07-01 at 3.14.35 PM.jpeg', 'WhatsApp Image 2022-07-01 at 3.11.42 PM.jpeg', 'Female', 1, 2, '2022-07-01 02:44:51');
INSERT INTO `admissions` (`enquiry_id`, `id`, `Name`, `Phone`, `Email`, `DateofBirth`, `Qualification`, `Guardians_Name`, `Guardians_Phone`, `CoursesOpted`, `Address`, `AdhaarNo`, `AdhaarFile`, `PhotoFile`, `Resume`, `Gender`, `Feesstatus`, `Courseid`, `createddate`) VALUES
(0, 138, 'Prasanna Teja O', '9022763105', 'dummy@gmail.com', '2005-10-31', 'BA', 'Umesh O', '8722935790', 'Basics of Computers', 'Ward No 14 House no 254\r\nOld Chapparadahalli\r\nNear govt school\r\nSandur\r\nBellary', '578397427996', 'WhatsApp Image 2022-07-02 at 3.31.17 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.30.41 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.31.17 PM.jpeg', 'Male', 1, 1, '2022-07-02 03:06:26'),
(0, 139, 'Chaitanya O', '9022763105', 'dummy@gmail.com', '2004-09-02', 'BA', 'Umesh O', '8722935790', 'Basics of Computers', 'Ward no 14 House o 254\r\nOld Chapparadahalli\r\nNear Govt school\r\nSandur\r\nBellay\r\nKarnataka', '337894330293', 'WhatsApp Image 2022-07-02 at 3.31.57 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.30.13 PM.jpeg', 'WhatsApp Image 2022-07-02 at 3.31.57 PM.jpeg', 'Female', 1, 1, '2022-07-02 03:11:17'),
(0, 140, 'Manisha Hatalageri', '9482467617', 'manishahatalageri@gmail.com', '2001-01-05', 'BE', 'Mallappa Hatalageri', '9482000617', 'Core Java', 'Gandhinagar\r\nDrivers Colony\r\ndharwad', '906245206571', '20220629_200233 (1).docx', 'WhatsApp Image 2022-07-06 at 11.34.12 AM.jpeg', 'Manisha Hatalageri_KLE Tech University-2 (1).docx', 'Female', 1, 19, '2022-07-05 23:45:40'),
(313, 141, 'Umesh Channayya Sheelimath', '6363510243', 'umeshsheelimath@gmail.com', '2003-07-06', 'BA(2ndSEM)', 'Channayya Maharudrayya Sheelimath', '6363510243', 'C Programming', '#1293\r\nJadar Pete\r\nAt Hooli\r\nTq Savadatti\r\nHooli\r\nBelgaum-591126', '238126107872', 'WhatsApp Image 2022-07-06 at 1.34.22 PM.jpeg', 'WhatsApp Image 2022-07-06 at 1.35.12 PM.jpeg', 'WhatsApp Image 2022-07-06 at 1.34.22 PM.jpeg', 'Male', 1, 3, '2022-07-06 01:09:59'),
(0, 142, 'Megha Marigoudar', '9110686577', 'meghamarogoudar@gmail.com', '2003-07-04', 'PUC', 'Mallikarjun Marigoudar', '9110686577', 'C++ Programming', 'Hosa yellapur', '860441087026', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.11.54 PM.jpeg', 'WhatsApp Image 2022-02-16 at 7.09.32 PM.jpeg', 'Female', 1, 4, '2022-07-07 02:15:01'),
(0, 143, 'Ramesh G B', '95358 79633', 'rameshgb.palb1105@gmail.com', '1990-01-15', 'PHD', 'Basavaraj Appa', '95358 79633', 'Python Programming', 'Channel Road, Bhadravathi, Sanyyasi Kodmaggi Hosur, Shivamongga', '308713793202', 'New Doc 2019-04-22 16.51.23 (1).pdf', 'Untitled design (16).png', 'CV  for company.pdf', 'Male', 1, 5, '2022-07-07 08:16:40'),
(317, 144, 'Vishwa M Badachi', '9845036526', 'manojbadachi@gmail.com', '2004-03-23', 'PUC', 'Manoj Badachi', '9845036526', 'C Programming', 'Suveer Building, Shivaji Nagar, Y S Colony, Dharwad', '390187953088', 'WhatsApp Image 2022-07-08 at 6.06.31 PM.jpeg', 'WhatsApp Image 2022-07-08 at 6.06.30 PM.jpeg', 'resume-sample.pdf', 'Male', 1, 3, '2022-07-08 05:59:36'),
(0, 145, 'M Rahul', '6360989004', 'yashwanthyash9909@gmail.com', '1997-03-30', 'BSc(CBZ)', 'Ramesh', '8431493095', 'Digital Media Marketing', 'Near Ashwini Nagar\r\n2nd cross\r\nBhangawanth goudar', '711856517209', 'WhatsApp Image 2022-07-09 at 3.21.22 PM.jpeg', 'WhatsApp Image 2022-07-09 at 3.21.37 PM.jpeg', 'WhatsApp Image 2022-07-09 at 3.21.22 PM.jpeg', 'Male', 1, 15, '2022-07-09 02:55:50'),
(0, 146, 'Nishmitha Poojari', '7619132300', 'nishmitha.c.pujari@gmail.com', '1999-05-20', 'MBA', 'Chandrashekhar Poojari', '9844323157', 'Advanced Excel Program', 'Plot bo 13/5\r\nBanashankeri nilaya\r\nBaligar Hakkal Street \r\nBhaidevarakoppa \r\nHubballi', '899676609195', 'IMG20220712122604.jpg', 'WhatsApp Image 2022-07-12 at 12.29.12 PM.jpeg', 'IMG20220712122604.jpg', 'Female', 1, 2, '2022-07-12 00:02:55'),
(322, 147, 'Atharv Bennur', '8618112157', 'atharvbennur@gmail.com', '2006-04-25', 'PUC(1)', 'Manoj Bennur', '9845678331', 'C Programming', 'Hallikeri Chal\r\nNear KC park\r\nDharwad', '811764297263', 'atharv.pdf', 'atharv photo.pdf', 'atharv.pdf', 'Male', 1, 3, '2022-07-12 02:18:15'),
(0, 148, 'Vijeta Kalal', '9353841221', 'kalalvijeta1999@gmail.com', '1999-11-25', 'MBA', 'Yalappa Kalal', '9844764716', 'Advanced Excel Program', 'Jannat Nagar 8th cross,\r\nNear Laxmi Nagar,\r\nDharwad', '123456777777', 'WhatsApp Image 2022-07-13 at 12.25.37 PM.jpeg', 'WhatsApp Image 2022-07-13 at 12.25.37 PM.jpeg', 'WhatsApp Image 2022-07-13 at 12.25.37 PM.jpeg', 'Female', 1, 2, '2022-07-13 00:00:05'),
(0, 149, 'Kalavati Mallapur', '8618941164', 'kalavatimallapur65@gmail.com', '2004-04-22', 'PUC', 'Kumarayya Mallapur', '9945081536', 'Basics of Computers', 'dist Gadag\r\nTaluk Nargund\r\nAt post Hadli', '699405441231', 'WhatsApp Image 2022-07-14 at 12.22.16 PM.jpeg', 'WhatsApp Image 2022-07-14 at 12.22.15 PM.jpeg', 'WhatsApp Image 2022-07-14 at 12.22.16 PM.jpeg', 'Female', 1, 1, '2022-07-13 23:57:18'),
(0, 150, 'Laxmi Lamani', '9380422653', 'lamanilakshmi88@gmail.com', '1999-07-31', 'Bsc', 'Hirappa Lamani', '8867601538', 'Advanced Excel Program', 'Drivers Colony ,\r\n2nd cross Gandhi Nagar\r\nDharwad', '303124669420', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.26.56 PM.jpeg', 'WhatsApp Image 2022-05-23 at 7.24.15 PM.jpeg', 'Female', 1, 2, '2022-07-18 05:32:54'),
(0, 151, 'Varsha Patil', '8792448568', 'varshapatil1932002@gmail.com', '2002-03-19', 'BE(3rdsem)', 'Suresh Patil', '912081305441', 'Python Programming', 'Drivers Colony, near Rudset, Gandhi Nagar, Dharwad.', '912081305441', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'WhatsApp Image 2021-11-30 at 5.42.21 PM (1).jpeg', 'WhatsApp Image 2021-11-30 at 5.42.22 PM.jpeg', 'Female', 1, 5, '2022-07-19 00:20:49'),
(329, 152, 'Spoorti B Patil', '9902269253', 'spoortipatil3@gmail.com', '2000-04-11', 'BSclifescience', 'Geeta B Patil', '7411478149', 'Basics of Computers', 'maratha colony\r\nnear Durga devi temple\r\nDharwad', '433692220745', '', 'WhatsApp Image 2022-07-30 at 3.25.15 PM.jpeg', 'WhatsApp Image 2022-07-30 at 3.26.45 PM.jpeg', 'Female', 1, 1, '2022-07-30 02:57:03'),
(328, 153, 'Komal Giriyappanavar', '8884704281', 'komalgiri888@gmail.com', '1998-12-06', 'BSclifescience', 'Vivekanand Giriyappanavar', '9611510885', 'Basics of Computers', 'Guruganjikoppa Goudar oni\r\nDharwad', '813928165373', 'WhatsApp Image 2022-07-30 at 3.26.05 PM.jpeg', 'WhatsApp Image 2022-07-30 at 3.25.44 PM.jpeg', 'WhatsApp Image 2022-07-30 at 3.25.44 PM.jpeg', 'Female', 1, 1, '2022-07-30 03:02:57'),
(326, 154, 'Chandrashekhar Ambanna', '9353963912', 'chadruambanna@gmail.com', '2000-11-11', 'BE Mech', 'Ambanna', '9740485906', 'Core Java', 'Chitapur Gulbarga', '741632411610', 'adhar card.pdf', 'WhatsApp Image 2022-07-31 at 1.49.29 PM.jpeg', 'Chandrashekar_Ambalgi.pdf', 'Male', 1, 19, '2022-07-31 01:21:20'),
(0, 155, 'Afnan Arif Gudagi', '8088411670', 'afnangudgadi@gmail.com', '2004-06-08', 'PUC', 'Arif Gudagi', '8762889436', 'C Programming', 'Jayanagar Saptapur\r\nDharwad', '661110238382', 'WhatsApp Image 2022-08-01 at 11.13.09 AM (1).jpeg', 'WhatsApp Image 2022-08-01 at 11.13.09 AM (2).jpeg', 'WhatsApp Image 2022-08-01 at 11.13.09 AM (1).jpeg', 'Female', 1, 3, '2022-07-31 22:47:16'),
(327, 156, 'Nivedita Panchagavi', '7619164530', 'niveditakrishnapanchgavi@gmail.com', '2002-10-10', 'PUC', 'Krishna Panchgavi', '7829526006', 'C Programming', 'Rajatgiri\r\nDharwad', '517075950095', 'WhatsApp Image 2022-08-01 at 11.49.55 AM (1).jpeg', 'WhatsApp Image 2022-08-01 at 11.50.56 AM.jpeg', 'WhatsApp Image 2022-08-01 at 11.49.55 AM (1).jpeg', 'Female', 1, 3, '2022-07-31 23:23:03'),
(325, 157, 'Abhishek Patil', '9743880335', 'abhishekpatil1501@gmail.com', '2001-09-15', 'BEseventhsem', 'Prabhanna Patil', '9972428347', 'Core Java', 'C/o Prabhanna Patil\r\nnear Hanuman Temple\r\nRaichur', '282928577807', 'WhatsApp Image 2022-08-01 at 6.02.56 PM.jpeg', 'WhatsApp Image 2022-08-01 at 5.59.51 PM.jpeg', 'ABHISHEK PATIL RESUME.pdf', 'Female', 1, 19, '2022-08-01 05:35:05'),
(332, 158, 'Kavya Yemmetti', '6363607202', 'kavyarani1256@gmail.com', '2002-04-17', 'BE3year', 'Mahaveer Yemmetti', '8904842778', 'C Programming', 'Shettar colony\r\nIndra Nagar\r\nH.no 44/b\r\nPadmashree Nilaya\r\nDharwad', '246288337550', 'WhatsApp Image 2022-08-04 at 11.21.29 AM.jpeg', 'WhatsApp Image 2022-08-04 at 11.24.34 AM.jpeg', 'WhatsApp Image 2022-08-04 at 11.21.29 AM.jpeg', 'Female', 1, 3, '2022-08-03 22:58:30'),
(343, 159, 'OM Ashok Gaikwad', '7204847501', 'omg46929@gmail.com', '2004-05-10', 'PUC', 'Ashok G Gaikwad', '990041791', 'C Programming', 'Gandhi nagar 1st cross\r\nDharwad', '313895695333', 'AADHAR CARD.pdf', 'WhatsApp Image 2022-08-13 at 12.15.21 PM.jpeg', 'AADHAR CARD.pdf', 'Male', 1, 3, '2022-08-12 23:45:55'),
(0, 160, 'Prasanna Teja O', '9022763105', 'dummy@gmail.com', '2005-10-31', 'PUC', 'Umesh O', '8722935790', 'C Programming', 'Ward No 14 House no 254\r\nOld Chapparadahalli', '578397427996', 'prasanna adhar.jpeg', 'prasanna.jpeg', '', 'Male', 1, 3, '2022-08-16 04:29:12'),
(0, 161, 'Pooja Nekar', '9632180489', 'poojanekar14@gmail.com', '2005-02-14', 'PUC', 'Dr Mahantesh Nekar', '9448515257', 'C Programming', 'Siri 139\r\nD/3,\r\n\r\n3rd cross near Balatripura Temple, Backside KMF,Shakambari nagar \r\nDharwad', '356630258464', 'pooja nekar adhar.pdf', 'pooja nekar.jpeg', 'pooja nekar adhar.pdf', 'Female', 1, 3, '2022-08-21 22:36:13'),
(348, 162, 'Karthik Pattar', '8073238072', 'karthikpattar123@gmail.com', '2006-04-10', 'PUC', 'Krishna Pattar', '8088721667', 'Basics of Computers and Advanced Excel', 'Bijapur \r\nMuddebihal\r\nVidyanagar', '244319650515', 'WhatsApp Image 2022-08-22 at 3.30.45 PM.jpeg', '2022-07-03-21-38-00-948.jpg', 'WhatsApp Image 2022-08-22 at 3.30.45 PM.jpeg', 'Male', 1, 31, '2022-08-22 03:07:35'),
(0, 163, 'Haripriya Mallareddy', '9008053204', 'haripriyamallareddy@gmail.com', '2004-01-24', 'PUC', 'Prakash Mallareddy', '9480663311', 'C Programming', '15/1\r\nRoad no 3\r\nSaraswatpur \r\nDharwad', '500010149567', 'WhatsApp Image 2022-08-21 at 6.40.23 PM.jpeg', 'WhatsApp Image 2022-08-21 at 6.40.24 PM.jpeg', 'WhatsApp Image 2022-08-21 at 6.40.23 PM.jpeg', 'Female', 1, 3, '2022-08-22 05:19:36'),
(335, 164, 'Achyut Mutalik', '8050581933', 'achutmutlik15@gmail.com', '2000-02-07', 'BE(Mech)', 'Raghvendra Mutalik', '9663251491', 'Python Programming', 'Sri Ram Nagar\r\nAttikolla\r\nDharwad', '422670371832', 'WhatsApp Image 2022-08-22 at 6.52.36 PM.jpeg', 'WhatsApp Image 2022-08-22 at 6.53.37 PM.jpeg', 'WhatsApp Image 2022-08-22 at 6.52.36 PM.jpeg', 'Male', 1, 5, '2022-08-22 06:31:04'),
(336, 165, 'Samarath Shetty', '9845061994', 'samarthshetty3999@gmail.com', '1997-11-12', 'BE(Mech)', 'S Prabhakar Shetty', '9901063999', 'Python Programming', 'Flat no 201/202\r\nKeshav Residence\r\nChidambar nagar\r\nGandhi Nagr Dharwad', '813793224699', 'Aadhaar card (samarth).pdf', 'WhatsApp Image 2022-08-22 at 6.53.47 PM.jpeg', 'Aadhaar card (samarth).pdf', 'Male', 1, 5, '2022-08-22 06:37:53'),
(342, 166, 'prasanna lakshmi', '7276088228', 'prasanna.bellary@gmail.com', '1983-07-03', 'BE', 'Ramaswamy D', '8308835468', 'Python Programming', 'Dodda basaveshwar Niwas\r\n2nd cross Vidyagiri\r\nDharwad', '459271066500', 'WhatsApp Image 2022-08-22 at 7.55.07 PM.jpeg', 'WhatsApp Image 2022-08-22 at 7.57.44 PM.jpeg', 'WhatsApp Image 2022-08-22 at 7.55.07 PM.jpeg', 'Female', 1, 5, '2022-08-22 07:28:57'),
(356, 167, 'Yusuf SH', '9740692004', 'yusufbiohalkarni@gmail.com', '1998-06-03', 'Bsc', 'Sayed basha Halkarni', '9740692004', 'Digital Media Marketing', 'C/o Sayed basha Halkarni\r\nShaheen manzil hublikar plot sadhankeri ,police head quarter,Dharwad', '431362858197', 'WhatsApp Image 2022-08-26 at 5.37.01 PM.jpeg', 'WhatsApp Image 2022-08-26 at 5.37.01 PM (1).jpeg', 'WhatsApp Image 2022-08-26 at 5.37.01 PM.jpeg', 'Male', 1, 15, '2022-08-26 05:11:43'),
(344, 168, 'Joseph Dsouza', '8217785456', 'josephdsouza7411@gmail.com', '1993-12-22', 'Diploma', 'Louis Dsouza', '9342825255', 'Digital Media Marketing', 'Beena Dsouza\r\nBehind horeb church sriramnagar dharwad 580007', '453208880309', 'WhatsApp Image 2022-08-30 at 12.45.04 PM.jpeg', 'WhatsApp Image 2022-08-30 at 12.45.09 PM.jpeg', 'WhatsApp Image 2022-08-30 at 12.45.04 PM.jpeg', 'Male', 1, 15, '2022-08-30 00:20:51');

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
  `Trainings` varchar(40) NOT NULL,
  `Internship` varchar(40) NOT NULL,
  `Demo` varchar(100) NOT NULL,
  `Services` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Modified_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `Email`, `Phone`, `Qualification`, `source`, `Trainings`, `Internship`, `Demo`, `Services`, `status`) VALUES
(1, 'Gauri Gatade', 'gomzyr3@gmail.com', '7019353194', '', '', 'Basic Computers', 'SELECT YOUR INTEREST', '', '', 0),
(3, 'Palla Hokarni', 'pallavihokrani20@gmail.com', '9845067824', '', '', 'Basic Computers', '', '', '', 0),
(4, 'Jagadeesh s kalappanavar', '', '9880137833', '', '', 'Basic Computers', '', '', '', 0),
(5, 'Sushmita R Bhope', '', '8904100213', '', '', 'Basic Computers', '', '', '', 1),
(6, 'Hitesh B Shetty', 'hiteshshetty123@gmail.com', '9483072803', '', '', 'Civil Design Softwares', '', '', '', 1),
(7, 'Sindhu B', 'sindhuchandu689@gmail.com', '7795261614', '', '', 'Basic Computers', '', '', '', 1),
(8, 'Shankarmanju', 'shankarmanju543@gmail.com', '9738738726', '', '', 'Civil Design Softwares', '', '', '', 1),
(9, 'Akshata Neeralagi', 'akshataneeralagi717@gmail.com', '8884707857', '', '', 'Cloud Computing', '', '', '', 1),
(10, 'Vishwanath Hubballi', 'vishwahubli2001@gmail.com', '7019429375', '', '', 'Basic Computers', '', '', '', 1),
(74, 'Aaliya Jamadar', '', '7411712800', '', '', 'Web Design and Development', '', '', '', 1),
(12, 'Irfan Shivalli', '', '6361619615', '', '', 'Civil Design Softwares', '', '', '', 1),
(13, 'Pooja Nerlekar', 'poojanerlekar@yahoo.com', '9611719693', '', '', 'Civil Design Softwares', '', '', '', 1),
(14, 'Ankita', '', '9028186762', '', '', 'Web Designing and Development', '', '', '', 1),
(15, 'Shanawaz Mallik', '', '9019070818', '', '', 'Digital Marketing', '', '', '', 1),
(16, 'Lohit Adli', 'lohit07@gmail.com', '9886627744', '', '', 'Civil Design Softwares', '', '', '', 1),
(17, 'Fardeen Gudgi', 'fardeen687@gmail.com', '8618741258', '', '', 'Civil Design Softwares', '', '', '', 1),
(73, 'fari', '', '70194105564', '', '', 'Web Design and Development', '', '', '', 1),
(72, 'Anand SDM', '', '6364306110', '', '', 'AutoCad', '', '', '', 1),
(71, 'Suresh A', 'sureshnoor2@gmail.com', '9113692228', '', '', 'Java Selenium', '', '', '', 1),
(23, 'Shravan S', 'samanishravan@gmail.com', '9148701973', '', '', 'Programming Languages', '', '', '', 1),
(24, 'Sahana', '', '7975400651', '', '', 'Programming Languages', '', '', '', 1),
(25, 'Aishwarya', '', '9482799049', '', '', 'Programming Languages', '', '', '', 1),
(26, 'Akshay', '', '7406960180', '', '', 'Programming Languages', '', '', '', 1),
(27, 'Vinay Kammar', '', '9686069261', '', '', 'Civil Design Softwares', '', '', '', 1),
(28, 'Abid Ali', '', '7406946038', '', '', 'Web Designing and Development', '', '', '', 1),
(29, 'Kaiser', '', '8105664513', '', '', 'Web Designing and Development', '', '', '', 1),
(30, 'Shivanand', '', '8050721852', '', '', 'Civil Design Softwares', '', '', '', 1),
(31, 'Ismail A Bagewadi', 'ismailbagewadi123@gmail.com', '9945746655', '', '', 'Python Programming', '', '', '', 1),
(32, 'Sagar Athani', '', '7829782686', '', '', 'Web Designing and Development', '', '', '', 1),
(33, 'Sudha Naik', '', '7700055287', '', '', 'Web Designing and Development', '', '', '', 1),
(34, 'Muttu', '', '7259647625', '', '', 'Web Designing and Development', '', '', '', 1),
(35, 'Pavan', '', '9380492150', '', '', 'Web Designing and Development', '', '', '', 1),
(36, 'Padmanabha Kulkarni', '', '9036245706', '', '', 'Android Development', '', '', '', 1),
(37, 'Mallikarjuna', '', '8495992592', '', '', 'Civil Design Softwares', '', '', '', 1),
(38, 'Navreen', '', '9481400176', '', '', 'Civil Design Softwares', '', '', '', 1),
(39, 'Rajat S kale', 'rajwahi97@gmail.com', '8722124669', '', '', 'Web Designing and Development', '', '', '', 1),
(40, 'Manjula H', '', '9632182264', '', '', 'Basic Computers', '', '', '', 1),
(41, 'Kiran G S', 'kiran5hgs@gmail.com', '9663257103', '', '', 'Programming Languages', '', '', '', 1),
(42, 'Arun S', 'arunshettarkr@gmail.com', '8792734186', '', '', 'Web Designing and Development', '', '', '', 1),
(43, 'Tousif Raichur', 'tousifraichur@gmail.com', '8861520050', '', '', 'Web Designing and Development', '', '', '', 1),
(44, 'Chetan', '', '8904970624', '', '', 'Web Designing and Development', '', '', '', 1),
(45, 'Shubham', '', '8310521725', '', '', 'Web Designing and Development', '', '', '', 1),
(46, 'Kushal C harti', 'kushal007harthi@gmail.com', '9480504233', '', '', 'Programming Languages', '', '', '', 1),
(47, 'Sachin Honnatti', 'honnattisachin@gmail.com', '9620196071', '', '', 'Civil Design Softwares', '', '', '', 1),
(48, 'Sooraj', 'soorajsharawad@gmail.com', '8904999525', '', '', 'Mechanical Combo', '', '', '', 1),
(49, 'Shripad V Gombi', 'shripadgombi@gmail.com', '9480369200', '', '', 'Basic Computers', '', '', '', 1),
(50, 'Shreyas Potdar', 'shreyasnpzod@gmail.com', '1234567890', '', '', 'Programming Languages', '', '', '', 1),
(51, 'Vithoba k', '', '9916881223', '', '', 'Civil Design Softwares', '', '', '', 1),
(52, 'Hasen', '', '974183207', '', '', 'Programming Languages', '', '', '', 0),
(53, 'Mounesh', '', '8296801070', '', '', 'Basic Computers', '', '', '', 1),
(54, 'Santosh', '', '9902924166', '', '', 'Basic Computers', '', '', '', 1),
(55, 'Mahantesh N K', 'mahanteshnk220@gmail.com', '7996678514', '', '', 'Web Designing and Development', '', '', '', 1),
(56, 'Harish P', '', '9902740100', '', '', 'Civil Design Softwares', '', '', '', 1),
(57, 'Sharath', 'dev9sdn@gmail.com', '9964903110', '', '', 'Digital Marketing', '', '', '', 1),
(58, 'Priyanka', 'priyanka.ambli123@gmail.com', '9902658819', '', '', 'Web Designing and Development', '', '', '', 1),
(59, 'Rakesh', '', '9035571854', '', '', 'School Academics', '', '', '', 1),
(60, 'Shashikanth', 's.biradar1980@gmail.com', '8884439993', '', '', 'Basic Computers', '', '', '', 1),
(61, 'Praful N K', '', '9035123076', '', '', 'Civil Design Softwares', '', '', '', 1),
(62, 'Vadiraj Arabatti', 'vadirajarabatti@gmail.com', '8792329563', '', '', 'Programming Languages', '', '', '', 1),
(63, 'Vaibhav', '', '9481400176', '', '', 'Web Designing and Development', '', '', '', 1),
(64, 'Mallikarjun s Kudlanavar', '', '9448840250', '', '', 'Civil Design Softwares', '', '', '', 1),
(65, 'Ganan R B', 'gaganbelurvath@gmail.com', '8651616589', '', '', 'Civil Design Softwares', '', '', '', 1),
(66, 'Rohit', 'rohitraichur6@gmail.com', '6362552988', '', '', 'Basics of Computers', '', '', '', 1),
(67, 'Bhagyashree Katti', 'bhagyashreemkatti@gmail.com', '9481286390', '', '', '', '', '', 'WEB DESIGNING AND DEVELOPMENT', 1),
(68, 'Ravi S Murnal', 'ravi.murnal2@gmail.com', '8951959397', '', '', '', '', '', '', 1),
(69, 'Amogh', 'amoghak@gmail.com', '7019828816', '', '', 'Python Programming', '', '', '', 1),
(70, 'Omkar', 'omkartikare55@gmail.com', '8296911190', '', '', 'Python Programming', '', '', '', 1),
(75, 'JesseMaw', 'iooxve.rtris@gmail.com', '84327818874', '', '', '', 'Digital Marketing', '', '', 1),
(76, 'Taheer Husain', '', '7848011543', '', '', 'Revit Designing Software', '', '', '', 0),
(77, 'Kartik', '', '8197034685', '', '', 'Python Programming', '', '', '', 1),
(78, 'Jagadeesh', '', '9739759036', '', '', 'Web Design and Development', '', '', '', 1),
(79, 'Kiran Sg', '', '9900794879', '', '', 'Python Programming', '', '', '', 1),
(80, 'Bheemanagouda Patil', '', '9380685595', '', '', 'Web Design and Development', '', '', '', 1),
(81, 'Nagveni', '', '6362307884', '', '', 'BCAProject', '', '', '', 0),
(82, 'Shivraj Bailabalad', 'shivrajlb278@gmail.com', '9481857994', '', '', 'Digital Media Marketing', '', '', '', 1),
(83, 'JesseMaw', 'i.ooxv.e.rt.r.i.s@gmail.com', '81151118892', '', '', '', 'Python Programming', '', '', 1),
(84, 'Adarsh Kotagi', 'adarshkotagi1998@gmail.com', '+91886189943', 'B.E', '', '', 'Web Designing and Development', '', '', 1),
(85, 'Sainath Mangalgatti', '', '9110210682', '', '', 'Tally and GST', '', '', '', 1),
(86, 'Harshad Chinnur', 'harshadahamed1999@gmail.com', '9110481034', '', '', 'Python Programming', '', '', '', 1),
(87, 'Nagaraj kubsad', 'nagarajkubsad488@gmail.com', '9686532237', '', '', 'Digital Media Marketing', '', '', '', 1),
(88, 'Guruprasad Kolekar', 'guruprasadgurusk@gmail.com', '8792266405', '', '', 'Digital Media Marketing', '', '', '', 1),
(89, 'Suma Gouda', '', '6362523182', '', '', 'BCAProject', '', '', '', 1),
(90, 'Kasturi Chandrashekhar', 'ravikumarsk26@gmail.com', '7795729023', '', '', 'Basics of Computers', '', '', '', 1),
(91, 'Charishma', 'charishma2010@gmail.com', '9448235662', '', '', 'Basics of Computers', '', '', '', 1),
(92, 'Dr Mahantesh Angai', 'angadimantu@gmail.com', '9738663352', '', '', 'Web Design and Development', '', '', '', 1),
(93, 'Veeresh Baligar', 'veeru.baligar@gmail.com', '9535599726', '', '', 'Python Programming', '', '', '', 1),
(94, 'Hemanth saikumar', 'hemanthsaikumarb@gmail.com', '9986194277', '', '', 'Python Programming', '', '', '', 1),
(95, 'Venkatesh Budagumpi', 'venkateshsb123@gmail.com', '8792078194', '', '', 'Python Programming', '', '', '', 1),
(96, 'Ashwini dasankop', 'ashwinidasankop899@gmail.com', '7483200142', '', '', 'BCAProject', '', '', '', 1),
(97, 'Anil', '', '6364303268', '', '', 'SQL', '', '', '', 1),
(98, 'Sagar onti', 'sagaronti683@gmail.com', '8497025308', '', '', 'BCAProject', '', '', '', 1),
(99, 'Pavan Kumar Talavar', 'pavankumartalawar18@gmail.com', '8431151819', '', '', 'Python Programming', '', '', '', 1),
(100, 'Sauravh Kumar', 'sauravhk614@gmail.com', '7715992879', '', '', 'Web Design and Development', '', '', '', 1),
(101, 'Santosh K', 'santoshkarikabbi88@gmail.com', '8277721771', '', '', 'AutoCad', '', '', '', 1),
(102, 'Moinulla Hussaini', '', '9110483681', '', '', 'Python Programming', '', '', '', 1),
(103, 'Mayur Appa', '', '9535015728', '', '', 'AutoCad', '', '', '', 1),
(104, 'Mayur Appa', '', '9535015728', '', '', 'AutoCad', '', '', '', 1),
(105, 'Mayur Appa', '', '9535015728', '', '', 'AutoCad', '', '', '', 1),
(106, 'Vijay Pujar', '', '9738561464', '', '', 'Revit Designing Software', '', '', '', 1),
(107, 'Priyanka lokur', 'priyalokur2000@gmail.com', '7619686021', '', '', 'Web Design and Development', '', '', '', 1),
(108, 'Sowmya Patil', 'sowmyapatil720@gmail.com', '7996968242', '', '', 'Web Design and Development', '', '', '', 1),
(109, 'HajiAli MS', 'hajialisadarbhai53@gmail.com', '8660564094', '', '', 'Python Programming', '', '', '', 0),
(110, 'Harish', '', '9902740100', '', '', 'Road Design Softwares', '', '', '', 1),
(111, 'Sankalp', 'sankalp0603@gmail.com', '8095360160', '', '', 'Web Design and Development', 'Web Designing and Development', '', '', 1),
(112, 'Megha', '', '9986636024', '', '', 'Python Programming', '', '', '', 1),
(113, 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚ Ð½Ð¾Ð¼ÐµÑ€ WLR413336WLR2 Ð¿Ð¾Ð´Ð³', 'shirokovaalisaodgd@mail.ru', 'shirokovaali', '', '', 'Python Programming', '', '', '', 1),
(114, 'Akshata', 'annigeriakshata@gmail.com', '8217047058', '', '', '', 'Python Programming', '', '', 1),
(115, 'SDSASAC', 'SDA@gmail.com', 'Ssaadda', '', '', 'Basics of Computers', '', '', '', 1),
(116, 'Prateek G G', 'prateekgg23@gmail.com', '6362354841', '', '', 'AutoCad', '', '', '', 1),
(117, 'Veeresh G D', 'veereshgd4@gmail.com', '6361962823', '', '', 'AutoCad', '', '', '', 1),
(118, 'Najmusahar kalkoti', 'najmusaharkalkoti@gmail.com', '9902823247', '', '', 'Web Design and Development', '', '', '', 0),
(119, 'Ravitej', '', '9148735284', '', '', 'Web Design and Development', '', '', '', 1),
(120, 'Azib Ali', '', '7349308267', '', '', '', 'Python Programming', '', '', 1),
(121, 'Vivek Kittur', 'vivekkittur1998@gmail.com', '8660378470', '', '', 'AutoCad', '', '', '', 1),
(122, 'Sameena Kokkargol', 'sameenakokkargol@gmail.com', '9113244974', '', '', 'AutoCad', '', '', '', 1),
(123, 'Ashwini Pujari', 'ashwinipujari333@gmail.com', '8971511564', '', '', 'Advanced Excel Program', '', '', '', 0),
(124, 'Abhishek Bhavikatti', 'abhishekbhavikatti1234@gmail.com', '9035361728', '', '', 'Python Programming', '', '', '', 1),
(125, 'Sukhavinder Singh S Thakur', 'sukhavindersing@gmail.com', '8861139181', '', '', 'C Programming', '', '', '', 1),
(126, 'khalilulla Hussaini', '0603khalil@gmail.com', '9731883071', '', '', 'AutoCad', '', '', '', 1),
(127, 'KHALILULLA HUSSAINI', '0603khalil@gmail.com', '9731883071', '', '', 'AutoCad', '', '', '', 1),
(128, 'KHALILULLA HUSSAINI', '0603khalil@gmail.com', '9731883071', '', '', 'AutoCad', '', '', '', 0),
(129, 'Bhavana', 'bhavana.hr123@gmail.com', '9591518960', 'BE', '', '', 'Digital Marketing', '', '', 0),
(130, 'Basavatej Patil', 'patilbasavatejnpatil@gmail.com', '9743980119', '', '', 'C Programming', '', '', '', 1),
(131, 'Sampreet S', 'sampreetss17@gmail.com', '9980324059', '', '', 'Python Programming', '', '', '', 1),
(132, 'Sooraj', 'surajt028@gmail.com', '7899707498', '', '', '', '', '', '', 1),
(133, 'Pushpalata Mannikeri', '', '7975045164', '', '', 'Microsoft .net', '', '', '', 1),
(134, 'Athar Parvez', 'atharparvez844@gmail.com', '8073764334', '', '', 'Python Programming', '', '', '', 1),
(135, 'Rahul S Pattar', '', '8861536584', '', '', 'Mechanical Combo', '', '', '', 1),
(136, 'Sharvari Teggi', '', '7892972625', '', '', 'Python Programming', '', '', '', 1),
(137, 'Meghraj', '', '9663048858', '', '', 'Python Programming', '', '', '', 1),
(138, 'Rudragouda Patil', 'rudragoudapatil260@gmail.com', '8073239820', '', '', '', 'Python Programming', '', '', 1),
(139, 'Yashraj Pai', 'paiyashraj07@gmail.com', '8073711095', '', '', 'Python Programming', '', '', '', 1),
(140, 'Neelambika Patil', 'renukapatilpatil1974@gmail.com', '7975356828', '', '', 'Python Programming', '', '', '', 1),
(141, 'Hemanth Adammanavar', '', '9945808310', '', '', 'Python Programming', '', '', '', 1),
(142, 'Shruti R H', '', '9148515264', '', '', 'Python Programming', '', '', '', 1),
(143, 'Subhas M', '', '9901523048', '', '', 'Web Design and Development', '', '', '', 1),
(144, 'Vanita', '', '7337897128', '', '', 'Web Design and Development', '', '', '', 1),
(145, 'Basu Rachannavar', '', '9113928055', '', '', 'C Programming', '', '', '', 1),
(146, 'Rajeshwari katti', '', '7337653908', '', '', 'AutoCad', '', '', '', 1),
(147, 'Daneshwari Wani', 'danuwani287@gmail.com', '7204734162', '', '', 'Python Programming', '', '', '', 1),
(148, 'Chetan Angadi', 'chetanandagi07@gmail.com', '9972329158', '', '', 'Python Programming', '', '', '', 1),
(149, 'Ambika Desai', '', '8762146920', '', '', 'AutoCad', '', '', '', 1),
(150, 'Amogh g t', '', '6362590757', '', '', 'Basics of Computers', '', '', '', 1),
(151, 'Vasudha', 'dadegalvasudha@gmail.com', '9945187425', '', '', 'Web Design and Development', '', '', '', 0),
(152, 'M Arjun Babu', 'medisettykrishnaarjun@gmail.com', '6362655765', '', '', 'C Programming', '', '', '', 1),
(153, 'Keshav chowdary', 'keshavchowdary143@gmail.com', '7338127343', '', '', 'C Programming', '', '', '', 1),
(154, 'Kavita Mathapati', '', '8088130061', '', '', 'Web Design and Development', '', '', '', 1),
(155, 'Sakshi Kampli', 'sakshsk01@gmail.com', '8310787715', '', '', 'C Programming', '', '', '', 0),
(156, 'Pavan Annigeri', '', '9902635977', '', '', 'Python with Machine Learning', '', '', '', 0),
(157, 'Sneha', '', '8296723688', '', '', 'Core Java', '', '', '', 0),
(158, 'Manjunath', 'manjuck37@gmail.com', '8431703784', '', '', 'Revit Designing Software', '', '', '', 1),
(159, 'Harish Chavan', '', '7760758852', '', '', 'Electrical AutoCAD', '', '', '', 0),
(160, 'Sunil A Shivanagi', 'anilshivangi2001@gmail.com', '7975066491', '', '', 'Basics of Computers', '', '', '', 1),
(161, 'Ayaz kagazi', '', '8951634603', '', '', 'Electrical AutoCAD', '', '', '', 0),
(162, 'Mahesh Gudadar', 'maheshyallapa123@gmail.com', '9741609095', '', '', 'Basics of Computers', '', '', '', 1),
(163, 'Ujwal S Bhavikatti', 'bhavikattiujwal@gmail.com', '8618785314', '', '', 'C Programming', '', '', '', 0),
(164, 'Deepak kariappagowdar', 'drk703846@gmail.com', '7026638195', '', '', 'Web Design and Development', '', '', '', 1),
(165, 'Sachin Shindhe', 'sachinshindhe20@gmail.com', '8431789660', '', '', 'Web Design and Development', '', '', '', 1),
(166, 'Anjali', '', '9019271727', '', '', 'Core Java', '', '', '', 1),
(167, 'Koustubh Shindhe', '', '9110210094', '', '', 'Python Programming', '', '', '', 1),
(168, 'Tasmiya M Shaikh', 'tasmiyas860@gmail.com', '8660644826', '', '', 'Web Design and Development', '', '', '', 1),
(169, 'Varsha Patil', 'varshapatil1932002@gmail.com', '8792448568', '', '', 'Data Structures', '', '', '', 0),
(170, 'Maitri Sulakhe', '', '8197915498', '', '', 'C Programming', '', '', '', 0),
(171, 'Preeti Vibhuti', 'preetivibhuti085@gmail.com', '9110266307', '', '', 'Web Design and Development', '', '', '', 1),
(172, 'Dhrithi J', 'dhrithijinaga@gmail.com', '7349671511', '', '', 'Basics of Computers', '', '', '', 1),
(173, 'Jafer Sadiq', '', '8970989909', '', '', 'Python Programming', '', '', '', 1),
(174, 'Pooja B Mandre', '', '9900577027', '', '', 'Web Design and Development', '', '', '', 1),
(175, 'V V Patil', '', '9741379801', '', '', 'Core Java', '', '', '', 1),
(176, 'Akshay', '', '8296572177', '', '', 'C Programming', '', '', '', 1),
(177, 'Nagraj Tuppad', 'nagrajtuppad048@gmail.com', '8217020732', '', '', 'AutoCad', '', '', '', 1),
(178, 'Vinayak Patil', 'patilvinayak615@gmail.com', '7899121468', '', '', 'Android App Development', '', '', '', 1),
(179, 'Amrut kalkeri', 'kalkeriamrut1605@gmail.com', '7406425700', '', '', 'Web Design and Development', '', '', '', 1),
(180, 'Vishnu Hiremath', 'vishnukhiremath@gmail.com', '7676417049', '', '', 'Web Design and Development', '', '', '', 1),
(181, 'Prasad P Belgaumkar', 'prasadmanju1011@gmail.com', '9845630458', '', '', 'C Programming', '', '', '', 1),
(182, 'Sheetal Jain', 'sheetaljain@gmail.com', '8105662805', '', '', 'Basics of Computers', '', '', '', 1),
(183, 'Jayant Pujar', '', '8088097956', '', '', 'Core Java', '', '', '', 1),
(184, 'Shreya Jambagi', 'shreya.jambagi@gmail.com', '8431482142', '', '', 'Advanced Excel Program', '', '', '', 1),
(185, 'Premkishan R A', '', '9686665759', '', '', 'C Programming', '', '', '', 0),
(186, 'Tarun Karigar', '', '9972548514', '', '', 'C Programming', '', '', '', 0),
(187, 'Ankita Wagmore', '', '7619155581', '', '', 'Web Design and Development', '', '', '', 1),
(188, 'Veena Harikantra', '', '9113564481', '', '', 'Web Design and Development', '', '', '', 0),
(189, 'Ravi Maragal', 'ravimmaragal04@gmail.com', '7259689268', '', '', 'Web Design and Development', '', '', '', 1),
(190, 'Raghu', '', '9916683887', '', '', 'Web Design and Development', '', '', '', 1),
(191, 'Mahesh kalyagol', '', '9113643168', '', '', 'Mechanical Combo', '', '', '', 1),
(192, 'Keerti Badiger', 'keertibadiger141@gmail.com', '6364476715', '', '', 'Web Design and Development', '', '', '', 1),
(193, 'Rakshita Ingalagi', 'raskshitaingalagi2003@gmail.com', '8762276003', '', '', 'Web Design and Development', '', '', '', 1),
(194, 'Vidya Patil', 'patilviya334@gmail.com', '9110240864', '', '', 'AutoCad', '', '', '', 1),
(195, 'Sushma Sindhe', 'sushmasindhe24april@gmail.com', '8105972652', '', '', 'AutoCad', '', '', '', 1),
(196, 'Alfia Khan', 'khanalfia400@gmail.com', '9743079561', '', '', 'Web Design and Development', '', '', '', 1),
(197, 'Adarsh Terikeri', 'adashterikeri@gmail.com', '9738728990', '', '', 'Python Programming', '', '', '', 1),
(198, 'Praveen', '', '9148071567', '', '', 'Web Design and Development', '', '', '', 1),
(199, 'Vaishnavi Sarjoshi', 'vaishnavisarjoshi18@gmail.com', '7483716639', '', '', 'Web Design and Development', '', '', '', 0),
(200, 'R R(Rapa U)', '', '9380683319', '', '', 'Web Design and Development', '', '', '', 1),
(201, 'Maruti Naik', '', '7760747947', '', '', 'Road Design Softwares', '', '', '', 1),
(202, 'Muskan Shaikh', 'muskanshk441@gmail.com', '8904158692', '', '', 'Web Design and Development', '', '', '', 1),
(203, 'Rachutesh Jinaga', '', '9591748575', '', '', 'Graphics Designing', '', '', '', 1),
(204, 'Rakesh naik', 'rakeshnaik7673@gmail.com', '7975743902', '', '', 'C Programming', '', '', '', 1),
(205, 'Mahesh Angadi', 'maheshmangadi27@gmail.com', '7795428836', '', '', 'Basics of Computers', '', '', '', 0),
(206, 'Hifza Shaikh', 'info@dharwadhubballitutor.com', '09741237334', '', '', '', '', 'SQL', '', 1),
(207, 'Abhiram', '', '9353730432', '', '', 'Web Design and Development', '', '', '', 1),
(208, 'Samuel', '', '9513601992', '', '', 'Web Design and Development', '', '', '', 1),
(209, 'Nutan Kumar', 'nuthan931@gmail.com', '07816968691', 'Diploma in mechanical engineering', '', '', 'Digital Marketing', '', '', 1),
(210, 'Nuthan', '', '7816968691', '', '', 'Mechanical Combo', '', '', '', 1),
(211, 'Kartik V Hiremath', 'hiremathkartik33@gmail.com', '7022273757', '', '', 'Android App Development', '', '', '', 1),
(212, 'Kedar Mallade', 'malladekedar7@gmail.com', '8668349793', '', '', 'Python Programming', '', '', '', 1),
(213, 'Dhanaraj P G', 'solutionhub008@gmail.com', '9743772291', '', '', '', '', '', 'WEB DESIGNING AND DEVELOPMENT', 1),
(214, 'Dhanaraj P G', 'solutionhub008@gmail.com', '9743772291', '', '', '', '', '', 'MOBILE APP DEVELOPMENT', 1),
(215, 'Manjunath Nandimani', 'nandimanjunath2019@gmail.com', '9448858995', '', '', 'Python with Machine Learning', '', '', '', 1),
(216, 'Manjunath Nandimani', 'nandimanjunath2019@gmail.com', '9448858995', '', '', 'Python with Machine Learning', '', '', '', 1),
(217, 'Megha Marigoudar', '', '9110686577', '', '', 'C Programming', '', '', '', 0),
(218, 'Afreen Begum', 'afreenshoaib15@gmail.com', '7996236006', '', '', 'Web Design and Development', '', '', '', 1),
(219, 'Faiz Byhatti', 'faizbyhatti@gmail.com', '8904524375', '', '', 'Python with Machine Learning', '', '', '', 1),
(220, 'Fouziya I Byali', 'fouziyabyalli@gmail.com', '8073446986', '', '', 'Web Design and Development', '', '', '', 0),
(221, 'Abhishek Deshpande', '', '7338348401', '', '', 'Python Programming', '', '', '', 1),
(222, 'Venkatesh Shivapuji', 'vsshivapuji@gmail.com', '9341144100', '', '', '', '', '', 'Digital Marketing', 1),
(223, 'Varun Kapali', 'kapalivarun17@gmail.com', '9986447452', '', '', 'C Programming', '', '', '', 0),
(224, 'Kiran M Patted', 'kiranpatted072@gmail.com', '6361873647', '', '', 'Digital Media Marketing', '', '', '', 0),
(225, 'Anoop H C', 'anoophc18@gmail.com', '9148894801', '', '', 'Basics of Computers', '', '', '', 0),
(226, 'Pooja Chavan', 'poojauchavan979@gmail.com', '6362467551', '', '', 'Placement Assistance', '', '', '', 1),
(227, 'veeresh', '', '8296403589', '', '', 'C Programming', '', '', '', 1),
(228, 'Renuka', '', '7676170382', '', '', 'Web Design and Development', '', '', '', 1),
(229, 'Anita Nayak', '', '8618118461', '', '', 'Basics of Computers', '', '', '', 1),
(230, 'Darshan Jadhav', 'dj006872@gmail.com', '9902911772', '', '', 'Basics of Computers', '', '', '', 0),
(231, 'Anita Kadam', '', '8861683510', '', '', 'Web Design and Development', '', '', '', 1),
(232, 'Nanda F Karigar', 'nandakarigar18@gmail.com', '8546825380', '', '', 'Web Design and Development', '', '', '', 0),
(233, 'Harsha Jigajinni', 'jigajinniharsha@gmail.com', '8792111252', '', '', 'Web Design and Development', '', '', '', 0),
(234, 'Ashmeera', 'ashmiramidhat1998@gmail.com', '9986451349', '', '', 'Web Design and Development', '', '', '', 1),
(235, 'Prakash Jaggal', 'prakashjaggal@gmail.com', '7975136598', '', '', 'Web Design and Development', '', '', '', 1),
(236, 'Madan Ghatge', '', '9739460930', '', '', 'Python Programming', '', '', '', 1),
(237, 'Parikshith K H', 'nirikshithkh@gmail.com', '8310108519', '', '', 'Placement Assistance', '', '', '', 1),
(238, 'Sagar Badiger', '', '6366308232', '', '', 'Basics of Computers', '', '', '', 1),
(239, 'Arun Kumar', 'arunkumaremmiyavar@gmail.com', '8095086142', '', '', 'Web Design and Development', '', '', '', 0),
(240, 'Nehal Mane', 'nmmane3648@gmail.com', '8217632984', '', '', 'Mechanical Combo', '', '', '', 1),
(241, 'Ravi Murnal', 'ravi.murnal2@gmail.com', '8951959397', '', '', 'Revit Designing Software', '', '', '', 1),
(242, 'Raghavendra Bhat', '', '9900360639', '', '', 'AutoCad', '', '', '', 1),
(243, 'Anusha Raichur', 'anusharaichur72@gmail.com', '9972685173', '', '', 'Data Structures', '', '', '', 1),
(244, 'Mahadevi B', 'mahadevisb1213@gmail.com', '9740465172', '', '', 'Data Structures', '', '', '', 1),
(245, 'shruti bhat', 'bhatshruti99@gmail.com', '8762048987', '', '', '', 'Web Designing and Development', '', '', 1),
(246, 'Veeresh', 'veeruvirat1669@gmail.com', '9110899117', '', '', 'Web Design and Development', 'SELECT YOUR INTEREST', '', '', 1),
(247, 'Abhishek Shindhe', 'abhishekhagalore@gmail.com', '8073762334', '', '', 'Core Java', '', '', '', 1),
(248, 'Manoj Holeyache', '', '9008015017', '', '', 'Web Design and Development', '', '', '', 1),
(249, 'Prasad', '', '7996592596', '', '', 'Web Design and Development', '', '', '', 1),
(250, 'BASAVARAJ VANNUR Vannur', 'bybasavaraj198@gmail.com', '9019066621', 'b e', '', '', 'Python Programming', '', '', 1),
(252, 'Mukund Deshpande', 'mukund.maths@gmail.com', '9620848292', '', 'Walk-in', '', '', '', 'Branding', 1),
(253, 'Noorjahan Ballari', 'noorjahanballari@gmail.com', '8105137876', '', '', 'Web Design and Development', '', '', '', 1),
(254, 'Radha Maraddi', '', '9591343049', '', 'Walk-in', 'AutoCad', '', '', '', 0),
(257, 'Sonali', 'sonali@gmail.com', '9620869214', '', '', 'AutoCad', '', '', '', 1),
(258, 'Kuber jupri', 'kuberjupri6@gmail.com', '9353241922', '', 'Google', 'Web Design and Development', '', '', '', 1),
(260, 'Swathi B K', 'swathibk95@gmail.com', '7019962692', '', 'Facebook', '', 'Python Programming', '', '', 1),
(261, 'Sachit Reddy', 'pbpatil0108@gmail.com', '9481820279', '', 'Google', 'Basics of Computers', '', '', '', 0),
(262, 'Mahesh M', 'mahesh.i.hi121@gmail.com', '8618511699', '', 'Walk-in', 'Web Designing and Development', '', '', '', 1),
(263, 'Rahul Mathad', 'mathadrahul8055@gmail.com', '6360136167', '', '', 'C Programming', '', '', '', 0),
(264, 'Hrithik Koravar', 'hrithikkoravar@gmail.com', '8147249949', '', '', 'C Programming', '', '', '', 0),
(265, 'Abhishek Hanabaratti', 'abhishekhanabaratti@gmail.com', '8147003877', '', '', 'C Programming', '', '', '', 0),
(266, 'Amrut Haladi', 'haladiamrut@gmail.com', '7353491458', '', 'Google', 'Python Programming', '', '', '', 0),
(267, 'Laxmi Lamani', 'lamanilakshmi88@gmail.com', '6364722642', '', '', 'Digital Media Marketing', '', '', '', 0),
(268, 'Harshita Vani', 'harshitavani@gmail.com', '9353743067', '', 'Walk-in', 'Advanced Excel Program', '', '', '', 0),
(269, 'Yogesh Lamani', 'yogeshlamani2@gmail.com', '8618679261', '', 'Walk-in', 'C++ Programming', '', '', '', 1),
(270, 'Spurit Jambgi', 'suprijambgi@gmail.com', '6363773130', '', 'Walk-in', 'C++ Programming', '', '', '', 1),
(271, 'Manjunath Olekar', 'olekarmanjunath912@gmail.com', '7996610046', '', 'Walk-in', 'C++ Programming', '', '', '', 1),
(272, 'Yashoda Sogi', 'yashodasogi@gmail.com', '9902659968', '', '', '', 'Python Programming', '', '', 0),
(273, 'Vivekanand Barakali', 'vivekanandbarakali1998@gmail.com', '9036327907', '', 'Google', 'Basics of Computers', '', '', '', 1),
(274, 'Safa', 'safaarshiya58@gmail.com', '9591469958', '', 'Google', 'Digital Media Marketing', '', '', '', 0),
(275, 'Gurunath M A', '', '8105744414', '', 'Walk-in', 'AutoCad', '', '', '', 1),
(276, 'Pavithra Bhoomangoudar', 'pavithrabhoomangoudar@gmail.com', '9113514325', '', 'Walk-in', 'BCAProject', '', '', '', 1),
(277, 'Namrata Kalabhavi', 'namratakalabhavi@gmail.com', '8073314805', '', 'Walk-in', 'BCAProject', '', '', '', 1),
(278, 'Mangla Patil', 'patilmangla738@gmail.com', '9148297747', '', 'Walk-in', 'BCAProject', '', '', '', 0),
(279, 'Preeti Pujar', 'preetipujar58@gmail.com', '8971745896', '', 'Walk-in', 'BCAProject', '', '', '', 0),
(280, 'Mahantesh N K', 'mkurubar141@gmai.com', '7996678514', '', 'Walk-in', 'Digital Media Marketing', '', '', '', 1),
(281, 'Gurupadeshwar Kanti', 'gurupadeshk123@gmail.com', '7411252231', '', 'Walk-in', 'BCAProject', '', '', '', 1),
(282, 'Ankit kulkarni', 'ankitkulkarni186@gmail.com', '9449388048', '', 'Walk-in', 'BCAProject', '', '', '', 1),
(283, 'Rahul Suresh Balbatti', 'rahulbalbatti032@gmail.com', '9108080161', '', '', 'MCA-Project', '', '', '', 1),
(284, 'Divyank Rahate', 'divyanknr@yahoo.com', '9731367335', '', 'Google', 'BCAProject', '', '', '', 1),
(285, 'Shreyas Desai', 'shreyas.desai6@gmail.com', '8884684439', '', 'Google', 'BCAProject', '', '', '', 1),
(286, 'Sandesh Patil', 'bhatsandesh2001@gmail.com', '7259561615', '', '', 'BCAProject', '', '', '', 1),
(287, 'Akshata T B', 'akshatatb1932@gmail.com', '6363042577', '', 'Walk-in', 'Advanced Excel Program', '', '', '', 0),
(288, 'Pooja Patil', 'patildpooja152@gmail.com', '9535693777', '', '', 'C Programming', '', '', '', 0),
(289, 'Pavitra B S', 'pavitrabs68@gmail.com', '6360857355', '', '', 'C Programming', '', '', '', 1),
(290, 'Vikas G Mule', 'vikasmule365@gmail.com', '9035853806', '', '', 'C Programming', '', '', '', 1),
(291, 'Allahbaksh shaikh', 'alishekh7941@gmail.com', '8088802498', '', 'Walk-in', 'AutoCad', '', '', '', 1),
(292, 'Kiran Sarjakar', 'kiransarjakar@gmail.com', '9902680032', '', 'Walk-in', 'AutoCad', '', '', '', 1),
(293, 'Arun Kumar Medar', 'arunmedar3@gmail.com', '7204835442', '', 'Walk-in', 'AutoCad', '', '', '', 1),
(294, 'Rabiya Yadalli', 'rabiyayadalli20@gmail.com', '9353690573', '', 'Google', '', 'Web Designing and Development', '', '', 1),
(295, 'Ashwini N T', 'ashwinitoranagatti10@gmail.com', '8867273981', '', '', 'BCAProject', '', '', '', 1),
(296, 'Bhagyashree V Kotwal', 'bhagyashreekotwal7@gmail.com', '9900505606', '', '', 'BCAProject', '', '', '', 1),
(297, 'Shilpa Kamar', 'badiger2205@gmail.com', '8310267481', '', 'Google', 'Software Testing', '', '', '', 1),
(298, 'Vandana Naik', 'naikvandana293@gmail.com', '8105190950', '', '', 'Digital Media Marketing', '', '', '', 1),
(299, 'Pramod Alamel', 'pramodalmel@gmail.com', '8088850229', '', 'Walk-in', 'Web Design and Development', '', '', '', 1),
(300, 'Srujan Kumar Sungar', 'surjankumar2003@gmail.com', '7829693378', '', 'Walk-in', 'Web Design and Development', '', '', '', 1),
(301, 'Praveen Bhusaraddi', 'praveenhv6364@gmail.com', '6362237616', '', 'Walk-in', 'Web Design and Development', '', '', '', 1),
(302, 'Gayatri maragal', '', '8050342696', '', '', 'C Programming', '', '', '', 1),
(303, 'Shivani Wadkar', 'shivaniwadkar71@gmail.com', '9141476006', '', '', 'Basics of Computers', '', '', '', 1),
(304, 'Rakshita Yadali', 'rakshita.yadali@gmail.com', '8660385907', '', 'Walk-in', 'Basics of Computers', '', '', '', 1),
(310, 'sunil ganji', 'suniganji96@gmail.com', '9066653217', '', 'Google', 'AutoCad', '', '', '', 1),
(311, 'Rakshit A Shetty', 'rakshitshetty2185@gmail.com', '7204590020', '', 'Walk-in', 'Python Programming', '', '', '', 1),
(312, 'Prajawal Ry', 'prajawalyereshimi3751@gmail.com', '9972409171', '', '', '', '', '', '', 1),
(313, 'umesh sheelimath', 'umeshsheelimath@gmail.com', '6363510243', '', 'Walk-in', 'C Programming', '', '', '', 0),
(314, 'Prajwal M Salimath', 'prajwalsalimath2004@gmail.com', '7619342132', '', 'Google', 'Basics of Computers', '', '', '', 0),
(315, 'prajwal s karigoudar', 'prajwalkarigoudar163@gmail.com', '9972580183', '', 'Google', 'Basics of Computers', '', '', '', 0),
(316, 'Gurunath SJ', 'gurunathsj@gmail.com', '6362699617', '', 'Walk-in', 'Basics of Computers', '', '', '', 1),
(317, 'Vishwa M Badachi', 'manojbadachi@gmail.com', '9845036526', '', 'Google', 'C Programming', '', '', '', 0),
(318, 'Shashank Patil', 'shashankpatil1728@gmail.com', '7204072582', '', '', 'AutoCad', '', '', '', 1),
(319, 'Aishwarya Kammar', 'aishwaryakammar8@gmail.com', '8073902600', '', '', 'AutoCad', '', '', '', 1),
(320, 'Pritviraj Shinde', 'pritvirajshinde811@gmail.com', '8123319492', '', 'Walk-in', 'Python Programming', '', '', '', 1),
(321, 'hari priya', 'hari.hp29@gmail.com', '8015043526', '', '', 'Data Science', '', '', '', 1),
(322, 'Atharv Bennur', 'atharvbennur@gmail.com', '8618112157', '', '', 'C Programming', '', '', '', 0),
(323, 'Amit Gudadur', 'amitgudadur12@gmail.com', '8073209805', '', 'Walk-in', 'Digital Media Marketing', '', '', '', 1),
(324, 'Karthik B', 'shivakumarb725@gmail.com', '8792620575', '', '', 'Digital Media Marketing', '', 'Digital Marketing', '', 1),
(325, 'Abhishek Patil', 'abhishekpatil1501@gmail.com', '9743880335', '', '', 'Core and Advanced JAVA', '', '', '', 0),
(326, 'Chandrashekhar Ambanna', 'chadruambanna@gmail.com', '9353963912', '', '', 'Core and Advanced JAVA', '', '', '', 0),
(327, 'Nivedita Panchagavi', 'niveditakrishnapanchgavi@gmail.com', '7619164530', '', '', 'C Programming', '', '', '', 0),
(328, 'Komal Giriyappanavar', 'komalgiri888@gmail.com', '8884704281', '', '', 'Basics of Computers', '', '', '', 0),
(329, 'Spoorti V Patil', 'dummy@gmail.com', '9902269253', '', 'Referral', 'Basics of Computers', '', '', '', 0),
(330, 'D Pavithra', 'dummy@gmail.com', '8884593108', '', 'Google', 'Python Programming', '', '', '', 1),
(331, 'Datta Niranjal', 'mathnandikol@gmail.com', '8884099588', '', 'Walk-in', 'Digital Media Marketing', '', '', '', 1),
(332, 'Kavya Yemmetti', 'kavyarani1256@gmail.com', '6363607202', '', '', 'C Programming', '', '', '', 0),
(333, 'Netravati Sataraddi', 'dummy@gmail.com', '9980643579', '', '', 'Basics of Computers', '', '', '', 1),
(334, 'Sangamesh Bolishetti', 'sbolishetti5@gmail.com', '8105279598', '', 'Referral', 'Python Programming', '', '', '', 1),
(335, 'Achyut Mutalik', 'achutmutlik15@gmail.com', '8050581933', '', 'Referral', 'Python Programming', '', '', '', 0),
(336, 'Samarath Shetty', 'samarthshetty3999@gmail.com', '9845061994', '', 'Referral', 'Python Programming', '', '', '', 0),
(337, 'Sanika Buwa', 'girisonika90@gmail.com', '8151090944', '', '', '', '', '', '', 1),
(338, 'Bhoomika Dambal', 'dummy@gmail.com', '7411824674', '', '', 'Basics of Computers', '', '', '', 1),
(339, 'Alfiya Nadaf', 'nadafalfiya57@gmail.com', '9353870082', '', '', 'Basics of Computers', '', '', '', 1),
(340, 'Darshan Bankar', 'darshanbanakar2006@gmail.com', '8217415785', '', '', 'Basics of Computers', '', '', '', 1),
(341, 'pragati', 'dummy@gmail.com', '7760554551', '', 'Google', 'Web Designing and Development', '', '', '', 1),
(342, 'prasanna lakshmi', 'prasanna.bellary@gmail.com', '7276088228', '', 'Google', 'Python Programming', '', '', '', 0),
(343, 'OM Ashok Gaikwad', 'omg46929@gmail.com', '7204847501', '', 'Google', 'C Programming', '', '', '', 0),
(344, 'Joseph Dsouza', 'dummy@gmail.com', '8217785456', '', 'Google', 'Python Programming', '', '', '', 0),
(345, 'Muskaan Singh', 'muskaansingh5520@gmail.com', '9591603772', '', 'Walk-in', 'Python Programming', '', '', '', 1),
(346, 'Pratiksha Naik', '', '6366331324', '', 'Walk-in', 'Python Programming', '', '', '', 1),
(347, 'Spoorti NA', 'spoortina0128@gmail.com', '6361422619', '', '', 'C Programming', '', '', '', 1),
(348, 'Karthik Pattar', 'karthikpattar123@gmail.com', '8073238072', '', 'Referral', 'Basics of Computers', '', '', '', 0),
(349, 'Mukund V B', 'mukundvb17@gmail.com', '6361340957', '', 'Google', 'C++ Programming', '', '', '', 1),
(350, 'Vinayak Patil', 'vinni.patil33@gmail.com', '89044 82830', '', '', 'Software Testing', '', '', '', 1),
(351, 'Sadiq', 'sadiqb62@gmail.com', '9035207658', '', '', 'Software Testing', '', '', '', 1),
(352, 'Pooja M Nekar', 'poojanekar14@gmail.com', '9448515257', '', 'Google', 'C Programming', '', '', '', 1),
(353, 'Sanjana S J', 'jsanjana023@gmail.com', '7795280098', '', 'Referral', 'C Programming', '', '', '', 1),
(354, 'Malatesh havalgeri', 'malteshhavalgeri2002@gmail.com', '7338517840', '', '', 'Basics of Computers', '', '', '', 1),
(355, 'Avinash', 'avinash12nayak@gmail.com', '9886383364', '', '', 'Python Programming', '', '', '', 1),
(356, 'Yusuf SH', 'yusufbiohalkarni@gmail.com', '9740692004', '', '', 'Digital Media Marketing', '', '', '', 0),
(357, 'Asif Koujaganur', 'asif0836@gmail.com', '9886591563', '', '', 'Python Programming', '', '', '', 1),
(358, 'Rajneesh Hebballi', 'rajneeshhebballi92@gmail.com', '7349632248', '', '', '', 'Python Programming', '', '', 1),
(359, 'Shreedhar Nadagoudar', 'shreedharnadagoudra7795@gmail.com', '9986988650', '', 'Walk-in', 'Digital Media Marketing', '', 'Digital Marketing', '', 1),
(360, 'Mussarat', 'dummy@gmail.com', '8762213936', '', '', 'Web Designing and Development', '', '', '', 1),
(361, 'Saba Maradgi', 'sabamaradgi13@gmail.com', '7204798601', '', 'Walk-in', 'Python Programming', '', '', '', 1),
(362, 'Iqbal Matradgi', 'iqbalmaradgi@gmai.com', '8904679699', '', 'Walk-in', 'C Programming', '', '', '', 1);

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
(14, 102),
(12, 99),
(14, 103),
(14, 101),
(12, 95),
(14, 105),
(12, 97),
(12, 98),
(12, 90),
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
`NUMBER` bigint
,`Trainings` varchar(40)
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
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

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
(171, 349, '2022-08-30 00:00:00', 'In Progress', 'We will start class for him for c++ once pooja has completed her c course', '2022-08-29 23:31:24', 'info@acedecors.in');

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
`Course` varchar(200)
,`DueDate` date
,`Id` int
,`Name` varchar(100)
,`PaidFees` decimal(65,0)
,`TotalFees` int
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
`AmountCollected` decimal(65,0)
,`MONTH` varchar(32)
,`monthNum` int
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(156, 'There Has Been an enquiry for Training', 1, 'trainings-tab-content');

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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postId`, `postTitle`, `postUrl`, `LinkUnder`, `appearOnHome`, `postDescription`, `postCreatedOn`, `postCreatedBy`, `titleTag`, `keywords`, `modifiedBy`) VALUES
(62, 'Website Marketing', '/dharwadhubballitutor/Website-Marketing', 2, '', '<p>Website marketing meansÂ promoting a business website in order to bring in more visitors. These visitors should be people who are likely to purchase the business\'s services or products. More visitors means more opportunities to try to convince potential customers to buy. \n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li><strong>Easy navigation:</strong> People prefer websites that are easy to use and navigate.</li>\n<li><strong>Trendy, intuitive design and user experience:</strong> Trendy web design elements can attract your target audience to your site. Beautiful and appealing designs enhance website content and establish a good reputation for your brand.</li>\n<li><strong>Relevant, authoritative website content:</strong> Accurate content tailored to a specific audience establishes brand authority for businesses. content is a priority for most people, companies must understand what people want to watch or read to understand their intent.</li>\n<li><strong>Product visuals and descriptions:</strong> Consumers think product and services visuals and descriptionsÂ are equally useful when they visit a companyâ€™s website. This indicates that consumers are looking for both attractive and informative content when browsing company websites. Businesses should make sure to remember that visuals are a key website feature that shouldnâ€™t be ignored.</li>\n<li><strong>Social media as an extension of the business website:</strong> Links to social media accounts are important for people browsing a companyâ€™s website. Especially for busy small businesses, social media may be a more convenient way to appeal to their audience than other website features more demanding of time.Â </li>\n<li><strong>Company blog:</strong> When it comes to website content, people prefer product descriptions and visualizations over company blogs.</li>\n</ul>\n', '2022-03-04 16:23:55', 'info@acedecors.in', 'Website Marketing', 'Website Marketing', 'info@acedecors.in'),
(38, 'Python Programming', '/dharwadhubballitutor/Python-Programming', 2, '', '<p>Python is an interpreted, high-level and general purpose programming language. <span style=\"color: #4d5156;\">Its design philosophy emphasizes code readability with the use of significant indentation. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small- and large-scale projects.</span> \n<br />\n</p>\n<h2>It is being used for:</h2>\n<ul>\n<li>Development of Website (server-side).</li>\n<li>Software Development.</li>\n<li>In mathematics.</li>\n<li>System Scripting.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Advantages:</h2>\n<ul>\n<li>Easy to Read, Learn and Write</li>\n<li>Improved Productivity</li>\n<li>Interpreted Language</li>\n<li>Dynamically Typed</li>\n<li>Free and Open-Source</li>\n<li>Portability</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li><strong>Easy Language: </strong>Python has aÂ smooth learning curve. It is easy to learn. Python has aÂ simple syntaxÂ and Python code is easy to understand. Since itâ€™sÂ easy to understand, you can easily read and understand someone elseâ€™s code. Python is alsoÂ easy to writeÂ because of its simple syntax.</li>\n<li><strong>Readable:</strong> <span style=\"color: #444444;\">Python usesÂ indentationÂ instead ofÂ curly braces, unlike other programming languages. This makes the code look clean and easier to understand.</span></li>\n<li><strong>Interpreted Language: </strong><span style=\"color: #444444;\">Python is an interpreted language. It comes with theÂ IDLE (Interactive Development Environment). This is an interpreter and follows theÂ REPL structure (Read-Evaluate-Print-Loop). It executes and displays the output of one line at a time.</span></li>\n<li><strong>Dynamically-Typed Language: </strong><span style=\"color: #444444;\">Python is notÂ statically-typedÂ like Java. You donâ€™t need to declare data type while defining a variable. The interpreter determines this at runtime based on the types of the parts of the expression. This is easy for programmers but can create runtime errors.</span></li>\n<li><strong>Object-Oriented:</strong> <span style=\"color: #444444;\">Python is object-oriented but supports both functional and object-oriented programming. Everything in Python is an object.</span></li>\n<li><strong>Open-Source:</strong> <span style=\"color: #444444;\">Python is open-source and the community is always contributing to it to improve it. It isÂ freeÂ and its source code isÂ freely availableÂ to the public. You can download Python from the official Python Website.</span></li>\n<li><strong>Large Standard Library:</strong> <span style=\"color: #444444;\">The standard library is large and has manyÂ packagesÂ andÂ modulesÂ with common and important functionality. If you need something that is available in this standard library, you donâ€™t need to write it from scratch. Because of this, you can focus on more important things.</span></li>\n<li><strong>Platform-Independent:</strong> <span style=\"color: #444444;\">Python is platform-independent. If you write a program, it will run on different platforms likeÂ Windows,Â MacÂ andÂ Linux. You donâ€™t need to write them separately for each platform.</span></li>\n<li><strong>Extensible and Embeddable: </strong><span style=\"color: #444444;\">Python isÂ extensible. You can use code from other languages like C++ in your Python code. It is alsoÂ embeddable. You can embed your Python code in other languages like C++.</span></li>\n<li><strong>GUI Support: </strong><span style=\"color: #444444;\">You can use Python to create GUI (Graphical User Interfaces). Python features a huge number of GUI frameworks available for it to variety of other cross-platform solutions. It binds to platform-specific technologies.</span></li>\n<li><strong>High-level Language:</strong> <span style=\"color: #444444;\">Python is a high-level language and C++ is mid-level. It is easy to understand and closer to the user. You donâ€™t need to remember system architecture or manage the memory.</span></li>\n</ul>\n<p>\n<br />\n</p>\n<h2>WHY LEARN PYTHON PROGRAMMING?</h2>\n<ul>\n<li>Pythonâ€™s popularity &amp; high salary</li>\n<li>Python is simple &amp; easy to learn</li>\n<li>Python is portable &amp; extensible</li>\n<li>Python is used in Data Science</li>\n<li>Python is used in scripting &amp; automation</li>\n<li>Python used with Big Data</li>\n<li>Python supports Testing</li>\n<li>Computer Graphics in Python</li>\n<li>Python used in Artificial Intelligence</li>\n<li>Python in Web Development</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 11:32:21', 'info@acedecors.in', 'Python Programming', 'Python Programming', 'info@acedecors.in'),
(57, 'Service Management', '/dharwadhubballitutor/Service-Management', 2, '', '<p>A system integral of supply chain management that contents actual company sales and the customer. The goal of service management is to maximize service supply chains. The purpose of service management are to reduce high costs by integrating products and services and keep inventory levels smaller. \n<br />\n</p>\n<h1>Benefits:</h1>\n<ul>\n<li><strong>Low Cost</strong>: Cost savings is the most common reason why businesses switch to a cloud-based solution.</li>\n<li><strong>Automatic Updates: </strong>Commercial off-the-shelf software begins to depreciate as soon as itâ€™s purchased. Costly and frequent updates may be required to keep your system safe and up-to-date.</li>\n<li><strong>Flexibility: </strong>Companies can switch between different types of service â€” Software as a Service (SaaS), Platform as a Service (PaaS) or Infrastructure as a Service (Iaas) at any time to meet their unique needs.</li>\n<li><strong>Security and Recovery: </strong>Cloud systems store your data in a secure and centralized off-site location, protected with encryption.</li>\n<li><strong>Accessibility: </strong>Cloud-based service management allows employees to access data from anywhere so that they can work on the go.</li>\n</ul>\n', '2022-02-24 12:38:04', 'info@acedecors.in', 'Service Management', 'Service Management', 'info@acedecors.in'),
(55, 'Infrastructure as a Service', '/dharwadhubballitutor/Infrastructure-as-a-Service', 2, '', '<p>Iaas is also known asÂ Hardware as a Service (HaaS). It allows customers to outsource their IT infrastructures such as servers, networking, processing, storage, virtual machines, and other resources. Customers access these resources on the Internet using a pay-as-per use model. \n<br />\n</p>\n<h2>Advantages:</h2>\n<ul>\n<li>Shared infrastructure</li>\n<li>Web access to the resources</li>\n<li>Pay-as-per-use model</li>\n<li>Focus on the core business</li>\n<li>On-demand scalability</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>Bandwidth</li>\n<li>IP addresses</li>\n<li>Load balancers</li>\n<li>Firewalls</li>\n<li>Desktops</li>\n<li>Internet connectivity</li>\n<li>Virtual server space</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 12:36:15', 'info@acedecors.in', 'Infrastructure as a Service', 'Infrastructure as a Service', 'info@acedecors.in'),
(56, 'Cloud Computing Architecture', '/dharwadhubballitutor/Cloud-Computing-Architecture', 2, '', '<p>Cloud architectureÂ is the way technology components combine to build a cloud, in which resources are pooled through virtualization technology and shared across a network. Cloud computing architecture is a combination ofÂ service-oriented architectureÂ andÂ event-driven architecture. \n<br />\n</p>\n<h2>Components of Cloud Computing Architecture:</h2>\n<ul>\n<li>Virtualization</li>\n<li>Infrastructure</li>\n<li>Hypervisor</li>\n<li>Management Software</li>\n<li>Deployment Software</li>\n<li>Network</li>\n<li>Cloud Server</li>\n<li>Cloud Storage</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li>Reduced physical computing space.</li>\n<li>Improved collaboration within and outside your organization.</li>\n<li>Easier remote access.</li>\n<li>Fewer human resources.</li>\n<li>Infinite scalability.</li>\n<li>Minimized computing operating costs.</li>\n<li>Reduced risk of onsite physical damage.</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 12:37:13', 'info@acedecors.in', 'Cloud Computing Architecture', 'Cloud Computing Architecture', 'info@acedecors.in'),
(54, 'Platform as a Service', '/dharwadhubballitutor/Platform-as-a-Service', 2, '', '<p>Platform-as-a-ServiceÂ offers the runtime environment for applications. It also offers development and deployment tools required to develop applications. PaaS has a feature ofÂ point-and-clickÂ tools that enables non-developers to create web applications. \n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li>Lower administrative overhead</li>\n<li>Lower total cost of ownership</li>\n<li>Scalable solutions</li>\n<li>More current system software</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Characteristics:</h2>\n<ul>\n<li>Browser based development environment</li>\n<li>Built-in security, scalability,Â andÂ web service interfaces</li>\n<li>Workflow, approval processes,Â and business rules</li>\n<li>It is easy to integrate PaaS with other applications on the same platform</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 12:35:20', 'info@acedecors.in', 'Platform as a Service', 'Platform as a Service', 'info@acedecors.in'),
(53, 'Software as a Service', '/dharwadhubballitutor/Software-as-a-Service', 2, '1', '<p>SaaS is also known as &quot;On-Demand Software&quot;. It is a software distribution model in which services are hosted by a cloud service provider. These services are available to end-users over the internet so, the end-users do not need to install any software on their devices to access these services. \n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>Multi-tenancy model</li>\n<li>Automated provisioning</li>\n<li>Single Sign On</li>\n<li>Subscription based billing</li>\n<li>High availability</li>\n<li>Elastic Infrastructure</li>\n<li>Data Security</li>\n<li>Application Security</li>\n<li>Rate limiting/QoS</li>\n<li>Audit</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Advantages:</h2>\n<ul>\n<li>SaaS is easy to buy</li>\n<li>One to Many</li>\n<li>Less hardware required for SaaS</li>\n<li>Low maintenance required for SaaS</li>\n<li>No special software or hardware versions required</li>\n<li>Multi device support</li>\n<li>API Integration</li>\n<li>No client-side installation</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 12:34:17', 'info@acedecors.in', 'Software as a Service', 'Software as a Service', 'info@acedecors.in'),
(52, 'V-Ray', '/dharwadhubballitutor/V-Ray', 2, '', '<p>V-Ray is designed for architecture. And it links seamlessly to the top 3D modeling and design software, including 3ds Max, Revit, Rhino, SketchUp, and Unreal, used in architectural visualization. The complete suite of tools from V-Ray helps you to render everything you can imagine, from early mass models to photorealistic photography, animation. \n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>Light Path Expressions</li>\n<li>ACEScgÂ color workflows</li>\n<li>V-Ray Materials â€” Sheen &amp; Coat</li>\n<li>Better randomization</li>\n<li>Light Mix/Compositing layer editor/Filmic Tone Mapping</li>\n</ul>\n<h2>Advantages of using V-Ray:</h2>\n<ul>\n<li>V-Ray is fast. Very fast</li>\n<li>Works perfectly with Rhino, 3DS Max and Sketch Up</li>\n<li>Extensive library of materials and resources</li>\n<li>A wide range of options</li>\n<li>Ability to easily follow excellent V-Ray specific online courses</li>\n<li>The best tool for realistic visualization</li>\n<li>Speed is excellent for producing fast animations</li>\n<li>Extremely photorealistic renderings</li>\n<li>Light and shadow</li>\n</ul>\n', '2022-02-24 12:24:36', 'info@acedecors.in', 'V-Ray', 'V-Ray', 'info@acedecors.in'),
(75, 'Hypermesh', '/dharwadhubballitutor/Hypermesh', 2, '', '<p>HyperMesh is used to generate and manage the largest and most complex models; it supports a wide variety of CAD and solver interfaces, making it a perfect solution for a majority of verticals and domains. The core competency of HyperMesh is the ability to generate high-quality mesh quickly. \n<br />\n</p>\n<h2>Benefits</h2>\n<ul>\n<li>Capable of producing meshes that are high quality made with no complexity.</li>\n<li>With comprehensive state of art technologies, evaluation and manufacturing, it reduces the development cost to manifolds.</li>\n<li>Virtual testing and superb designing makes it safe and secure with minimized risk factor.</li>\n<li>The test results obtained through virtual testing are valuable enough to facilitate collaborations and change decisions for further processes.</li>\n<li>Attain accurate and high quality meshes in fractions of seconds, since it supports batch meshing which makes it possible to develop several meshes at once. Flexible enough to accelerate your business abilities as per the changing conditions.</li>\n<li>Get a full access and level of control with the meshing algorithms. Comes with a built in automated supports which adds to its flexibility.</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-05 14:58:17', 'info@acedecors.in', 'Hypermesh', 'Hypermesh', 'info@acedecors.in'),
(51, 'Lumion', '/dharwadhubballitutor/Lumion', 2, '', '<p><span style=\"color: #202124;\">Lumion makes it refreshingly easy to transform any CAD model into an experience you can feel. You canÂ </span><strong style=\"color: #202124\">shape entire landscapes and add a world of context to your designs</strong><span style=\"color: #202124;\">. Make spaces feel real with fine-detailed nature, detailed skies and high-quality materials.</span> <span style=\"color: #202124;\">Lumion empowersÂ </span><strong style=\"color: #202124\">you to express your vision as an image, video or 360 panorama</strong><span style=\"color: #202124;\">, and it renders the results faster than most other 3D rendering programs out there. </span>\n<br />\n</p>\n<h2><span style=\"color: #202124;\">Benefits</span></h2>\n<ul>\n<li>YouÂ design better buildingsÂ with Lumion.</li>\n<li>Lumion enables a more efficient design process.</li>\n<li>LumionÂ reduces your costs.</li>\n<li>Lumion allowsÂ small architecture firmsÂ to compete on projects which were previously out of their league.</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 12:23:34', 'info@acedecors.in', 'Lumion', 'Lumion', 'info@acedecors.in'),
(50, 'Revit Structure', '/dharwadhubballitutor/Revit-Structure', 2, '', '<p>Autodesk Revit is Building data displaying programming for draftsmen, underlying designers, architects, and temporary workers. It permits clients to plan a structure and its parts in 3D, comment on the model with 2D drafting components and access building data from the structure models information base. \n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>Parametric components</li>\n<li>Work sharing</li>\n<li>Interoperability</li>\n<li>Annotation</li>\n<li>Global parameters</li>\n<li>Developer tools and solutions</li>\n<li>Generative Design in Revit</li>\n<li>Visibility settings and overrides</li>\n<li>3D massing for complex form-making</li>\n<li>Standard and custom family content</li>\n<li>Personalization and customization</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li>Parametric Modeling</li>\n<li>Automation</li>\n<li>Collaboration</li>\n<li>Coordination</li>\n<li>Scheduling</li>\n<li>Energy Analysis</li>\n<li>Rendering Presentation</li>\n<li>Construction Documentation</li>\n<li>Drawing Sheet Set-Up</li>\n<li>Cloud-Based Access</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 12:22:12', 'info@acedecors.in', 'Revit Structure', 'Revit Structure', 'info@acedecors.in'),
(49, 'Autodesk 3DS Max', '/dharwadhubballitutor/Autodesk-3DS-Max', 2, '1', '<p>3ds Max is used extensively for 3D modeling simulation by civil engineers and architects. In photo-realistic visualization, 3ds Max allows designers to make drawings created using AutoCAD or any other CAD software. \n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>MAX Script</li>\n<li>Character Studio</li>\n<li>Scene Explorer</li>\n<li>DWG import</li>\n<li>Texture assignment/editing</li>\n<li>General key framing</li>\n<li>Constrained animation</li>\n<li>Skinning</li>\n<li>Skeletons andÂ inverse kinematicsÂ (IK)</li>\n<li>Integrated Cloth solver</li>\n<li>Integration with Autodesk Vault</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Advantages:</h2>\n<ul>\n<li>Crowd generation feature</li>\n<li>Perspective Matching</li>\n<li>Particle Animation</li>\n<li>Vector Mapping Support</li>\n<li>2D pan and Zoom</li>\n<li>Global illumination</li>\n</ul>\n', '2022-02-24 12:20:49', 'info@acedecors.in', 'Autodesk 3DS Max', 'Autodesk 3DS Max', 'info@acedecors.in'),
(76, 'Creo', '/dharwadhubballitutor/Creo', 2, '', '<p><span style=\"color: #202124;\">Creo isÂ </span><strong style=\"color: #202124\">a family of Computer-aided design (CAD) apps supporting product design for discrete manufacturers</strong><span style=\"color: #202124;\">Â and is developed by PTC. The suite consists of apps, each delivering a distinct set of capabilities for a user role within product development.</span> \n<br />\n</p>\n<h2><span style=\"color: #202124;\">Advantages</span></h2>\n<ul>\n<li>Optimised for model-based enterprises.</li>\n<li>Increased engineer productivity.</li>\n<li>Better enabled concept design.</li>\n<li>Increased engineering capabilities.</li>\n<li>Increased manufacturing capabilities.</li>\n<li>Better simulation.</li>\n<li>Design capabilities for additive manufacturing.</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-05 14:59:00', 'info@acedecors.in', 'Creo', 'Creo', 'info@acedecors.in'),
(77, 'Solid Edge', '/dharwadhubballitutor/Solid-Edge', 2, '', '<p><span style=\"color: #202124;\">Solid Edge Mechanical Design allows you to do things like quickly focus on the task at hand, or to find parts anywhere in the design by using refined searched tools that let you search by component properties such as name, title, document, number, etc.</span> \n<br />\n</p>\n<h2><span style=\"color: #202124;\">Benefits</span></h2>\n<ul>\n<li><strong>The Solid Edge Portfolio: </strong><span style=\"color: #424242;\">Solid Edge is now a start-to-finish PLM tool that allows users to implement the best solution for their companyâ€™s and customerâ€™s needs. This portfolio includes a variety of tools, including simulation, manufacturing, technical publications, data management and applications from third-party software, truly offering unique design-through-manufacturing possibilities.</span></li>\n<li><strong>Scalable Data Management:</strong> Built-in Solid Edge data management allows manufacturers to work with a large volume of CAD files. The Design Manager tool enables users to review and edit the properties of multiple files and to backup, share and synchronize files through a number of cloud-based, file-sharing software. Should the need arrive, Siemens allows for an easy upgrade to Teamcenter.Â Teamcenter Integration for Solid Edge allows users to capture, manage and share Solid Edge data.</li>\n<li><strong>Design Collaboration:</strong> <span style=\"color: #424242;\">The product collaboration of SolidWorks helps designers share their project with other key stakeholders, and offers a variety of ways to protect data and original design.</span></li>\n<li><strong>Next Generation Design:</strong> <span style=\"color: #424242;\">Generative Design is a feature just added to the 2017 version of SolidWorks. Other improvements to SolidWorksâ€™ design include closing the gap between design and manufacturing with more intelligent designs, predicting next steps.</span></li>\n<li><strong>Sheet Metal Modeling:</strong> <span style=\"color: #424242;\">SolidWorks provides a basic version of sheet metal modeling. Users can design a sheet metal part on its own without any reference to the parts it will enclose, the part in the context of an assembly or the part within a multibody environment.</span></li>\n<li><strong>Assembly Optimization:</strong> <span style=\"color: #424242;\">Because of the history-based functionality of SolidWorks, creating assemblies requires users to build and understand each individual part before creating the whole. And if a customer requires modifications to an assembly, the user will have to modify each part, then make required adjustments to other parts, and possibly the entire assembly.</span></li>\n<li><strong>3D Digital Prototypes:</strong> <span style=\"color: #424242;\">Solid Edge users can build complete 3D digital prototypes and optimize their designs before the production stage, and design an entire assembly with specific machined, cast or stylized components.</span></li>\n<li><strong>Creating 3D Models from 2D Drawings:</strong> <span style=\"color: #424242;\">Solid Edge allows users to create quality 3D models from 2D drawings, and 2D drawings from 3D models. With both functions, Solid Edge provides multiple view options, including standard, auxiliary, section, detail, broke and isometric.</span></li>\n<li><strong>True Direct Editing:</strong> <span style=\"color: #424242;\">Solid Edgeâ€™s Synchronous Technology allows users to create and modify a design on the fly, irrespective of the order in which previous elements were assembled. This makes the design more responsive and allows for design changes at the assembly stage. With this feature, users can design, revise and deliver a product faster.</span></li>\n<li><strong>One-Shot, Multi-Part Editing:</strong> <span style=\"color: #424242;\">The one-shot editing of Solid Edge allows users to edit components in an assembly while also maintaining the original design intent of the product or feature. A user can select multiple faces of multiple parts and make quick edits. Synchronous Technology will recognize symmetrical parts of a feature and make corresponding edits when there are any alterations.</span></li>\n</ul>\n', '2022-03-05 15:00:02', 'info@acedecors.in', 'Solid Edge', 'Solid Edge', 'info@acedecors.in'),
(47, 'Sketch Up', '/dharwadhubballitutor/Sketch-Up', 2, '', '<p>SketchUp is a 3D modeling computer software for a wide variety of drawing applications, including architectural, interior design, landscape architecture, civil and mechanical engineering, film and video game design. \n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>Textures.</li>\n<li>Lighting effects.</li>\n<li>3D models.</li>\n<li>2D models.</li>\n<li>Layer manager.</li>\n<li>Animations.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Advantages:</h2>\n<ul>\n<li>Easy to draw your design.</li>\n<li>Adjust to the lifelike drawings youâ€™ll create fast.</li>\n<li>Allows you to render surfaces in an array of &quot;styles&quot;.</li>\n<li>Makes it easy to integrate with software that furnishes additional capabilities.</li>\n<li>You can place your model within &quot;Google Earth&quot; - right on the actual site.</li>\n</ul>\n', '2022-02-24 12:18:47', 'info@acedecors.in', 'Sketch Up', 'Sketch Up', 'info@acedecors.in'),
(46, 'Auto CAD', '/dharwadhubballitutor/Auto-CAD', 2, '1', '<p>AutoCAD is a software framework for industrial computer-aided design and drafting. AutoCAD, produced and sold by Autodesk, was first released as a desktop app running on microcomputers with internal graphics controllers in December 1982. \n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li>It is user-friendly</li>\n<li>It is easily available</li>\n<li>It offers a high level of accuracy</li>\n<li>It makes editing easy</li>\n<li>It reduces the chance for errors</li>\n<li>It allows you to store and transfer data</li>\n<li>It saves time and money</li>\n<li>It enables collaboration</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Features:</h2>\n<ul>\n<li>3D modelling and visualisation</li>\n<li>Photorealistic rendering</li>\n<li>Solid, surface and mesh modelling</li>\n<li>Base, projected and section views</li>\n<li>Visual styles</li>\n<li>Smart dimensioning</li>\n<li>PDF and DGN import, export and underlay</li>\n<li>Section planes</li>\n<li>Parametric constraints</li>\n<li>3D scanning and point cloud generation</li>\n<li>2D drafting, drawing and annotation</li>\n<li>3D navigation</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-24 11:57:15', 'info@acedecors.in', 'Auto CAD', 'Auto CAD', 'info@acedecors.in'),
(8, 'C Language', '/dharwadhubballitutor/C-Language', 2, '', '<p>C is a procedural programming language. It was initially developed by Dennis Ritchie in the year 1972. It was mainly developed as a system programming language to write an operating system. The main features of the C language include low-level access to memory, a simple set of keywords, and a clean style, these features make the C language suitable for system programs like an operating system or compiler development.Â <span align=\"justify\">\n</span><br />\n \n<br />\n</p>\n<h2><strong>Features:</strong>Â </h2>\n<p>Â \n<br />\n</p>\n<ol>\n<li>Procedural Language</li>\n<li>Fast and Efficient</li>\n<li>Modularity</li>\n<li>Statically Type</li>\n<li>General-Purpose Language</li>\n<li>Rich set of built-in Operators</li>\n<li>Libraries with rich Functions</li>\n<li>Middle-Level Language</li>\n<li>Portability</li>\n<li>Easy to Extend</li>\n</ol>\n<p>\n<br />\n</p>\n', '2022-02-07 15:14:17', 'info@acedecors.in', 'C Language', 'C Language', 'info@acedecors.in'),
(9, 'C++ Language', '/dharwadhubballitutor/C++-Language', 2, '', '<p>C++ is a cross-platform language that can be used to build software for high performance. C++ was developed by Bjarne Stroustrup, as an extension to the C language. C++ gives programmers a high level of control over system resources and memory. It can be found in today\'s Graphical User interface, Operating systems and Embedded system. \n<br />\n</p>\n<h2><strong>Features:</strong></h2>\n<ul>\n<li>Simple</li>\n<li>Machine Independent but Platform Dependent</li>\n<li>Mid-level language</li>\n<li>Rich library support</li>\n<li>Speed of execution</li>\n<li>Pointer and direct Memory-Access</li>\n<li>Object-Oriented</li>\n<li>Compiled Language</li>\n</ul>\n<p>\n<br />\n</p>\n<h2><strong>Applications of C++:Â </strong></h2>\n<ul>\n<li>Operating Systems &amp; Systems Programming. e.g.Â Linux-based OS (Ubuntu etc.)</li>\n<li>BrowsersÂ (Chrome &amp; Firefox)</li>\n<li>Graphics &amp; Game enginesÂ (Photoshop, Blender, Unreal-Engine)</li>\n<li>Database EnginesÂ (MySQL, MongoDB, Redis etc.)</li>\n<li>Cloud/Distributed Systems</li>\n</ul>\n<p>\n<br />\n \n<br />\n</p>\n', '2022-02-08 16:03:41', 'info@acedecors.in', 'C++ Language', 'C++ Language', 'info@acedecors.in'),
(10, 'Java', '/dharwadhubballitutor/Java', 2, '1', '<p>Java is a language for programming and a forum. Java is a high-level, robust programming language that is object-oriented and stable. In 1995, Java was developed by Sun Microsystems (which is now Oracle\'s subsidiary).JavaÂ is a general-purpose, class-based, object-oriented programming language designed for having lesser implementation dependencies. It is a computing platform for application development. Java is fast, secure, and reliable, therefore. It is widely used for developing Java applications in laptops, data centers, game consoles, scientific supercomputers, cell phones, etc. One of the most widely used programming languages, Java is used as the server-side language forÂ most back-end development projects, including those involving big data and Android development. Java is also commonly used for desktop computing, other mobile computing, games, and numerical computing. \n<br />\n<span code-block=\"1\">\n</span><br />\n</p>\n<h2>Features of Java</h2>\n<ul>\n<li>It is one of the easy-to-use programming languages to learn.</li>\n<li>Write code once and run it on almost any computing platform.</li>\n<li>Java is platform-independent. Some programs developed in one machine can be executed in another machine.</li>\n<li>It is designed for building object-oriented applications.</li>\n<li>It is a multithreaded language with automatic memory management.</li>\n<li>It is created for the distributed environment of the Internet.</li>\n<li>Facilitates distributed computing as its network-centric.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>What is Java used for?</h2>\n<ul>\n<li>It is used for developing Android Apps</li>\n<li>Helps you to create Enterprise Software</li>\n<li>Wide range of Mobile java Applications</li>\n<li>Scientific Computing Applications</li>\n<li>Use for Big Data Analytics</li>\n<li>Java Programming of Hardware devices</li>\n<li>Used for Server-Side Technologies like Apache, JBoss, GlassFish, etc.</li>\n</ul>\n<p>\n<br />\n \n<br />\n</p>\n', '2022-02-08 16:05:09', 'info@acedecors.in', 'Java', 'Java', 'info@acedecors.in'),
(11, 'HTML', '/dharwadhubballitutor/HTML', 2, '1', '<p>HTML is an integral part of a syllabus for a web design course and is defined as a Hypertext Markup Language. In this subject, you will get to understand how HTML develops the general structure of a web page design as well as tags and the definition of HTML files. It is a key element of creating a website. \n<br />\n</p>\n<h2><strong>Features of HTML:</strong>Â </h2>\n<ul>\n<li>It is easy to learn and easy to use.</li>\n<li>It is platform-independent.</li>\n<li>Images, videos, and audio can be added to a web page.</li>\n<li>Hypertext can be added to the text.</li>\n<li>It is a markup language.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2><strong>Why learn HTML?</strong>Â </h2>\n<ul>\n<li>It is a simple markup language. Its implementation is easy.</li>\n<li>It is used to create a website.</li>\n<li>Helps in developing fundamentals about web programming.</li>\n<li>Boost professional career.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2><strong>Advantages:</strong>Â </h2>\n<ul>\n<li>HTML is used to build websites.</li>\n<li>It is supported by all browsers.</li>\n<li>It can be integrated with other languages like CSS, JavaScript, etc.</li>\n</ul>\n', '2022-02-08 16:08:37', 'info@acedecors.in', 'HTML', 'Web design and development course in Hubli ,Digital Marketing course in Hubli , Civil Designing, Mechanical Designing, Programming courses in Hubli and dharwad', 'info@acedecors.in'),
(12, 'CSS', '/dharwadhubballitutor/Cascading-style-sheet', 2, '', '<p>Cascading style sheets a.k.a CSS is the language used to understand the overall appearance of a web page that consists of its layout, fonts, colors, and themes. <span style=\"color: #4d5156;\">Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.</span> \n<br />\n</p>\n<h2>Features</h2>\n<ul>\n<li>Opportunity in Web designing:Â If anyone wants to begin a career in web designing professionally, it is essential to have knowledge of CSS and HTML.</li>\n<li><strong style=\"color: #504b3a\">Website Design:Â </strong>With the use of CSS, we can control various styles, such as the text color, the font style, the spacing among paragraphs, column size and layout, background color and images, design of the layout, display variations for distinct screens and device sizes, and many other effects as well.</li>\n<li><strong style=\"color: #504b3a\">Web Control:Â </strong>CSS has controlling power over the documents of HTML, so it is easy to learn. It is integrated with the HTML and the XHTML markup languages.</li>\n<li><strong style=\"color: #504b3a\">Other Languages:Â </strong>Once we have knowledge of some basics of CSS and HTML, other associated technologies like Angular, PHP, and JavaScript have become clearer to understand.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Advantages of CSS:</h2>\n<ul>\n<li><strong>CSS saves time:</strong> <span style=\"color: #000000;\">You can write CSS once and then reuse the same sheet on multiple HTML pages. You can define a style for each HTML element and apply it to as many Web pages as you want.</span></li>\n<li><strong>Pages load faster:</strong> <span style=\"color: #000000;\">If you are using CSS, you do not need to write HTML tag attributes every time. Just write one CSS rule of a tag and apply it to all the occurrences of that tag. So less code means faster download times.</span></li>\n<li><strong>Easy maintenance: </strong><span style=\"color: #000000;\">To make a global change, simply change the style, and all elements in all the web pages will be updated automatically.</span></li>\n<li><strong>Superior styles to HTML: </strong><span style=\"color: #000000;\">CSS has a much wider array of attributes than HTML, so you can give a far better look to your HTML page in comparison to HTML attributes.</span></li>\n<li><strong>Multiple Device Compatibility:</strong> <span style=\"color: #000000;\">Style sheets allow content to be optimized for more than one type of device. By using the same HTML document, different versions of a website can be presented for handheld devices such as PDAs and cell phones or for printing.</span></li>\n<li><strong>Global web standards: </strong><span style=\"color: #000000;\">Now HTML attributes are being deprecated and it is being recommended to use CSS. So it\'s a good idea to start using CSS in all the HTML pages to make them compatible with future browsers.</span></li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-22 15:24:16', 'info@acedecors.in', 'CSS', 'Web design courses from top universities and industry leaders. Learn web designing online with courses like Web Design for Everybody: Basics of Web Development & Coding and HTML, CSS, and Javascript for Web Developers.', 'info@acedecors.in'),
(13, 'Javascript', '/dharwadhubballitutor/Javascript', 2, '', '<p>Another programming language that is a key part of the course syllabus for web design is JavaScript. JavaScript is a dynamic computer programming language. It is lightweight and most commonly used as a part of web pages, whose implementations allow client-side script to interact with the user and make dynamic pages. In programming and interactive websites, it is a logical language with cool tabs, sliders, calls to action and other dynamic features generated with JavaScript. \n<br />\n</p>\n<h2>Advantages of JavaScript</h2>\n<ul>\n<li>Web Development</li>\n<li>Web Applications</li>\n<li>Server Applications</li>\n<li>Games</li>\n<li>Smart watches</li>\n<li>Machine Learning</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Features Of JavaScript</h2>\n<ul>\n<li>Validating Userâ€™s Input</li>\n<li>Simple Client-side Calculations</li>\n<li>Greater Control</li>\n<li>Platform Independent</li>\n<li>Handling Dates and Time</li>\n<li>Generating HTML Content</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-22 15:30:12', 'info@acedecors.in', 'Javascript', 'Javascript', 'info@acedecors.in'),
(14, 'JQuery', '/dharwadhubballitutor/JQuery', 2, '', '<p>The aim of jQuery is to make using JavaScript on your website much easier. JQuery takes a variety of common tasks to achieve, involving several lines of JavaScript code, and wraps them in methods that can be called with a single line of code. \n<br />\n</p>\n<h2>jQuery Features:</h2>\n<ul>\n<li>DOM manipulation</li>\n<li>DOM element selection</li>\n<li>CSS manipulation</li>\n<li>Effects and Animations</li>\n<li>Utilities</li>\n<li>AJAX</li>\n<li>Extensibility through plug-ins</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Why jQuery is required?</h2>\n<ul>\n<li>It is very fast and extensible.</li>\n<li>It facilitates the users to write UI related function codes in minimum possible lines.</li>\n<li>It improves the performance of an application.</li>\n<li>Browser\'s compatible web applications can be developed.</li>\n<li>It uses mostly new features of new browsers.</li>\n</ul>\n', '2022-02-22 15:33:41', 'info@acedecors.in', 'JQuery', 'JQuery', 'info@acedecors.in'),
(15, 'Bootstrap', '/dharwadhubballitutor/Bootstrap', 2, '', '<p>Bootstrap is a free front-end platform that allows web development quicker and easier.It contains typography, shapes, buttons, tables, navigation, modals, image carousels and several other HTML and CSS-based interface templates, as well as optional JavaScript plugins. It also offers you the opportunity to build responsive designs quickly. \n<br />\n</p>\n<h2>Why we use Bootstrap ?</h2>\n<ul>\n<li>It is Faster and Easier way for Web-Development.</li>\n<li>It creates Platform-independent web-pages.</li>\n<li>It creates Responsive Web-pages.</li>\n<li>It designs the responsive web pages for mobile devices too.</li>\n<li>It is Free and open-source framework available on www.getbootstrap.com</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Features of Bootstrap</h2>\n<ul>\n<li>Easy to Begin With</li>\n<li>Easily Customizable</li>\n<li>Responsive Utility Classes</li>\n<li>Components of Bootstrap</li>\n<li>Drop-Down Component Menu</li>\n<li>Bootstrap Templates</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-02-22 15:34:50', 'info@acedecors.in', 'Bootstrap', 'Bootstrap', 'info@acedecors.in'),
(16, 'PHP', '/dharwadhubballitutor/PHP', 2, '', '<p><span style=\"color: #333333;\">PHP is an open-source, interpreted, and object-oriented scripting language that can be executed on the server-side. PHP is well suited for web development. Therefore, it is used to develop web applications.</span> \n<br />\n</p>\n<h2><span style=\"color: #333333;\">Features:</span></h2>\n<ul>\n<li><strong>Performance:</strong> PHP script is executed much faster than those scripts which are written in other languages such as JSP and ASP. PHP uses its own memory, so the server workload and loading time are automatically reduced, which results in faster processing speed and better performance.</li>\n<li><strong>Open Source: </strong>PHP source code and software are freely available on the web. You can develop all the versions of PHP according to your requirement without paying any cost. All its components are free to download and use.</li>\n<li><strong>Familiarity with the syntax: </strong>PHP has easily understandable syntax. Programmers are comfortable coding with it.</li>\n<li><strong>Embedded:</strong> PHP code can be easily embedded within HTML tags and scripts.</li>\n<li><strong>Platform Independent:</strong> PHP is available for WINDOWS, MAC, LINUX &amp; UNIX operating systems. A PHP application developed in one OS can be easily executed in another OS also.</li>\n<li><strong>Database Support: </strong>PHP supports all the leading databases such as MySQL, SQLite, ODBC, etc.</li>\n<li><strong>Error Reporting:</strong> PHP has predefined error reporting constants to generate an error notice or warning at runtime.</li>\n<li><strong>Loosely Typed Language:</strong> PHP allows us to use a variable without declaring its data type. It will be taken automatically at the time of execution based on the type of data it contains on its value.</li>\n<li><strong>Web servers Support:</strong> PHP is compatible with almost all local servers used today like Apache, Netscape, Microsoft IIS, etc.</li>\n<li><strong>Security:</strong> PHP is a secure language to develop the website. It consists of multiple layers of security to prevent threats and malicious attacks.</li>\n<li><strong>Control: </strong>Different programming languages require long scripts or code, whereas PHP can do the same work in a few lines of code. It has maximum control over the websites like you can make changes easily whenever you want.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2><strong>Advantages:</strong>Â Â </h2>\n<ol>\n<li>The most important advantage of PHP is that itâ€™s open-source and free from cost. It can be downloaded anywhere and is readily available to use for events or web applications.Â </li>\n<li>It is platform-independent. PHP-based applications can run on any OS like UNIX, Linux, and Windows, etc.Â </li>\n<li>Applications can easily be loaded which are based on PHP and connected to the database. Itâ€™s mainly used due to its faster rate of loading over slow internet speed than other programming language.Â </li>\n<li>It has less learning curve because it is simple and straightforward to use. Someone familiar with C programming can easily work on PHP.Â </li>\n<li>It is more stable for a few years with the assistance of providing continuous support to various versions.Â </li>\n<li>It helps in reusing an equivalent code and not got have to write lengthy code and sophisticated structure for events of web applications.Â </li>\n<li>It helps in managing code easily.Â </li>\n<li>It has powerful library support to use various function modules for data representation.Â </li>\n<li>PHPâ€™s built-in database connection modules help in the connecting database easily reducing trouble and time for the development of web applications and content-based sites.Â </li>\n<li>The popularity of PHP gave rise to the various communities of developers, a fraction of which may be potential candidates for hire.Â </li>\n<li>Flexibility makes PHP ready to effectively combine with many other programming languages in order that the software package could use foremost effective technology for every particular feature.</li>\n</ol>\n<p>\n<br />\n</p>\n', '2022-02-22 15:40:39', 'info@acedecors.in', 'PHP', 'PHP', 'info@acedecors.in'),
(72, 'Catia', '/dharwadhubballitutor/Catia', 2, '', '<p>CATIAÂ computer-aided three-dimensional interactive application is a multi-platformÂ software suiteÂ forÂ computer-aided designÂ (CAD),Â computer-aided manufacturingÂ (CAM),Â computer-aided engineeringÂ (CAE),Â 3D modelingÂ andÂ Product lifecycle managementÂ (PLM). \n<br />\n</p>\n<h2>Benefits</h2>\n<ul>\n<li><strong>Product Design &amp; Styling:</strong>Â This product design program offers updated surface modeling abilities to industrial and transportation designers. The innovative designers can access the tools that help them achieve and explore fundamental ideas. It also supports a unique 3D sketching technology which helps the designers to import 2D sketches.</li>\n<li><strong>3D Atmosphere:</strong>Â It has a built-in mutual 3D environment that allows the users to diligently take part in the design process anytime. The designs of the products can be accessed and viewed from the 3D dashboards. The designs can share their workings and enhance their designs by collaborating with different people around the globe.</li>\n<li><strong>Multidisciplinary Approach:</strong>Â It provides a multidisciplinary Approach for product designing and creation. It fulfills the specific requirements of several people to upgrade the concept, process, and development of new products.</li>\n<li><strong>Market Acceptance:Â </strong>It ensures that the engineers will be adaptive to the marketing rules and fundamentals and demands and on simultaneously reducing the product development cost.</li>\n</ul>\n<p>\n<br />\n</p>\n<h2>Advantages</h2>\n<ul>\n<li>It saves time and money. The software has built-in modification management abilities that help in automatic updates. This technique reduces the effect of changes in the manufacturing process. Through these automatic updates in the initial phase, the user saves his time as well as money without the need to restart the whole process from the beginning.</li>\n<li>The geometric specifications of composite parts can make the creation of these parts complex, and it maximizes the risk of errors. But, It helps the user to control multiple part geometries. These include the core-stiffened parts as well.</li>\n<li>Predict the behavior of parts with complex surfaces and allowing modifications where needed.</li>\n</ul>\n', '2022-03-05 14:55:14', 'info@acedecors.in', 'Catia', 'Catia', ''),
(73, 'Solidworks', '/dharwadhubballitutor/Solidworks', 2, '', '<p>The SOLIDWORKS CAD software is a mechanical design automation application that lets designers quickly sketch out ideas, experiment with features and dimensions, and produce models and detailed drawings. \n<br />\n</p>\n<h2>Features:</h2>\n<p><strong>SOLIDWORKS 3D CAD:</strong> \n<br />\n Create sophisticated part and assembly designs quickly and efficiently using powerful, easy-to-use software. \n<br />\n <strong>Design Reuse and Automation:</strong> \n<br />\n Easily find and leverage existing engineering data to create new designs and speed up product development. \n<br />\n <strong>Part and Assembly Modeling:Â </strong> \n<br />\n Flexible 3D modeling tools cover the full range of design tasks to quickly develop your product concepts. \n<br />\n <strong>Interference Check:Â </strong> \n<br />\n Verify that components can be assembled properly before going into production. \n<br />\n <strong>Design for Cost: Manufacturing Cost Estimation and Quoting:Â </strong> \n<br />\n Continuously check your designs against cost targets with integrated automated manufacturing cost estimation tools. \n<br />\n <strong>2D Drawings:Â </strong> \n<br />\n Create production-ready 2D drawings that communicate how your design should be manufactured and assembled. \n<br />\n <strong>Design Analysis:</strong> \n<br />\n Verify operation and performance while creating your design with fully integrated simulation and analysis tools. \n<br />\n <strong>CAD Library:</strong> \n<br />\n Save frequently used parts, features, and templates with easy access from inside the SOLIDWORKS environment. \n<br />\n <strong>3D Animations and Photorealistic Renderings:</strong> \n<br />\n Quickly and easily create powerful images and animations to communicate your design intent and functionality. \n<br />\n</p>\n', '2022-03-05 14:56:38', 'info@acedecors.in', 'Solidworks', 'Solidworks', 'info@acedecors.in');
INSERT INTO `post` (`postId`, `postTitle`, `postUrl`, `LinkUnder`, `appearOnHome`, `postDescription`, `postCreatedOn`, `postCreatedBy`, `titleTag`, `keywords`, `modifiedBy`) VALUES
(74, 'Ansys', '/dharwadhubballitutor/Ansys', 2, '', '<p><span style=\"color: #202124;\">Ansys Mechanical isÂ </span><strong style=\"color: #202124\">a dynamic tool that</strong><span style=\"color: #202124;\">Â has a complete range of analysis tools. Easy to Use, Multi-Purpose Tool. Dynamic, Integrated Platform. Persistent, Dependable, Accurate Solver Technology. Powerful Nonlinear and Linear Solvers.</span> \n<br />\n</p>\n<h2><strong>Features</strong></h2>\n<ul>\n<li><strong>Fast solvers:Â </strong>Mechanical Includes multiple solver technologies that run in parallel and scale efficiently. GPU technology can also be leveraged for additional parallel computing power.</li>\n<li><strong>Linear Dynamics:Â </strong>Modal, harmonic response, random vibration, and spectrum response (seismic or shock) can be solved with Mechanical.</li>\n<li><strong>Acoustics:Â </strong>Conduct acoustic simulations to better understand the vibroacoustic behavior of systems, with or without structural pre-loading. Though, pre-loading adds authenticity and allows for the simulation of self-weighted, fastened assembly and even squealing breaks.</li>\n<li><strong>Nonlinearities:Â </strong>In addition to the linear response, users can simulate the behavior of elastic materials as they undergo plastic or even hyperelastic deformation materials like metals and rubber. Viscoelastic response can also be simulated. Nonlinear simulation within Ansys Mechanical also takes into account contact and large deflection of moving parts relative to each other, with or without friction. These capabilities are robust in static or time-domain transient simulations.</li>\n<li><strong>Thermal and Heat Transfer:</strong>Â Robust steady-state and transient thermal capabilities are included with all levels of Mechanical licenses. Heat transfer via conduction, convection, and radiation are supported. Thermal loading can also be readily transferred from Ansysâ€™ CFD and electromagnetics solvers to Mechanical.</li>\n<li><strong>Fatigue and Fracture:</strong>Â Extensive fatigue life and damage calculation capabilities are readily available in Ansys Mechanical. Combining fatigue life and fracture mechanic methods allows users to effectively predict the service life of their products and avoid costly warranty issues.</li>\n<li><strong>Fluid-Structure Interaction:Â </strong>Predict fluid-solid interactions accurately using pressure and/or heat transfer. As the fluid-structure interaction grows and the problem requires a more extensive analysis, Ansys Mechanical has automated, easy-to-use solutions for both one-way and two-way coupling to Ansys Fluent and Ansys CFX.</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-05 14:57:22', 'info@acedecors.in', 'Ansys', 'Ansys', 'info@acedecors.in'),
(64, 'Search Engine Optimization', '/dharwadhubballitutor/Search-Engine-Optimization', 2, '', '<p>SEO, or search engine optimization, is the process of optimizing websites so that they rank well on search engines through organic (non paid) searches. \n<br />\n</p>\n<h2>Why should we use SEO in digital marketing?</h2>\n<ol>\n<li>SEO is pocket friendly rather than PC and other marketing techniques. It is a fixed paid service provided by an agency accordingly.</li>\n<li>An effective Seo strategy would definitely work and improve search engine ranking of your websites.</li>\n<li>Instead of email marketing and smo technique, SEO is even necessary for website ranking and driving more user traffic on your website.</li>\n<li>Indispensible use of mobile in daily life makes it an important factor in digital marketing. Even Google used to consider mobile website searches as primary content for search engine ranking. This shift makes mobile Seo a bigger factor in Seo technique. Mobile Seo cannot be ignored to improve visibility of a website.</li>\n<li>Wise implementation ofÂ SEOÂ for a website, takes it above all of its competitors in search engine.</li>\n<li>SEO helps in collection of more ROI. Good search engine ranking also helps to attract visitors and obviously the conversion rate also increases due to higher ranking. So Seo helps in increasing traffic, hence conversion rate and ROI.</li>\n</ol>\n<p>\n<br />\n</p>\n', '2022-03-04 16:45:26', 'info@acedecors.in', 'Search Engine Optimization', 'Search Engine Optimization', 'info@acedecors.in'),
(65, 'Social Media Marketing', '/dharwadhubballitutor/Social-Media-Marketing', 2, '1', '<p><span style=\"color: #202124;\">The term social media marketing (SMM) refers toÂ </span><strong style=\"color: #202124\">the use of social media and social networks to market a company\'s products and services</strong><span style=\"color: #202124;\">. Social media marketing provides companies with a way to engage with existing customers and reach new ones while allowing them to promote their desired culture, mission, or tone.</span> \n<br />\n</p>\n<h2><strong>Social media marketing characteristics.</strong></h2>\n<ul>\n<li><strong>Participation: </strong>Social media encourages contributions and feedback from everyone. Social media includes the delivery of ideas at the time of online conversation. It tries to bridge the gap between companies and their audiences. People are enjoying this process of participation where they feel they have a voice, an impact.</li>\n<li><strong>Openness: </strong>What you do, what you say, everything is out there in the open. People are quick to call out any contradiction, foul play, or mistakes. Brands have to be honest, transparent, and authentic as negativity can destroy a brandâ€™s online reputation.</li>\n<li><strong>Relationship building: </strong>Social media is a two-way communication channel, requiring participation from both brands and customers. It is a must for businesses to make good connections with their target audience. Online conversation through various social media tools happens in real-time with real people. Engaging to build relations can go a long way for businesses.</li>\n<li><strong>Reliability: </strong>You need to consistently show your online presence to come off as reliable. Effective social media marketers actively use target social platforms to get involved with new users and promote their offerings. They talk to their target audience regularly. Use social media as a means of trust-building.</li>\n<li><strong>Community building: </strong>Social media platforms are the right place to build communities quickly. This helps you communicate more effectively. Communities have common interests. These communities help you learn about your target audience. You can also support other communities that you think are good for your business.</li>\n<li><strong>Customer service: </strong>Customers must be taken care of. Social media networks are all about connecting with them and helping them understand how your service or product adds value to their lives. Social media is for providing value to customers, not just for blatant promotion.</li>\n</ul>\n', '2022-03-04 16:46:35', 'info@acedecors.in', 'Social Media Marketing', 'Social Media Marketing', 'info@acedecors.in'),
(66, 'Email Marketing', '/dharwadhubballitutor/Email-Marketing', 2, '', '<p>Email marketingÂ is the act of sending aÂ commercial message, typically to a group of people, usingÂ email. In its broadest sense, every email sent to a potential or currentÂ customerÂ could be considered emailÂ marketing. It involves using email to sendÂ advertisements, request business, or solicit sales or donations. \n<br />\n</p>\n<h1>Benefits</h1>\n<p>\n<br />\n</p>\n<h2>Low costs:</h2>\n<p>Email marketers might consider investing in specialist software to automate, track and evaluate their emails. Granted, there may be a small overhead for sending thousands of emails at a time, but these costs are far lower than what you would expect to pay using other marketing channels. \n<br />\n</p>\n<h2>Reach an already engaged audience:</h2>\n<p>The majority of businesses using the platform only send messages to those who have signed up to receive them. This can allow for much higher conversion rates as a business is only targeting those who already have an interest in their brand. \n<br />\n</p>\n<h2>Deliver targeted messages:</h2>\n<p>Email marketers can go one step further though,Â by only sending emails to subscribers who meet certain criteria. \n<br />\n</p>\n<h2>Drive revenue:</h2>\n<p>With a tempting call to action and a link straight to the checkout, email newsletters can drive sales like no other channel. \n<br />\n</p>\n<h2>Easy to get started:</h2>\n<p>ManyÂ email marketing platforms, offerÂ Drag &amp; Drop Editors, which allow you to create stunning campaigns, quickly and easily. \n<br />\n</p>\n<h2>Easy to measure:</h2>\n<p>Itâ€™s easy to see where youâ€™re going wrong. Most email marketing software will allow you to track open, click-through and conversion rates, making it simple to spot how a campaign can be improved. \n<br />\n</p>\n<h2>Easy to share:</h2>\n<p>Subscribers can forward brilliant deals and offers to their friends at the click of a button. There arenâ€™t many other types of marketing that can be shared as easily as this. \n<br />\n</p>\n', '2022-03-04 16:47:37', 'info@acedecors.in', 'Email Marketing', 'Email Marketing', 'info@acedecors.in'),
(69, 'Search Engine Marketing', '/dharwadhubballitutor/Search-Engine-Marketing', 2, '', '<p>SEM, or search engine marketing, isÂ the act of using paid strategies to increase search visibility. Brands pay for ads to appear as search results on search engine results pages. With SEM, brands pay for ads to appear as search results on search engine results pages (SERPs). \n<br />\n</p>\n<h1>Benefits</h1>\n<h2>Reach Your Clients Instantly:</h2>\n<p>Search Engine Marketing is used to describe Google paid search ads. This technique is often used as a short-term strategy bringing fast visibility to your products or services. \n<br />\n</p>\n<h2>Increase Brand Awareness:</h2>\n<p>Google Search Ads allow advertisers to expose their brand name either in the adâ€™s headlines, description, display URL or extension links. Therefore, these paid search ads contribute to high brand awareness. \n<br />\n</p>\n<h2>Create Geo-Targeted Search Ads:</h2>\n<p>SEM gives you the option to target people based on their location.Â You can create ads in different languages and decide where you want them to appear; you can specify the country, the city and even a specific region anywhere in the world. \n<br />\n</p>\n<h2>Implement And Manage Ads Easily And Quickly:</h2>\n<p>Paid search ads are easily and quickly created and managed. Google Ads allow you toÂ set up a schedule for each of your campaigns â€“ you canÂ run and stop yourÂ ads at any time you want. \n<br />\n</p>\n<h2>Target The Right Audience Through Optimized Ads:</h2>\n<p>SEM is a very effective way for businesses to reach specific customers based on their search intentions. You can make your ads appear only to consumers who are searching using keywords closely related to your products or services. \n<br />\n</p>\n<h2>Increase Traffic Through Ad Visibility:</h2>\n<p>With the right advertising budget, optimized bidding and appealing ad message, you can increase the quality of your ads and therefore ensure high ads visibility and relevant website visits. \n<br />\n</p>\n<h2>Pay Only Per Action:</h2>\n<p>Once your paid search ads are created, your ads will appear for free and you will only pay when someone takes action â€“ meaning, clicks on your ad. \n<br />\n</p>\n<h2>Appear On Competitorsâ€™ Related Keywords:Â </h2>\n<p>As a best practice for SEM, it is recommended to create search ads that are triggered to appear on your competitorsâ€™ related keywords. This will secure your exposure on those keywords and ultimately the chance to convert clients from competitors to you. \n<br />\n</p>\n<h2>Test And Measure Your Performance:</h2>\n<p>Paid search ads give you the opportunity to test your adsâ€™ performance and measure the results youâ€™ve gathered for each campaign. \n<br />\n</p>\n', '2022-03-05 12:08:36', 'info@acedecors.in', 'Search Engine Marketing', 'Search Engine Marketing', 'info@acedecors.in'),
(70, 'Whatsapp Marketing', '/dharwadhubballitutor/Whatsapp-Marketing', 2, '', '<p>WhatsApp marketing isÂ a type of messenger marketing, which implies promoting a brand through WhatsApp. This channel helps brands reach an enormous audience, build strong relationships with customers, and increase sales. \n<br />\n</p>\n<h2>Benefits</h2>\n<ul>\n<li><strong>A private and secure platform:</strong> WhatsApp is a safe bet as it has established itself as a trusted platform that encrypts messages and doesnâ€™t share information with third parties. Unlike other apps, it isnâ€™t laden with ads, meaning customers look to it as a safe and private place to communicate regularly.</li>\n<li><strong>Real-time customer service and support:</strong> With WhatsApp, alerts and updates can be received inÂ real-time. Most importantly, any urgent questions that need answering can be answered in a timely and direct fashion, withÂ no middlemanÂ slowing down the process.Â </li>\n<li><strong>A highly engaging digital channel:</strong> WhatsApp Business messaging enables businesses to collect and analyze valuable consumer research.Â </li>\n<li><strong>A personal and trusted channel:</strong> Using WhatsApp allows businesses toÂ get more personalÂ and authenticÂ with messaging.Â WhatsApp can be used to send personalized promotions, updates, and more from a profile that is branded in line with the companyâ€™s guidelines.</li>\n<li><strong>Supports automation and FAQ:</strong> The â€œquick repliesâ€ function on WhatsApp Business enables businesses toÂ store and reuseÂ useful and frequently sent messages to speed up the customer service process.</li>\n</ul>\n', '2022-03-05 12:31:13', 'info@acedecors.in', 'Whatsapp Marketing', 'Whatsapp Marketing', 'info@acedecors.in'),
(71, 'SMS Marketing', '/dharwadhubballitutor/SMS-Marketing', 2, '', '<p><span style=\"color: #202124;\">SMS marketing isÂ </span><strong style=\"color: #202124\">the practice of sending marketing messages by text message</strong><span style=\"color: #202124;\">. It\'s a form of opt-in marketing that requires contacts to subscribe. This differentiates it from social marketing, where the marketer posts public content that people can choose to like or follow.</span> \n<br />\n</p>\n<h2>Benefits</h2>\n<ul>\n<li><strong>E-commerce stores</strong>Â :Â Whether youâ€™re sending a promotional campaigns, or order/shipping confirmations, SMS is a great tool for e-commerce stores.</li>\n<li><strong>Travel companiesÂ </strong>: SMS is essential to travel companies because customers need real-time information. This includes flight time updates, gate changes, cancellations, weather alerts, and many more. With SMS you are able to tell customers exactly what they need to know, without having to worry about if they will see it in time.</li>\n<li><strong>Service businesses that require appointments</strong>Â : Make sure that your clients never miss another appointment by sending them SMS reminders. This will save you tons of time and money wasted on no-shows and late appointments.</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-05 12:32:54', 'info@acedecors.in', 'SMS Marketing', 'SMS Marketing', 'info@acedecors.in'),
(83, 'Business Card Design', '/dharwadhubballitutor/Business-Card-Design', 2, '', '<p><span style=\"color: #202124;\">A business card is a small, printed, usually credit-card-sized paper card that holds your business details, such as name, contact details and brand logo. Your business card design isÂ </span><strong style=\"color: #202124\">an essential part of your branding and should act as a visual extension of your brand design</strong><span style=\"color: #202124;\">.</span> \n<br />\n</p>\n<h2>Advantages:</h2>\n<ul>\n<li>Affordable way to promote your brand</li>\n<li>Fantastic for events and exhibitions</li>\n<li>Easy to distribute and display</li>\n<li>Perfect for certain industries and jobs</li>\n<li>Remembers email addresses for you</li>\n<li>More visible than an email</li>\n<li>Leaves a lasting professional impression</li>\n<li>Pocket-sized to carry at all times</li>\n<li>Helps visually commit your brand to memory</li>\n</ul>\n', '2022-03-12 17:21:07', 'info@acedecors.in', 'Business Card Design', 'Business Card Design', 'info@acedecors.in'),
(84, 'Logo Designing', '/dharwadhubballitutor/Logo-Designing', 2, '', '<p>Logo design is a branding and marketing tool that can be used to signify a business. \n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li>It Grabs Attention</li>\n<li>It Makes a Strong First Impression</li>\n<li>It\'s the Foundation of Your Brand Identity</li>\n<li>It\'s Memorable</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-12 17:24:38', 'info@acedecors.in', 'Logo Designing', 'Logo Designing', 'info@acedecors.in'),
(85, 'Brochure Designing', '/dharwadhubballitutor/Brochure-Designing', 2, '', '<p><strong style=\"color: #202124\">A brochure is an informative paper document (often also used for advertising) that can be folded into a template, pamphlet, or leaflet</strong><span style=\"color: #202124;\">. A brochure can also be a set of related unfolded papers put into a pocket folder or packet.</span> \n<br />\n</p>\n<h2><span style=\"color: #202124;\">Benefits:</span></h2>\n<ul>\n<li><span style=\"color: #666666;\">Easy to Distribute</span></li>\n<li><span style=\"color: #666666;\">Cost Effective</span></li>\n<li><span style=\"color: #666666;\">Build Trust</span></li>\n<li><span style=\"color: #666666;\">Hold Lots of Information</span></li>\n<li><span style=\"color: #666666;\">Personalize Your Business</span></li>\n<li><span style=\"color: #666666;\">Establish Your Businessâ€™s Authority</span></li>\n</ul>\n', '2022-03-12 17:37:26', 'info@acedecors.in', 'Brochure Designing', 'Brochure Designing', ''),
(86, 'Website Building', '/dharwadhubballitutor/Website-Building', 2, '', '<p><span style=\"color: #202124;\">A Website from scratch is a custom designed and hand-coded website. So making a website from scratch is simply means thatÂ </span><strong style=\"color: #202124\">the site is meticulously constructed according to the clients\' needs, and their specific business requirements</strong><span style=\"color: #202124;\">. Websites have become more than just simple marketing tools for businesses. </span> \n<br />\n</p>\n<h2><span style=\"color: #202124;\">Benefits:</span></h2>\n<ul>\n<li>Online Presence 24/7</li>\n<li>Information Exchange</li>\n<li>Credibility</li>\n<li>It Cuts Costs</li>\n<li>Market Expansion</li>\n<li>Consumer Insights</li>\n<li>Advertising</li>\n<li>Competitors Online</li>\n<li>Customer Service Online</li>\n<li>Growth Opportunity</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-14 11:16:56', 'info@acedecors.in', 'Website Building', 'Website Building', 'info@acedecors.in'),
(87, 'Domain Registration', '/dharwadhubballitutor/Domain-Registration', 2, '', '<p><span style=\"color: #4d5156;\">Domain registration is the process of acquiring a domain name from a domain name registrar. </span><strong style=\"color: #363636\">Domain name registration</strong><span style=\"color: #363636;\">Â is the act of reserving a name on the Internet for a certain period, usually one year. It is important to know that this domain will remain yours for as long as you renew it and there is no way to purchase a domain name forever.</span> \n<br />\n</p>\n<h2><span style=\"color: #363636;\">Benefits:</span></h2>\n<ul>\n<li>Free Promotion</li>\n<li>Professionalism</li>\n<li>Timelessness</li>\n<li>Business Memorability</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-14 11:34:36', 'info@acedecors.in', 'Domain Registration', 'Domain Registration', 'info@acedecors.in'),
(88, 'Web Hosting', '/dharwadhubballitutor/Web-Hosting', 2, '', '<p>Web hosting is an online service that allows you to publish your website files onto the internet. So, anyone who has access to the internet has access to your website. Hosting (also known asÂ Web site hosting,Â Web hosting, andÂ Webhosting) is the business of housing, serving, and maintaining files for one or moreÂ Web sites. More important than the computer space that is provided for Web site files is the fast connection to the Internet. \n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li>Improved Site Performance</li>\n<li>Technical Support</li>\n<li>Liberty In Web Design And Templates</li>\n<li>Effective Data Management</li>\n<li>Unlimited Bandwidth</li>\n<li>Enhanced Security</li>\n<li>High Uptime</li>\n<li>Low Long-Term Costs</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-14 11:45:20', 'info@acedecors.in', 'Web Hosting', 'Web Hosting', 'info@acedecors.in'),
(89, 'Brand Name Development', '/dharwadhubballitutor/Brand-Name-Development', 2, '', '<p><span style=\"color: #000000;\">Brand name is one of the brand elements which helps the customers to identify and differentiate one product from another. It should be chosen very carefully as it captures the key theme of a product in an efficient and economical manner. It can easily be noticed and its meaning can be stored and triggered in the memory instantly.</span> \n<br />\n</p>\n<h2><span style=\"color: #000000;\">Benefits:</span></h2>\n<ul>\n<li>Customer recognition</li>\n<li>Competitive edge in the market</li>\n<li>Easy introduction of new products</li>\n<li>Customer loyalty and shared values</li>\n<li>Enhanced credibility and ease of purchase</li>\n</ul>\n', '2022-03-14 12:36:48', 'info@acedecors.in', 'Brand Name Development', 'Brand Name Development', ''),
(90, 'Creating Brand Logo', '/dharwadhubballitutor/Creating-Brand-Logo', 2, '', '<p><span style=\"color: #202124;\">Creating a brand logo meansÂ </span><strong style=\"color: #202124\">distilling the meaning and essence of your company into a visual element that can convey your personality in a split second</strong><span style=\"color: #202124;\">. As the most recognisable representation of any business, logos help you to (literally) make your mark in your chosen industry.</span> \n<br />\n</p>\n<h2><span style=\"color: #202124;\">Benefits:</span></h2>\n<ul>\n<li>A great logo gives a great first impression</li>\n<li>Designed with a concept and strategy of a professional</li>\n<li>A good logo gives your business an identity &amp; makes it easier to build your brand</li>\n<li>Your logo will help you to project a professional image</li>\n<li>You will get the correct formats and variations for all media</li>\n</ul>\n<p>\n<br />\n</p>\n', '2022-03-14 12:41:09', 'info@acedecors.in', 'Creating Brand Logo', 'Creating Brand Logo', ''),
(91, 'Advertising', '/dharwadhubballitutor/Advertising', 2, '', '<p>Brand advertising is a form of advertising which helps establish connections and build strong, long-term relationships with consumers over time. \n<br />\n Companies that use brand advertising aim to get long-term positive recognition. These companies establish brand identity, credibility, and loyalty with their prospects intellectually and emotionally. \n<br />\n</p>\n<h2>Benefits:</h2>\n<ul>\n<li><span style=\"color: #000000;\">Increasing brand &amp; products awareness</span></li>\n<li><span style=\"color: #000000;\">Standing out from the competition</span></li>\n<li><span style=\"color: #000000;\">Attracting current &amp; potential customers</span></li>\n<li><span style=\"color: #000000;\">Educating your business customers</span></li>\n<li><span style=\"color: #000000;\">Increasing Sales Volume &amp; ROI</span></li>\n</ul>\n', '2022-03-14 12:55:34', 'info@acedecors.in', 'Advertising', 'Advertising', ''),
(93, 'Django Internship Training', '/dharwadhubballitutor/Django-Internship-Training', 2, '', '<p>This session was conducted with 6th-semester computer science students of Gangadhar Polytechnic College Dharwad. It was a wonderful experience for us as well as for the trainer to take this course and deliver it up to the mark. Daily a session of 4 hours was planned for the students in which 2 hours were planned for the theory session and 2 hours were planned for the practical session. \n<br />\n \n<br />\n Here in this training, the topics that were covered were the basics of python programming and the Django Framework to build the web application. Post which students were able to successfully build the calorie calculator. \n<br />\n Below are a few words by the students as well about their experience in this training session. \n<br />\n \n<br />\n DhawadHubballitutor is one of the best tutors in Dharwad we had a good experience in the 15 days of our training with <strong>Python with Django framework</strong> it was really fun and a good experience for each of us. The teaching is a very good and very comfortable environment and they give real-time examples for each topic so it is so easy to understand the topics and we are really glad that we had training in such expertise teacher. Thank you so many sirs for your support and guidance with your guidance we can surely gain so much knowledge about Python and Django frameworks we are glad to sir. And they also teach all other growing programming languages such as Web designing, HTML, javascript, graphic designing, software marketing, and so on so do visit the DharwadHubblli tutors for your better experience in a programming language. \n<br />\n</p>\n', '2022-05-25 04:21:48', 'info@acedecors.in', 'Django Internship Training', 'Python Internship, Python Programming courses near me, Free Python, HTML, CSS, JavaScript, Django Projects, Django Framework', 'info@acedecors.in'),
(94, 'Job on Manual and Automation Software Testing', '/dharwadhubballitutor/Software-Testing-Job', 2, '', '<h2><strong>Job Description:</strong></h2>\n<p>\n<br />\n<span code-block=\"1\">\n</span><br />\n</p>\n<ol>\n<li>Candidate should have sound knowledge on Software Engineering Subject.</li>\n<li>Candidates should have good communication and analytical skill.</li>\n<li>Candidates should be interested in working on software testing profiles on manual and automation.</li>\n<li>Candidates must be from BCA, BE CS/IT, MCA, Bsc CS, or Msc CS, background.</li>\n<li>Currently, the work location is work from home. The company might call for work from the office in the future.</li>\n<li>Salary Depends on the interview performance.</li>\n</ol>\n<p><span code-block=\"1\">\n</span><br />\nFor Futher details please contact us on +91-8007961759/ +91-9741237334\n<br />\n</p>\n', '2022-05-29 21:53:36', 'info@acedecors.in', 'Job on Manual and Automation Software Testing', 'Job on manual and automation testing, Jobs near me, Software jobs, Jobs for BCA MCA Msc Bsc, IT jobs, Computer science,Graduations', 'info@acedecors.in');

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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postimages`
--

INSERT INTO `postimages` (`postImageId`, `postImage`, `createdOn`, `createdBy`, `modifiedBy`, `imageAlternateText`, `postId`) VALUES
(11, 0x7765622d6465766c702e77656270, '2022-02-08 16:08:37', 'info@acedecors.in', 'info@acedecors.in', 'HTML', 11),
(12, 0x7765622d6465766c702e77656270, '2022-02-22 15:24:16', 'info@acedecors.in', 'info@acedecors.in', 'CSS', 12),
(10, 0x5072676d2d6c616e675f312e77656270, '2022-02-08 16:05:09', 'info@acedecors.in', 'info@acedecors.in', 'Java', 10),
(8, 0x5072676d2d6c616e675f312e77656270, '2022-02-07 15:14:17', 'info@acedecors.in', 'info@acedecors.in', 'C Language', 8),
(9, 0x5072676d2d6c616e675f312e77656270, '2022-02-08 16:03:41', 'info@acedecors.in', 'info@acedecors.in', 'C++ Language', 9),
(13, 0x7765622d6465766c702e77656270, '2022-02-22 15:30:12', 'info@acedecors.in', 'info@acedecors.in', 'Javascript', 13),
(14, 0x7765622d6465766c702e77656270, '2022-02-22 15:33:41', 'info@acedecors.in', 'info@acedecors.in', 'JQuery', 14),
(15, 0x7765622d6465766c702e77656270, '2022-02-22 15:34:50', 'info@acedecors.in', 'info@acedecors.in', 'Bootstrap', 15),
(16, 0x7765622d6465766c702e77656270, '2022-02-22 15:40:39', 'info@acedecors.in', 'info@acedecors.in', 'Backend Platform', 16),
(55, 0x636c6f75642d636f6d702e77656270, '2022-02-24 12:36:15', 'info@acedecors.in', 'info@acedecors.in', 'Bolstered Scalability', 55),
(54, 0x636c6f75642d636f6d702e77656270, '2022-02-24 12:35:20', 'info@acedecors.in', 'info@acedecors.in', 'Tight Data Security', 54),
(53, 0x636c6f75642d636f6d702e77656270, '2022-02-24 12:34:17', 'info@acedecors.in', 'info@acedecors.in', 'Cost Optimization and Increased Efficiency.', 53),
(52, 0x436976696c646573676e202831292e77656270, '2022-02-24 12:24:36', 'info@acedecors.in', 'info@acedecors.in', 'V-RAY', 52),
(51, 0x436976696c646573676e202831292e77656270, '2022-02-24 12:23:34', 'info@acedecors.in', 'info@acedecors.in', 'ESTIMATOR', 51),
(50, 0x436976696c646573676e202831292e77656270, '2022-02-24 12:22:12', 'info@acedecors.in', 'info@acedecors.in', 'REVIT STRUCTURE', 50),
(49, 0x436976696c646573676e202831292e77656270, '2022-02-24 12:20:49', 'info@acedecors.in', 'info@acedecors.in', 'AUTODESK 3DS MAX', 49),
(72, 0x6d65636864657369676e2e6a7067, '2022-03-05 14:55:14', 'info@acedecors.in', 'info@acedecors.in', 'Catia', 72),
(47, 0x436976696c646573676e202831292e77656270, '2022-02-24 12:18:47', 'info@acedecors.in', 'info@acedecors.in', 'SKETCH UP', 47),
(46, 0x436976696c646573676e202831292e77656270, '2022-02-24 11:57:15', 'info@acedecors.in', 'info@acedecors.in', 'AUTOCAD', 46),
(83, 0x47726170686963202831292e706e67, '2022-03-12 17:21:07', 'info@acedecors.in', 'info@acedecors.in', 'Business Card Design', 83),
(66, 0x646967746c2d6d726b742e77656270, '2022-03-04 16:47:37', 'info@acedecors.in', 'info@acedecors.in', 'Email Marketing', 66),
(65, 0x646967746c2d6d726b742e77656270, '2022-03-04 16:46:35', 'info@acedecors.in', 'info@acedecors.in', 'Social Media Marketing', 65),
(62, 0x646967746c2d6d726b742e77656270, '2022-03-04 16:23:55', 'info@acedecors.in', 'info@acedecors.in', 'Website Marketing', 62),
(84, 0x646967746c2d6d726b742e77656270, '2022-03-12 17:24:38', 'info@acedecors.in', 'info@acedecors.in', 'Logo Designing', 84),
(64, 0x646967746c2d6d726b742e77656270, '2022-03-04 16:45:26', 'info@acedecors.in', 'info@acedecors.in', 'SEO', 64),
(38, 0x5072676d2d6c616e675f312e77656270, '2022-02-24 11:32:21', 'info@acedecors.in', 'info@acedecors.in', 'PYTHON PROGRAMMING', 38),
(56, 0x636c6f75642d636f6d702e77656270, '2022-02-24 12:37:13', 'info@acedecors.in', 'info@acedecors.in', 'Disaster Recovery', 56),
(57, 0x636c6f75642d636f6d702e77656270, '2022-02-24 12:38:04', 'info@acedecors.in', 'info@acedecors.in', 'Mobility', 57),
(69, 0x646967746c2d6d726b742e77656270, '2022-03-05 12:08:36', 'info@acedecors.in', 'info@acedecors.in', 'Search Engine Marketing', 69),
(70, 0x646967746c2d6d726b742e77656270, '2022-03-05 12:31:13', 'info@acedecors.in', 'info@acedecors.in', 'Whatsapp Marketing', 70),
(85, 0x47726170686963202831292e706e67, '2022-03-12 17:37:26', 'info@acedecors.in', '', 'Brochure Designing', 85),
(71, 0x646967746c2d6d726b742e77656270, '2022-03-05 12:32:54', 'info@acedecors.in', 'info@acedecors.in', 'SMS Marketing', 71),
(73, 0x6d65636864657369676e2e77656270, '2022-03-05 14:56:38', 'info@acedecors.in', 'info@acedecors.in', 'Solidworks', 73),
(74, 0x6d65636864657369676e2e77656270, '2022-03-05 14:57:22', 'info@acedecors.in', 'info@acedecors.in', 'Ansys', 74),
(75, 0x6d65636864657369676e2e77656270, '2022-03-05 14:58:17', 'info@acedecors.in', 'info@acedecors.in', 'Hypermesh', 75),
(76, 0x6d65636864657369676e2e77656270, '2022-03-05 14:59:00', 'info@acedecors.in', 'info@acedecors.in', 'Creo', 76),
(77, 0x6d65636864657369676e2e77656270, '2022-03-05 15:00:02', 'info@acedecors.in', 'info@acedecors.in', 'Solid Edge', 77),
(90, 0x4272616e64696e672e6a7067, '2022-03-14 12:41:09', 'info@acedecors.in', '', 'Creating Brand Logo', 90),
(89, 0x4272616e64696e672e6a7067, '2022-03-14 12:36:48', 'info@acedecors.in', '', 'Brand Name Development', 89),
(88, 0x7765622d6465766c702e77656270, '2022-03-14 11:45:20', 'info@acedecors.in', 'info@acedecors.in', 'Web Hosting', 88),
(87, 0x7765622d6465766c702e77656270, '2022-03-14 11:34:36', 'info@acedecors.in', 'info@acedecors.in', 'Domain Registration', 87),
(86, 0x7765622d6465766c702e77656270, '2022-03-14 11:16:56', 'info@acedecors.in', 'info@acedecors.in', 'Website Building', 86),
(91, 0x4272616e64696e672e6a7067, '2022-03-14 12:55:34', 'info@acedecors.in', '', 'Advertising', 91),
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
(8, 89),
(9, 89),
(10, 89),
(12, 90),
(11, 90),
(13, 90),
(14, 90),
(15, 90),
(16, 90),
(57, 98),
(56, 98),
(55, 98),
(54, 98),
(53, 98),
(52, 97),
(51, 97),
(50, 97),
(49, 97),
(72, 100),
(47, 97),
(46, 97),
(65, 102),
(64, 102),
(94, 110),
(38, 89),
(93, 109),
(69, 102),
(73, 100),
(74, 100),
(75, 100),
(76, 100),
(77, 100),
(85, 103),
(84, 103),
(83, 103),
(71, 102),
(70, 102),
(66, 102),
(86, 101),
(87, 101),
(88, 101),
(89, 106),
(90, 106),
(91, 106);

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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subCategoryId`, `subCategoryName`, `subCategoryDescription`, `subCategoryCreatedBy`, `subCategoryCreatedOn`, `subCategoryModifiedBy`) VALUES
(89, 'Programming Languages', 'Programming Languages', 'info@acedecors.in', '2022-02-07 15:11:00', 'info@acedecors.in'),
(90, 'Web Designing and Development', 'Web Designing and Development', 'info@acedecors.in', '2022-02-08 16:07:05', 'info@acedecors.in'),
(97, 'Civil Design Software', 'Civil Design Software', 'info@acedecors.in', '2022-02-24 11:56:06', 'info@acedecors.in'),
(98, 'Cloud Computing', 'Cloud Computing', 'info@acedecors.in', '2022-02-24 12:29:44', 'info@acedecors.in'),
(99, 'Android Development', 'Android Development', 'info@acedecors.in', '2022-02-24 12:40:45', 'info@acedecors.in'),
(100, 'Mechanical Design Software', 'Mechanical Design Software', 'info@acedecors.in', '2022-03-05 14:49:42', 'info@acedecors.in'),
(101, 'Web Design and Development', 'Web Design and Development', 'info@acedecors.in', '2022-03-12 15:54:08', 'info@acedecors.in'),
(102, 'Digital marketing', 'Digital marketing', 'info@acedecors.in', '2022-03-12 15:55:13', 'info@acedecors.in'),
(103, 'Graphic Designing', 'Graphic Designing', 'info@acedecors.in', '2022-03-12 15:55:49', 'info@acedecors.in'),
(104, 'Business Process Set Up', 'Business Process Set Up', 'info@acedecors.in', '2022-03-12 15:56:24', 'info@acedecors.in'),
(105, 'Mobile App Development', 'Mobile App Development', 'info@acedecors.in', '2022-03-12 15:57:03', 'info@acedecors.in'),
(106, 'Branding', 'Branding', 'info@acedecors.in', '2022-03-12 15:57:26', 'info@acedecors.in'),
(108, 'Demo', 'Demo class', 'info@acedecors.in', '2022-04-05 04:49:07', 'info@acedecors.in'),
(109, 'In Plant Training', 'In Plant Training', 'info@acedecors.in', '2022-05-24 00:29:05', 'info@acedecors.in'),
(110, 'Software Testing', 'Software Testing job opportunity in udpi', 'info@acedecors.in', '2022-05-26 00:42:37', 'info@acedecors.in');

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
`AmountCollected` decimal(65,0)
,`YEAR` int
);

-- --------------------------------------------------------

--
-- Structure for view `admissionsforlastq`
--
DROP TABLE IF EXISTS `admissionsforlastq`;

DROP VIEW IF EXISTS `admissionsforlastq`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `admissionsforlastq`  AS  select count(0) AS `Admissions`,monthname((curdate() + interval -(3) month)) AS `MONTH` from `admissions` where ((monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(3) month))) and (year(`admissions`.`Modified_Date`) = year((curdate() + interval -(3) month)))) union select count(0) AS `Admissions`,monthname((curdate() + interval -(2) month)) AS `MONTH` from `admissions` where ((monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(2) month))) and (year(`admissions`.`Modified_Date`) = year((curdate() + interval -(3) month)))) union select count(0) AS `Admissions`,monthname((curdate() + interval -(1) month)) AS `MONTH` from `admissions` where ((monthname(`admissions`.`Modified_Date`) = monthname((curdate() + interval -(1) month))) and (year(`admissions`.`Modified_Date`) = year((curdate() + interval -(3) month)))) ;

-- --------------------------------------------------------

--
-- Structure for view `coursebasedenq`
--
DROP TABLE IF EXISTS `coursebasedenq`;

DROP VIEW IF EXISTS `coursebasedenq`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `coursebasedenq`  AS  select `candidates`.`Trainings` AS `Trainings`,count(`candidates`.`id`) AS `NUMBER` from `candidates` where (`candidates`.`Trainings` <> '') group by `candidates`.`Trainings` ;

-- --------------------------------------------------------

--
-- Structure for view `enqueriesforlastq`
--
DROP TABLE IF EXISTS `enqueriesforlastq`;

DROP VIEW IF EXISTS `enqueriesforlastq`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `enqueriesforlastq`  AS  select count(0) AS `Enqueries`,monthname((curdate() + interval -(3) month)) AS `MONTH` from `candidates` where ((monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(3) month))) and (year(`candidates`.`Modified_Date`) = year((curdate() + interval -(1) month)))) union select count(0) AS `Enqueries`,monthname((curdate() + interval -(2) month)) AS `MONTH` from `candidates` where ((monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(2) month))) and (year(`candidates`.`Modified_Date`) = year((curdate() + interval -(1) month)))) union select count(0) AS `Enqueries`,monthname((curdate() + interval -(1) month)) AS `MONTH` from `candidates` where ((monthname(`candidates`.`Modified_Date`) = monthname((curdate() + interval -(1) month))) and (year(`candidates`.`Modified_Date`) = year((curdate() + interval -(1) month)))) ;

-- --------------------------------------------------------

--
-- Structure for view `feescollectionlastm`
--
DROP TABLE IF EXISTS `feescollectionlastm`;

DROP VIEW IF EXISTS `feescollectionlastm`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `feescollectionlastm`  AS  select `a`.`id` AS `Id`,`a`.`Name` AS `Name`,`a`.`CoursesOpted` AS `Course`,`f`.`TotalFees` AS `TotalFees`,`f`.`DueDate` AS `DueDate`,sum(`f`.`PaidFees`) AS `PaidFees` from (`admissions` `a` join `fees` `f` on((`a`.`id` = `f`.`Admissionid`))) group by `f`.`TotalFees`,`a`.`Name`,`a`.`CoursesOpted` order by `a`.`id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `monthlyincome`
--
DROP TABLE IF EXISTS `monthlyincome`;

DROP VIEW IF EXISTS `monthlyincome`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `monthlyincome`  AS  select month(`fees`.`Modified_Date`) AS `monthNum`,sum(`fees`.`PaidFees`) AS `AmountCollected`,date_format(`fees`.`Modified_Date`,'%b') AS `MONTH` from `fees` where (year(`fees`.`Modified_Date`) = year(curdate())) group by `monthNum`,`MONTH` ;

-- --------------------------------------------------------

--
-- Structure for view `yearlyincome`
--
DROP TABLE IF EXISTS `yearlyincome`;

DROP VIEW IF EXISTS `yearlyincome`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `yearlyincome`  AS  select year(`fees`.`Modified_Date`) AS `YEAR`,sum(`fees`.`PaidFees`) AS `AmountCollected` from `fees` group by `YEAR` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
