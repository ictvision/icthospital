-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 09:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `host3`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(72, 'uploads/favicon7.png', 'Naveed Sattar', 'naveed@hms.com', 'Masood Town, Arifwala Road, Sahiwal', '+923126778577', '', '112'),
(81, 'uploads/black-male-symbol-vector-art-png-clip-art-thumbnail.png', 'Aftab Ahmad', 'iffiahmed18@gmail.com', 'BV-II Civil lines Sahiwal', '03045054937', '', '749');

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed`
--

CREATE TABLE `alloted_bed` (
  `id` int(100) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alloted_bed`
--

INSERT INTO `alloted_bed` (`id`, `number`, `category`, `patient`, `a_time`, `d_time`, `status`, `x`, `bed_id`) VALUES
(47, '', '', '70', '19 July 2020 - 09:00 AM', '19 July 2020 - 12:00 AM', '0', '', 'Children Ward-Ch 20');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 NOT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `registration_time` varchar(100) NOT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `request` varchar(100) NOT NULL,
  `b_p` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pulse` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `temprature` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `weight` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient`, `doctor`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `b_p`, `pulse`, `temprature`, `weight`) VALUES
(457, '57', '153', '1571425200', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', 'check up', '10/19/19', '1571451431', '204', 'Confirmed', '1', '', '80/120', '70', '98', '58'),
(458, '58', '153', '1571770800', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', 'Thyroid', '10/21/19', '1571657021', '204', 'Confirmed', '1', '', '0', '0', '0', '0'),
(459, '59', '153', '1571770800', '05:45 PM To 06:00 PM', '05:45 PM', '06:00 PM', 'Routine Checkup', '10/23/19', '1571822446', '213', 'Confirmed', '1', '', '80/120', '70', '102', '68'),
(460, '61', '155', '1589828400', 'Not Selected', 'Not Selected', '', 'now', '05/20/20', '1589929441', '0', 'Confirmed', '1', '', '555', '4', '', ''),
(461, '61', '153', '1590433200', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', 'now', '05/20/20', '1589929442', '204', 'Confirmed', '1', '', '0', '0', '0', '0'),
(463, '65', '153', '1595185200', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', '', '07/19/20', '1595178790', '204', 'Confirmed', '1', '', '', '', '', ''),
(465, '61', '155', '1593716400', '01:45 PM To 02:00 PM', '01:45 PM', '02:00 PM', '', '07/20/20', '1595239182', '165', 'Pending Confirmation', '1', '', '0', '0', '0', '0'),
(466, '66', '155', '1594321200', '01:45 PM To 02:00 PM', '01:45 PM', '02:00 PM', '******', '07/20/20', '1595240473', '165', 'Confirmed', '1', '', '0', '0', '0', '0'),
(468, '68', '155', '1594321200', '02:00 PM To 02:15 PM', '02:00 PM', '02:15 PM', 'now', '07/21/20', '1595315055', '168', 'Confirmed', '1', '', '0', '0', '0', '0'),
(469, '68', '155', '1594321200', '02:15 PM To 02:30 PM', '02:15 PM', '02:30 PM', 'now', '07/21/20', '1595319183', '171', 'Pending Confirmation', '1', '', '0', '0', '0', '0'),
(470, '66', '155', '1596135600', '01:45 PM To 02:00 PM', '01:45 PM', '02:00 PM', '', '07/21/20', '1595324519', '165', 'Pending Confirmation', '1', '', '', '', '', ''),
(473, '65', '153', '1595617200', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', '', '07/25/20', '1595653744', '204', 'Pending Confirmation', '1', '', '', '', '90', '78'),
(472, '69', '155', '1596135600', '02:00 PM To 02:15 PM', '02:00 PM', '02:15 PM', 'now', '07/21/20', '1595326154', '168', 'Treated', '1', '', '', 'normal', '', '90'),
(474, '70', '153', '1595887200', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', 'wwww', '07/28/20', '1595942413', '204', 'Confirmed', '1', '', NULL, NULL, NULL, NULL),
(475, '68', '153', '1595973600', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', 'Xxzxzx', '07/29/20', '1596042861', '204', 'Confirmed', '1', '', NULL, NULL, NULL, NULL),
(476, '71', '153', '1596060000', '05:00 PM To 05:15 PM', '05:00 PM', '05:15 PM', 'eeee', '07/30/20', '1596127307', '204', 'Requested', '', 'Yes', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`) VALUES
(1, 'A+', '0 Bags'),
(2, 'A-', '0 Bags'),
(3, 'B+', '0 Bags'),
(4, 'B-', '0 Bags'),
(5, 'AB+', '0 Bags'),
(6, 'AB-', '0 Bags'),
(7, 'O+', '0 Bags'),
(8, 'O-', '0 Bags');

-- --------------------------------------------------------

--
-- Table structure for table `bbb`
--

CREATE TABLE `bbb` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `atendee_psw` varchar(25) NOT NULL,
  `atendee_name` varchar(25) NOT NULL,
  `modrare_psw` varchar(25) NOT NULL,
  `modrare_name` varchar(25) NOT NULL,
  `meeting_id` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_a_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_d_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `category`, `number`, `description`, `last_a_time`, `last_d_time`, `status`, `bed_id`) VALUES
(19, 'Icu', '01', 'ICU-001 bed', '10 October 2019 - 01:02 PM', '', '', 'Icu-01'),
(20, 'General Ward', '112', 'Brufen at 12am', '', '', '', 'General Ward-112'),
(21, 'Children Ward', 'Ch 20', 'CHeck', '19 July 2020 - 09:00 AM', '19 July 2020 - 12:00 AM', '', 'Children Ward-Ch 20');

-- --------------------------------------------------------

--
-- Table structure for table `bed_category`
--

CREATE TABLE `bed_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_category`
--

INSERT INTO `bed_category` (`id`, `category`, `description`) VALUES
(6, 'Icu', '10 beds'),
(7, 'Ccu', '10 beds'),
(8, 'Children', '5 beds'),
(10, 'General Ward', '50 beds'),
(14, 'rwerwe', 'werwerw'),
(15, 'Children Ward', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `x` varchar(10) CHARACTER SET utf8 NOT NULL,
  `y` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `x`, `y`) VALUES
(12, 'Cardiology', '<p>This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis. </p>\n', '', ''),
(15, 'Diagnostic imaging', 'Formerly known as X-ray, this department provides a full range of diagnostic imaging services including:\n\n', '', ''),
(17, 'Ear, Nose & Throat (ENT)', '<p>Ear nose and throat (ENT) The ENT department provides care for patients with a variety of problems, including: general ear, nose and throat diseases neck lumps cancers of the head and neck area tear duct problems facial skin lesions balance and hearing disorders snoring and sleep apnoea ENT allergy problems salivary gland diseases voice disorders.</p>\n', '', ''),
(20, 'General surgery', 'The general surgery ward covers a wide range of surgery.', '', ''),
(23, 'Maternity Deptt.', '<p>Women now have a choice of who leads their maternity care and where they give birth. Care can be led by a consultant, a GP or a midwife.</p>\n', '', ''),
(24, 'Microbiology', 'The microbiology department looks at all aspects of microbiology, such as bacterial and viral infections.\n\n', '', ''),
(26, 'Nephrology', 'This department monitors and assesses patients with kidney (renal) problems.\n', '', ''),
(27, 'Neurology', 'This unit deals with disorders of the nervous system, including the brain and spinal cord. It\'s run by doctors who specialise in this area (neurologists) and their staff.\n\n', '', ''),
(28, 'Nutrition and dietetics', 'Trained dieticians and nutritionists provide specialist advice on diet for hospital wards and outpatient clinics, forming part of a multidisciplinary team.\n\n', '', ''),
(32, 'Occupational therapy', 'This profession helps people who are physically or mentally impaired, including temporary disability after medical treatment. It practices in the fields of both healthcare and social care.\n\n', '', ''),
(33, 'Oncology', 'This department provides radiotherapy and a full range of chemotherapy treatments for cancerous tumours and blood disorders.\n\n', '', ''),
(34, 'Ophthalmology', 'Eye departments provide a range of ophthalmic services for adults and children,\n\n', '', ''),
(35, 'Orthopaedics', 'Orthopaedic departments treat problems that affect your musculoskeletal system. That\'s your muscles, joints, bones, ligaments, tendons and nerves.\n\n', '', ''),
(36, 'Pain management clinics', 'Usually run by consultant anaesthetists, these clinics aim to help treat patients with severe long-term pain that appears resistant to normal treatments.\n', '', ''),
(38, 'Physiotherapy', 'Physiotherapists promote body healing, for example after surgery, through therapies such as exercise and manipulation.\n\n', '', ''),
(39, 'Radiotherapy', 'Radiotherapy\nRun by a combination of consultant doctors and specially trained radiotherapists, this department provides radiotherapy (X-ray) treatment for conditions such as malignant tumours and cancer.\n\n', '', ''),
(40, 'Renal unit', 'Closely linked with nephrology teams at hospitals, these units provide haemodialysis treatment for patients with kidney failure. Many of these patients are on waiting lists for a kidney transplant.\n\n', '', ''),
(41, 'Rheumatology', 'Specialist doctors called rheumatologists run the unit and are experts in the field of musculoskeletal disorders (bones, joints, ligaments, tendons, muscles and nerves).\n\n', '', ''),
(42, 'Sexual health (genitourinary medicine)', 'This department provides a free and confidential service offering:\nadvice, testing and treatment for all sexually transmitted infections (STIs)\nfamily planning care (including emergency contraception and free condoms)\npregnancy testing and advice.\nIt also provides care and support for other sexual and genital problems.\nPatients are usually able to phone the department directly for an appointment and don\'t need a referral letter from their GP.\n\n\n', '', ''),
(43, 'Urology', '<p>The urology department is run by consultant urology surgeons and their surgical teams. It investigates all areas linked to kidney and bladder-based problems.</p>\n', '', ''),
(51, 'Emergency Care For Burns', '<p>Initial care and treatment of burn injuries significantly impacts healing, outcomes, function and appearance. The appropriate treatment for a burn patient depends upon the severity of the burn. For more serious injuries, treatment by a multidisciplinary team at hospital burn centers, with special capabilities, for managing burns is essential.</p>\n', '', ''),
(52, 'I.C.U', '<p>intensive care unit</p>\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `invoice` varchar(100) CHARACTER SET utf8 NOT NULL,
  `report` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `department` varchar(100) CHARACTER SET utf8 NOT NULL,
  `profile` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `procedure_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`, `procedure_id`) VALUES
(155, '', 'M. Saleem', 'saleem65@hms.com', '', '0321-6543254', '', '', '', '', '752', NULL),
(156, '', 'Dr.Strange', 'Strange@gmail.com', '', '2367845', '', '', '', '', '769', NULL),
(153, '', 'Nageen Kanwal', 'nkanwal@hms.com', 'Sahiwal', '+923016566453', 'Cardiology', ' Gynecologist', '', '', '725', '149');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `age` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ldd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `group`, `age`, `sex`, `ldd`, `phone`, `email`, `add_date`) VALUES
(18, 'Aslam', 'A+', '25', 'Male', '01-07-2020', '4563258', 'aslam@gmail.com', '07/22/20'),
(19, 'Adnan', 'B+', '26', 'Male', '03-07-2020', '568974', 'adnaN@gmail.com', '07/22/20');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `reciepient` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `subject`, `date`, `message`, `reciepient`, `user`) VALUES
(8, 'Caution', '1595403689', '<p>Stay Home Stay Safe</p>\n', 'All Patient', '1'),
(9, 'Message', '1595403848', '<p>Thanks For Your services</p>\n', 'All Doctor', '1'),
(10, 'Message', '1595403921', '<p>Thansk For Your Services</p>\n', 'All Blood Donors With Blood Group B+', '1');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`) VALUES
(1, 'admin@hms.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `category`, `date`, `note`, `amount`, `user`) VALUES
(87, 'Utility Bills', '1571654683', 'electric bill OCT-19', '500', '1'),
(88, 'Utility Bills', '1595396948', 'July bill', '2000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(57, 'Utility Bills', 'utility bills e.g. electricity,telephone,gas etc', '', ''),
(58, 'Taxes', 'Other expense', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `img_url`, `name`, `profile`, `description`) VALUES
(1, 'uploads/images.jpg', 'Dr Momenuzzaman', 'Cardiac Specialized', 'Redantium, totam rem aperiam, eaque ipsa qu ab illo inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un.'),
(2, 'uploads/doctor.png', 'Dr RahmatUllah Asif', 'Cardiac Specialized', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(3, 'uploads/download_(2)2.png', 'Dr A.R.M. Jamil', 'Cardiac Specialized', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(4, 'uploads/muser-dr-512.png', 'Dr.Strange', 'M.B.B.S', '<p>Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Doctor', ''),
(5, 'Patient', ''),
(6, 'Nurse', ''),
(7, 'Pharmacist', ''),
(8, 'Laboratorist', ''),
(10, 'Receptionist', 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `doctor`, `date`, `x`, `y`) VALUES
(72, '153', '1570906800', '', ''),
(73, '153', '1571511600', '', ''),
(74, '153', '1572116400', '', ''),
(75, '155', '1594148400', '', ''),
(80, '155', '1610305200', '', ''),
(81, '155', '1594494000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `report` varchar(10000) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `date_string` varchar(100) NOT NULL,
  `invoice_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `report_date` varchar(100) DEFAULT NULL,
  `cnic` varchar(100) DEFAULT NULL,
  `token_no` varchar(100) DEFAULT NULL,
  `sample_picker_name` varchar(100) DEFAULT NULL,
  `sample_number` varchar(100) DEFAULT NULL,
  `lab_center_id` int(10) DEFAULT NULL,
  `specimen` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `category`, `patient`, `doctor`, `date`, `category_name`, `report`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `invoice_id`, `report_date`, `cnic`, `token_no`, `sample_picker_name`, `sample_number`, `lab_center_id`, `specimen`, `image_url`) VALUES
(1968, '', '57', '153', '1571452505', '615', '', '', '1', 'Sabeeha', '0321-7654345', '', 'Nageen Kanwal', '19-10-19', '2100', '1571538900', NULL, '1', 'Mansoor', '111', 1, 'Taken in Lab', 'uploads/Alfalah2.jpg'),
(1969, '', '59', '155', '1571819103', '690', '', '', '1', 'Tajamul Hussain', '0345-4545765', '', 'M. Saleem', '23-10-19', '2102', '1571905500', NULL, '1', 'wadood', '7654', 3, 'Taken in Lab', ''),
(1971, '', '57', '153', '1571820137', '231,230,232', '', '', '1', 'Sabeeha', '0321-7654345', '', 'Nageen Kanwal', '23-10-19', '2104', '1571906520', NULL, '2', NULL, '12', 2, NULL, NULL),
(1972, '', '60', '155', '1571858903', '785', '', '', '1', 'Asif Rana', '0301-6538358', '', 'M. Saleem', '24-10-19', '2106', '1571945280', NULL, '1', NULL, '213', 1, NULL, NULL),
(1973, '', '61', '155', '1589928987', '231,232,229,228', '', '', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '20-05-20', '2107', '1589928987', NULL, '1', 'jjjj', '123', 3, 'Out Source', ''),
(1974, '', '61', '155', '1590022231', '229,228,226,225', '', '', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '21-05-20', '2110', '1590022231', NULL, '1', 'jfjfjf', 'nfnfnfnf', 3, 'Taken in Lab', ''),
(1975, '', '57', '', '1590022418', '229,228,224,223', '', '', '111', 'Sabeeha', '0321-7654345', '', '0', '21-05-20', '2111', '1590022418', NULL, '2', 'jejejr', 'hejej', 1, 'Taken in Lab', ''),
(1976, '', '61', '155', '1590510736', '231,228,229', '', 'in-process', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '26-05-20', '2113', '1590510736', NULL, '1', 'PICKER NAME', '3455', 2, 'Taken in Lab', ''),
(1977, '', '63', '155', '1590512674', '229,227,225,224,230,232', '', '', '1', 'Ahmad', '92241524352', '', 'M. Saleem', '26-05-20', '2114', '1590512674', NULL, '2', NULL, '1251335', 3, NULL, NULL),
(1978, '', '61', '155', '1590512789', '230,228,227', '', '', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '26-05-20', '2115', '1590512789', NULL, '3', 'PICKER NAME', 'NAME', 1, 'Taken in Lab', ''),
(1980, '', '63', '155', '1590513720', '861', '', 'delivered', '1', 'Ahmad', '92241524352', '', 'M. Saleem', '26-05-20', '2117', '1590513720', NULL, '4', NULL, '1245788555', 2, NULL, NULL),
(1981, '', '64', '', '1595182653', '386,714', '', 'delivered', '1', 'JIMMY CLIFF', '123456', 'STREET', '', '19-07-20', '2121', '1595182653', NULL, '1', NULL, '001', 1, NULL, NULL),
(1982, '', '70', '156', '1595397697', '230,229,227,225', '', 'ready', '1', 'Exceptionist', '03203030', '', 'Dr.Strange', '22-07-20', '2140', '1595484060', NULL, '1', NULL, '475489', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(3, 'uploads/favicon1.png', 'Zeeshan Ahmed', 'zeeshan@hms.com', 'Bosan Road, Multan', '+923006565431', '', '', '111'),
(5, 'uploads/man19-5124.png', 'Azfar Ahmed', 'azfarahmed@gmail.com', 'B-10 Block St#10', '4563258', '', '', '767');

-- --------------------------------------------------------

--
-- Table structure for table `lab_categories`
--

CREATE TABLE `lab_categories` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `reference_value` varchar(1000) NOT NULL,
  `procedure_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_category`
--

INSERT INTO `lab_category` (`id`, `category`, `description`, `reference_value`, `procedure_id`) VALUES
(139, 'General', 'all tests will be added to a general category', '', NULL),
(140, 'As per categories', 'Dummy Test Category Message', 'Check', NULL),
(141, 'Ghory Lab', 'Best one', 'Check', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab_center`
--

CREATE TABLE `lab_center` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `discription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_center`
--

INSERT INTO `lab_center` (`id`, `name`, `created_at`, `discription`) VALUES
(1, 'Main Lab', '2019-10-12 00:00:00', NULL),
(2, 'GolChakkar collection center ', '2019-10-12 00:00:00', NULL),
(3, 'Fareed Town Collection center ', '2019-10-12 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `id` int(6) UNSIGNED NOT NULL,
  `report_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `m_val` varchar(50) DEFAULT NULL,
  `f_val` varchar(50) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `test_cat` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_reports`
--

INSERT INTO `lab_reports` (`id`, `report_id`, `name`, `m_val`, `f_val`, `units`, `result`, `test_cat`, `created_at`) VALUES
(50, 1949, 'blood1', '<200', '43', 'mg/dl', '67', 'hemoglobant', '2019-09-04 06:53:49'),
(51, 1949, 'blood2', '100-160', '43', 'mg/dl', '76', 'hemoglobant', '2019-09-04 06:53:49'),
(52, 1949, 'blood4', '<150', '566', 'mg/dl', '76', 'hemoglobant', '2019-09-04 06:53:49'),
(53, 1950, 'abc', '20-30', '30-35', '5ml', '25', 'Urine abc', '2019-09-04 09:06:27'),
(54, 1950, 'xyx', '12-35', '15-20', '5ml', '18', 'Urine abc', '2019-09-04 09:06:27'),
(55, 1951, 'blood1', '<200', '43', 'mg/dl', '', 'hemogloban (HB)', '2019-09-05 07:08:09'),
(56, 1951, 'blood2', '100-160', '43', 'mg/dl', '', 'hemogloban (HB)', '2019-09-05 07:08:09'),
(57, 1951, 'blood4', '<150', '566', 'mg/dl', '', 'hemogloban (HB)', '2019-09-05 07:08:09'),
(58, 1951, 'abc', '20-30', '30-35', '5ml', '', 'Urine abc', '2019-09-05 07:08:09'),
(59, 1951, 'xyx', '12-35', '15-20', '5ml', '', 'Urine abc', '2019-09-05 07:08:09'),
(60, 1953, 'ESR', 'Upto 15', '', 'mm/1st Hour', '5', 'Haematology Report', '2019-09-06 17:18:10'),
(61, 1962, 'abc', '10', '15', '3cm', '10', 'ict-001', '2019-10-15 16:21:36'),
(62, 1962, 'def', '12', '12', '5cc', '15', 'ict-001', '2019-10-15 16:21:36'),
(63, 1963, 'abc', '10', '15', '3cm', '10', 'ict-001', '2019-10-16 01:04:24'),
(64, 1963, 'def', '12', '12', '5cc', '13', 'ict-001', '2019-10-16 01:04:24'),
(65, 1963, 'abc', '10', '15', '3cm', '10', 'ict-001', '2019-10-16 01:06:01'),
(66, 1963, 'def', '12', '12', '5cc', '13', 'ict-001', '2019-10-16 01:06:01'),
(67, 1963, 'abc', '10', '15', '3cm', '10', 'ict-001', '2019-10-16 01:09:55'),
(68, 1963, 'def', '12', '12', '5cc', '13', 'ict-001', '2019-10-16 01:09:55'),
(69, 1964, 'abc', '10', '15', '3cm', '32', 'ict-001', '2019-10-17 14:56:56'),
(70, 1964, 'def', '12', '12', '5cc', '23', 'ict-001', '2019-10-17 14:56:56'),
(71, 1966, 'abc', '10', '15', '3cm', '10', 'ict-001', '2019-10-17 18:28:17'),
(72, 1966, 'def', '12', '12', '5cc', '13', 'ict-001', '2019-10-17 18:28:17'),
(73, 1972, 'Uric Acid', '3.8-8.2', '2.8-6.1', 'mg/dl', '7.5', 'Uric Acid', '2019-10-23 19:31:12'),
(74, 1980, 'Test', '0.5', '0.19', '', '0.1', 'Test ', '2020-05-26 17:24:22'),
(75, 1980, 'Test', '0.5', '0.19', '', '9.67', 'Test ', '2020-07-06 03:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_address` varchar(500) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `img_url` varchar(500) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `registration_time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`id`, `patient_id`, `title`, `description`, `patient_name`, `patient_address`, `patient_phone`, `img_url`, `date`, `registration_time`) VALUES
(61, '58', 'Weakness', '<p>Pain in arm</p>\n\n<p>Headache</p>\n\n<p>Medicene=brufen in morning, nims at night (1 Tablet)</p>\n', 'zabi', 'BV-II Civil lines Sahiwal', '03045054937', '', '1571684400', ''),
(62, '62', 'cant sleep', '<p>yet to find out</p>\n', 'DARLINGTON', 'ADDRESS', '123456', '', '1590433200', ''),
(64, '66', 'Checking', '<p>Check Message</p>\n', 'New', 'asdfghjkl', '454545454', '', '1594321200', ''),
(65, '68', 'Check One', '<p>This Message is written for checking</p>\n', 'Buddy', 'B-10 Block St#13', '00000000047', '', '1594926000', ''),
(66, '68', 'Display Message', '<p>This messge is written to check case manager.</p>\n', 'Buddy', 'B-10 Block St#13', '00000000047', '', '1596135600', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `box` varchar(100) CHARACTER SET utf8 NOT NULL,
  `s_price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `quantity` int(100) NOT NULL,
  `generic` varchar(100) CHARACTER SET utf8 NOT NULL,
  `company` varchar(100) CHARACTER SET utf8 NOT NULL,
  `effects` varchar(100) CHARACTER SET utf8 NOT NULL,
  `e_date` varchar(70) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `price`, `box`, `s_price`, `quantity`, `generic`, `company`, `effects`, `e_date`, `add_date`) VALUES
(2869, 'Panadol', 'Tablets', '20', 'Box', '22', 19, 'Panadol', 'Pharma', 'Ruduce Headache', '31-12-2020', '07/22/20'),
(2868, 'PARACETAMOL', 'Tablets', '2', 'BOX', '3', 19, 'PARA', 'TRUST', 'HEAD', '07-04-2020', '05/26/20'),
(2870, 'Dispirin', 'Tablets', '10', 'Box', '12', 19, 'Dispirin', 'Pharma', 'Reduce Headache', '31-12-2020', '07/22/20'),
(2871, 'Z-tack', 'Capsule', '50', 'Box', '60', 9, 'Tack', 'Pharma', 'Reduce Pain', '31-12-2020', '07/22/20');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category`, `description`) VALUES
(19, 'Tablets', 'medicine in tablet format'),
(20, 'Injections', 'injectable medicine'),
(21, 'Capsule', 'Medicine in Capsule');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(6) UNSIGNED NOT NULL,
  `patient_id` varchar(200) CHARACTER SET utf8 NOT NULL,
  `membership_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `expiry` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `card_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `patient_id`, `membership_type`, `date`, `expiry`, `status`, `ion_user_id`, `created_at`, `card_no`) VALUES
(1, '511190', '1', '2019-07-30 11:03:39', '2020-07-30 11:03:39', 'Active', '718', '2019-07-30 06:03:39', '52186284603034'),
(2, '813403', '2', '2019-07-30 11:51:43', '2019-07-28 11:51:43', 'DeActive', '719', '2019-07-30 06:51:43', '44407611773418'),
(3, '35', '1', '2019-07-30 15:15:25', '2020-01-30 15:15:25', 'Active', '719', '2019-07-30 10:15:25', '00443632055333'),
(4, '813403', '1', '2019-07-30 15:21:44', '2020-01-30 15:21:44', 'Active', '719', '2019-07-30 10:21:44', '09698813142465'),
(5, '728753', '1', '2019-07-31 12:35:00', '2020-01-31 12:35:00', 'Active', '717', '2019-07-31 07:35:00', '95404724192994'),
(6, '900759', '2', '2019-07-31 12:38:23', '2020-01-31 12:38:23', 'Active', '711', '2019-07-31 07:38:23', '88914862054434'),
(7, '101223', '1', '2019-08-17 21:53:29', '2020-02-17 21:53:29', 'Active', '681', '2019-08-17 16:53:29', '52334122694560'),
(8, '911358', '1', '2019-10-14 21:35:41', '2020-10-14 21:35:41', 'Active', '739', '2019-10-14 16:35:41', '36072513177458'),
(9, '778380', '1', '2020-05-20 03:53:54', '2021-05-20 03:53:54', 'Active', '753', '2020-05-19 22:53:54', '89931700917864'),
(10, '288188', '1', '2020-05-26 20:18:23', '2021-05-26 20:18:23', 'Active', '754', '2020-05-26 15:18:23', '53874989825541'),
(11, '975539', '1', '2020-05-29 18:46:36', '2021-05-29 18:46:36', 'Active', '756', '2020-05-29 13:46:36', '43392979184817'),
(12, '397008', '1', '2020-07-20 15:20:22', '2021-07-20 15:20:22', 'Active', '760', '2020-07-20 10:20:22', '14538171512840'),
(13, '373682', '1', '2020-07-20 15:38:14', '2021-07-20 15:38:14', 'Active', '761', '2020-07-20 10:38:14', '30290107249489'),
(14, '986239', '1', '2020-07-21 12:02:53', '2021-07-21 12:02:53', 'Active', '762', '2020-07-21 07:02:53', '05070549969818');

-- --------------------------------------------------------

--
-- Table structure for table `membership_settings`
--

CREATE TABLE `membership_settings` (
  `id` int(6) UNSIGNED NOT NULL,
  `membership_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `membership_price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `expiry` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `discount` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_settings`
--

INSERT INTO `membership_settings` (`id`, `membership_name`, `membership_price`, `expiry`, `created_at`, `discount`) VALUES
(1, 'Silver', '1000', '12', '2019-07-29 10:36:10', '30'),
(2, 'Golden', '1500', '12', '2019-07-29 10:49:40', '50'),
(5, 'Super', '2000', '12', '2020-07-22 08:56:02', '80');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `date`, `type`) VALUES
(16, 'Checking', '<p>Stay Home Stay Safe.</p>\n', '1595530800', 'patient');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `z` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`) VALUES
(8, 'uploads/favicon4.png', 'Nazia Jabeen', 'nazia@hms.com', 'Shadab Colony, Bahawalpur', '+923017654345', '', '', '', '109'),
(13, 'uploads/nurse.png', 'Azfar Ahmed', 'azfar_ahmed@gmail.com', 'B-12 Block St#15', '94785665', '', '', '', '764'),
(14, 'uploads/man19-5121.png', 'Adeel Shakeel', 'jkl@gmail.com', 'B-16 Block St#16', '258745632', '', '', '', '765');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_c_s` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_a_s_1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_a_s_2` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_anaes` varchar(100) CHARACTER SET utf8 NOT NULL,
  `n_o_o` varchar(100) CHARACTER SET utf8 NOT NULL,
  `c_s_f` varchar(100) CHARACTER SET utf8 NOT NULL,
  `a_s_f_1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `a_s_f_2` varchar(11) CHARACTER SET utf8 NOT NULL,
  `anaes_f` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ot_charge` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cab_rent` varchar(100) CHARACTER SET utf8 NOT NULL,
  `seat_rent` varchar(100) CHARACTER SET utf8 NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_fees` varchar(100) CHARACTER SET utf8 NOT NULL,
  `hospital_fees` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 NOT NULL,
  `flat_discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ot_payment`
--

INSERT INTO `ot_payment` (`id`, `patient`, `doctor_c_s`, `doctor_a_s_1`, `doctor_a_s_2`, `doctor_anaes`, `n_o_o`, `c_s_f`, `a_s_f_1`, `a_s_f_2`, `anaes_f`, `ot_charge`, `cab_rent`, `seat_rent`, `others`, `discount`, `date`, `amount`, `doctor_fees`, `hospital_fees`, `gross_total`, `flat_discount`, `amount_received`, `status`, `user`) VALUES
(85, '451', 'None', '123', 'None', '125', 'dbdbd', '', '1000', '0', '1000', '', '', '', '', '', '1506195494', '2000', '2000', '0', '2000', '', '1000', 'unpaid', '614');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `m_r` varchar(100) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(100) CHARACTER SET utf8 NOT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 NOT NULL,
  `age` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bloodgroup` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `registration_time` varchar(100) NOT NULL,
  `how_added` varchar(100) CHARACTER SET utf8 NOT NULL,
  `father_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cnic` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'outdoor'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `m_r`, `remark`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`, `father_name`, `cnic`, `type`) VALUES
(67, '', 'Dummy Acc', 'dumy@dumy2.com', '155', '2020_3', 'Check', 'asdflkj', '4789526', 'Male', '20-07-2020', '', 'A+', '761', '373682', '07/20/20', '1595241494', '', NULL, NULL, 'indoor'),
(65, '', 'one', 'adeelshrif@gmail.com', '155,153', '', '', 'mmmm', '923100000000', 'Male', '', '', 'B+', '757', '77255', '07/19/20', '1595178070', '', NULL, NULL, 'outdoor'),
(66, '', 'New', 'new@test.com', '155', '', 'now', 'asdfghjkl', '454545454', 'Male', '29-06-2020', '', 'O-', '760', '397008', '07/20/20', '1595240422', '', NULL, NULL, 'outdoor'),
(64, 'uploads/ekeyFingerscannerUP03.jpg', 'JIMMY CLIFF', 'JIMMY CLIFF@test.com', '155', '', 'REMARK', 'STREET', '123456', 'Male', '13-05-1980', '', 'A+', '756', '975539', '05/29/20', '1590759995', '', NULL, NULL, 'outdoor'),
(61, '', 'ISAAC', 'ISAAC@ISAAC.COM', '155', '', 'KRKR', 'JRFJRJR', '5555555', 'Male', '06-05-2020', '', 'A+', '753', '778380', '05/20/20', '1589928834', '', NULL, NULL, 'outdoor'),
(62, 'uploads/1-28-128.png', 'DARLINGTON', 'DARLINTON@YAHOO.COM', '155', '2020_2', 'REMARK', 'ADDRESS', '123456', 'Male', '01-05-1949', '', 'A+', '754', '288188', '05/26/20', '1590506303', '', NULL, NULL, 'indoor'),
(63, '', 'Ahmad', 'ehmad@gmail.com', '', NULL, NULL, '', '92241524352', 'Male', '', '25', '', '755', '394118', '05/26/20', '', 'from_pos', 'Imtiaz', '1213355234636236', 'outdoor'),
(57, '', 'Sabeeha', 'sabeeha@hms.com', ',153', NULL, NULL, '', '0321-7654345', 'Female', '', '34', '', '748', '346388', '10/19/19', '1571451431', 'from_appointment', NULL, NULL, 'outdoor'),
(58, '', 'Dummy', 'dummy@dumy.com', '155', '2019_2', '.', 'BV-II Civil lines Sahiwal', '03045054937', 'Male', '07-10-2019', '', 'A+', '750', '186810', '10/21/19', '1571656973', '', NULL, NULL, 'indoor'),
(59, '', 'Tajamul Hussain', 'tajammul75@hms.com', ',153', NULL, NULL, '', '0345-4545765', 'Male', '', '45', '', '751', '612356', '10/23/19', '', 'from_pos', 'Abdul Rasheed', '36502-3932456-8', 'outdoor'),
(68, '', 'Buddy', 'mrbuddy@gmail.com', '155,153', '2020_4', 'now', 'B-10 Block St#13', '00000000047', 'Male', '10-07-2020', '', 'B-', '762', '986239', '07/21/20', '1595314973', '', NULL, NULL, 'indoor'),
(69, '', 'Thanos', 'thonos@gmail.com', ',155', NULL, NULL, '', '44554545454', 'Male', '', '40', '', '763', '45091', '07/21/20', '1595325741', 'from_appointment', NULL, NULL, 'outdoor'),
(70, '', 'Exceptionist', 'expetion@gmail.com', ',153', NULL, NULL, '', '03203030', 'Male', '', '90', '', '768', '925100', '07/22/20', '', 'from_pos', NULL, NULL, 'outdoor'),
(71, '', 'testpateintone', 'patient@yopmail.com', ',153', NULL, NULL, 'multan', '923100000000', 'Male', '23-05-1991', '', 'A+', '770', '918637', '07/30/20', '1596127185', '', NULL, NULL, 'outdoor');

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `deposited_amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount_received_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `deposit_type` varchar(100) NOT NULL,
  `gateway` varchar(100) NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_deposit`
--

INSERT INTO `patient_deposit` (`id`, `patient`, `payment_id`, `date`, `deposited_amount`, `amount_received_id`, `deposit_type`, `gateway`, `user`) VALUES
(1691, '64', '2119', '1590760969', '', '2119.gp', 'Cash', '', '1'),
(1690, '64', '2118', '1590692400', '', '2118.gp', 'Cash', '', '1'),
(1689, '63', '2117', '1590513831', '2456', '2117.gp', 'Cash', '', '1'),
(1688, '63', '2116', '1590513540', '3356', '2116.gp', 'Cash', '', '1'),
(1687, '61', '2115', '1590512827', '', '2115.gp', 'Cash', '', '1'),
(1686, '63', '2114', '1590512748', '', '2114.gp', 'Cash', '', '1'),
(1685, '61', '2113', '1590510805', '', '2113.gp', 'Cash', '', '1'),
(1673, '58', '2101', '1571770800', '0', '2101.gp', 'Cash', '', '1'),
(1674, '59', '2102', '1571819295', '300', '2102.gp', 'Cash', '', '1'),
(1675, '59', '2103', '1571819650', '2450', '2103.gp', 'Cash', '', '1'),
(1676, '57', '2104', '1571820170', '2350', '2104.gp', 'Cash', '', '1'),
(1677, '59', '2105', '1571770800', '1000', '2105.gp', 'Cash', '', '1'),
(1678, '60', '2106', '1571859037', '180', '2106.gp', 'Cash', '', '1'),
(1679, '61', '2107', '1589929027', '', '2107.gp', 'Cash', '', '1'),
(1680, '61', '2108', '1589828400', '', '2108.gp', 'Cash', '', '1'),
(1681, '61', '2109', '1589828400', '', '2109.gp', 'Cash', '', '1'),
(1682, '61', '2110', '1590022266', '4000', '2110.gp', 'Cash', '', '1'),
(1683, '57', '2111', '1590022470', '4000', '2111.gp', '0', '', '111'),
(1684, '62', '2112', '1590506528', '', '2112.gp', 'Cash', '', '1'),
(1672, '57', '2100', '1571452696', '900', '2100.gp', 'Cash', '', '1'),
(1671, '57', '2099', '1571425200', '1000', '2099.gp', 'Cash', '', '1'),
(1615, '35', '1', '1564479813', '0', '', 'Cash', '', '1'),
(1616, '35', '2', '1564479825', '0', '', 'Cash', '', '1'),
(1692, '65', '2120', '1595185200', '1000', '2120.gp', 'Cash', '', '1'),
(1693, '64', '2121', '1595182734', '', '2121.gp', 'Cash', '', '1'),
(1694, '61', '2122', '1594321200', '0', '2122.gp', 'Cash', '', '1'),
(1695, '61', '2123', '1593716400', '0', '2123.gp', 'Cash', '', '1'),
(1696, '64', '2124', '1595240061', '1305', '2124.gp', 'Cash', '', '1'),
(1697, '66', '2125', '1594321200', '0', '2125.gp', 'Cash', '', '1'),
(1698, '66', '2126', '1595241040', '', '2126.gp', 'Cash', '', '1'),
(1699, '58', '2127', '1595241717', '4277', '2127.gp', 'Cash', '', '1'),
(1700, '64', '2128', '1595266335', '', '2128.gp', 'Cash', '', '1'),
(1702, '66', '2129', '1594926000', '', '2129.gp', 'Cash', '', '1'),
(1714, '65', '2141', '1595617200', '', '2141.gp', 'Cash', '', '1'),
(1713, '70', '2140', '1595397799', '3822', '2140.gp', 'Cash', '', '1'),
(1705, '68', '2132', '1595316060', '2755', '2132.gp', 'Cash', '', '1'),
(1712, '70', '2139', '1595396847', '1420', '2139.gp', 'Cash', '', '1'),
(1707, '68', '2134', '1595319280', '1372', '2134.gp', 'Cash', '', '1'),
(1708, '66', '2135', '1596135600', '', '2135.gp', 'Cash', '', '1'),
(1709, '69', '2136', '1594926000', '', '2136.gp', 'Cash', '', '1'),
(1710, '69', '2137', '1596135600', '', '2137.gp', 'Cash', '', '1'),
(1711, '70', '2138', '1595395352', '3072', '2138.gp', 'Cash', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_string` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_material`
--

INSERT INTO `patient_material` (`id`, `date`, `title`, `category`, `patient`, `patient_name`, `patient_address`, `patient_phone`, `url`, `date_string`) VALUES
(73, '1590506864', 'Director', '', '62', 'DARLINGTON', 'ADDRESS', '123456', 'uploads/47-512.png', '26-05-20'),
(75, '1595321016', 'Patient Document', '', '68', 'Buddy', 'B-10 Block St#13', '00000000047', 'uploads/469413.png', '21-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 NOT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 NOT NULL,
  `deposit_type` varchar(100) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `date_string` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `remarks`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `deposit_type`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`) VALUES
(2140, '', '70', '156', '1595397799', '3900', '0', '', '', '2', '78', '3822', 'Membership patient', '3900', '-78', '', '230*950*lab*1,229*700*lab*1,227*1200*lab*1,225*1050*lab*1', '3822', 'Cash', 'unpaid', '1', 'Exceptionist', '03203030', '', 'Dr.Strange', '22-07-20'),
(2129, '', '66', '155', '1595313945', '', '0', '', '', '', '0', '0', '######', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'New', '454545454', 'asdfghjkl', 'M. Saleem', '21-07-2020'),
(2141, '', '65', '153', '1595653744', '', '0', '', '', '', '0', '0', '', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'one', '923100000000', 'mmmm', 'Nageen Kanwal', '25-07-2020'),
(2132, '', '68', '155', '1595316060', '2900', '0', '', '', '5', '145', '2755', 'now', '2480', '275', '', '78*400*diagnostic*1,25*0*others*1,35*1000*diagnostic*1,774*1500*lab*1', '2755', 'Cash', 'unpaid', '1', 'Buddy', '00000000047', 'B-10 Block St#13', 'M. Saleem', '21-07-20'),
(2139, '', '70', '156', '1595396321', '3450', '0', '', '', '2', '69', '3381', 'now', '2595', '786', '', '33*0*others*1,42*400*diagnostic*1,51*100*diagnostic*1,61*350*diagnostic*1,422*600*lab*1,862*2000*others*1', '1420', 'Cash', 'unpaid', '1', 'Exceptionist', '03203030', '', 'Dr.Strange', '22-07-20'),
(2134, '', '68', '155', '1595319280', '1400', '0', '', '', '2', '28', '1372', 'now', '1310', '62', '', '19*400*others*1,39*100*diagnostic*1,38*200*diagnostic*1,231*700*lab*1', '1372', 'Cash', 'unpaid', '1', 'Buddy', '00000000047', 'B-10 Block St#13', 'M. Saleem', '21-07-20'),
(2135, '', '66', '155', '1595324519', '', '0', '', '', '', '0', '0', '', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'New', '454545454', 'asdfghjkl', 'M. Saleem', '21-07-2020'),
(2136, '', '69', '155', '1595325742', '', '0', '', '', '2', '0', '0', 'now', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'Thanos', '44554545454', '', 'M. Saleem', '21-07-2020'),
(2137, '', '69', '155', '1595326154', '', '0', '', '', '2', '0', '0', 'now', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'Thanos', '44554545454', '', 'M. Saleem', '21-07-2020'),
(2138, '', '70', '156', '1595395352', '3200', '0', '', '', '4', '128', '3072', 'now', '2480', '592', '', '25*0*others*1,34*800*diagnostic*1,37*100*diagnostic*1,42*400*diagnostic*1,422*600*lab*1,44*200*diagnostic*1,46*300*diagnostic*1,540*200*lab*1,53*100*diagnostic*1,56*250*diagnostic*1,54*250*diagnostic*1', '3072', 'Cash', 'unpaid', '1', 'Exceptionist', '03203030', '', 'Dr.Strange', '22-07-20'),
(2128, '', '64', '155', '1595266335', '350', '0', '', '', '', '0', '350', '', '275', '75', '', '16*250*diagnostic*1,20*100*others*1', '', 'Cash', 'unpaid', '1', 'JIMMY CLIFF', '123456', 'STREET', 'M. Saleem', '20-07-20'),
(2099, '', '57', '153', '1571451431', '1000', '0', '', '', '0', '0', '1000', 'check up', '0.2', '-0.2', '', '149*1000*others*1', '1000', 'Cash', 'paid', '1', 'Sabeeha', '0321-7654345', '', 'Nageen Kanwal', '19-10-2019'),
(2100, '', '57', '153', '1571452696', '900', '0', '', '', '', '0', '900', '', '900', '0', '', '615*900*lab*1', '900', 'Cash', 'unpaid', '1', 'Sabeeha', '0321-7654345', '', 'Nageen Kanwal', '19-10-19'),
(2101, '', '58', '153', '1571657021', '0', '0', '', '', '0', '0', '0', 'Thyroid', '1', '-1', '', '***1', '0', 'Cash', 'paid', '1', 'zabi', '03045054937', 'BV-II Civil lines Sahiwal', 'Nageen Kanwal', '21-10-2019'),
(2102, '', '59', '155', '1571819295', '300', '0', '', '', '', '0', '300', '', '300', '0', '', '690*300*lab*1', '300', 'Cash', 'unpaid', '1', 'Tajamul Hussain', '0345-4545765', '', 'M. Saleem', '23-10-19'),
(2103, '', '59', '155', '1571819650', '2450', '0', '', '', '', '0', '2450', 'membership patient', '2450', '0', '', '233*600*lab*1,235*1850*lab*1', '2450', 'Cash', 'unpaid', '1', 'Tajamul Hussain', '0345-4545765', '', 'M. Saleem', '23-10-19'),
(2104, '', '57', '153', '1571820170', '2350', '0', '', '', '', '0', '2350', 'membership patient', '2350', '0', '', '231*700*lab*1,230*950*lab*1,232*700*lab*1', '2350', 'Cash', 'unpaid', '1', 'Sabeeha', '0321-7654345', '', 'Nageen Kanwal', '23-10-19'),
(2105, '', '59', '153', '1571822446', '1000', '0', '', '', '', '0', '1000', 'Routine Checkup', '1', '-1', '', '149*1000*other*1', '1000', 'Cash', 'paid', '1', 'Tajamul Hussain', '0345-4545765', '', 'Nageen Kanwal', '23-10-2019'),
(2106, '', '60', '155', '1571859037', '180', '0', '', '', '', '0', '180', '', '180', '0', '', '785*180*lab*1', '180', 'Cash', 'unpaid', '1', 'Asif Rana', '0301-6538358', '', 'M. Saleem', '24-10-19'),
(2107, '', '61', '155', '1589929027', '3300', '0', '', '', '30', '990', '2310', 'membership patient', '3300', '-990', '', '231*700*lab*1,232*700*lab*1,229*700*lab*1,228*1200*lab*1', '', 'Cash', 'unpaid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '20-05-20'),
(2108, '', '61', '155', '1589929441', '', '0', '', '', '', '0', '0', 'now', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '20-05-2020'),
(2109, '', '61', '155', '1589929442', '', '0', '', '', '', '0', '0', 'now', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '20-05-2020'),
(2110, '', '61', '155', '1590022266', '3850', '0', '', '', '30', '1155', '2695', 'membership patient', '3850', '-1155', '', '229*700*lab*1,228*1200*lab*1,226*900*lab*1,225*1050*lab*1', '4000', 'Cash', 'unpaid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '21-05-20'),
(2111, '', '57', '', '1590022470', '3600', '0', '', '', '', '0', '3600', 'membership patient', '3600', '0', '', '229*700*lab*1,228*1200*lab*1,224*1500*lab*1,223*200*lab*1', '4000', '0', 'unpaid', '111', 'Sabeeha', '0321-7654345', '', '0', '21-05-20'),
(2112, '', '62', '', '1590506528', '750', '0', '', '', '', '0', '750', '', '750', '0', '', '16*250*diagnostic*1,19*400*others*1,20*100*others*1', '', 'Cash', 'unpaid', '1', 'DARLINGTON', '123456', 'ADDRESS', '0', '26-05-20'),
(2113, '', '61', '155', '1590510805', '2600', '0', '', '', '30', '780', '1820', 'membership patient', '2600', '-780', '', '231*700*lab*1,228*1200*lab*1,229*700*lab*1', '', 'Cash', 'unpaid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '26-05-20'),
(2114, '', '63', '155', '1590512748', '6100', '0', '', '', '', '0', '6100', '', '6100', '0', '', '229*700*lab*1,227*1200*lab*1,225*1050*lab*1,224*1500*lab*1,230*950*lab*1,232*700*lab*1', '', 'Cash', 'unpaid', '1', 'Ahmad', '92241524352', '', 'M. Saleem', '26-05-20'),
(2115, '', '61', '155', '1590512827', '3350', '0', '', '', '30', '1005', '2345', 'membership patient', '3350', '-1005', '', '230*950*lab*1,228*1200*lab*1,227*1200*lab*1', '', 'Cash', 'unpaid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '26-05-20'),
(2116, '', '63', '153', '1590513540', '4600', '0', '', '', '10', '460', '4140', 'membership patient', '4600', '-460', '', '367*4600*lab*1', '3356', 'Cash', 'unpaid', '1', 'Ahmad', '92241524352', '', 'Nageen Kanwal', '26-05-20'),
(2117, '', '63', '155', '1590513831', '10000', '0', '', '', '10', '1000', '9000', 'membership patient', '10000', '-1000', '', '861*10000*lab*1', '2456', 'Cash', 'unpaid', '1', 'Ahmad', '92241524352', '', 'M. Saleem', '26-05-20'),
(2118, '', '64', '155', '1590760757', '', '0', '', '', '', '0', '0', 'REMARK', '1', '-1', '', '***1', '', 'Cash', 'paid', '1', 'JIMMY CLIFF', '123456', 'STREET', 'M. Saleem', '29-05-2020'),
(2119, '', '64', '', '1590760969', '100', '0', '', '', '', '0', '100', '', '100', '0', '', '20*100*others*1', '', 'Cash', 'unpaid', '1', 'JIMMY CLIFF', '123456', 'STREET', '0', '29-05-20'),
(2120, '', '65', '153', '1595178790', '1000', '0', '', '', '', '0', '1000', '', '1', '-1', '', '149*1000*other*1', '1000', 'Cash', 'paid', '1', 'one', '923100000000', 'mmmm', 'Nageen Kanwal', '19-07-2020'),
(2121, '', '64', '', '1595182734', '650', '0', '', '', '30', '195', '455', 'membership patient', '455', '0', '', '386*500*lab*1,714*150*lab*1', '', 'Cash', 'unpaid', '1', 'JIMMY CLIFF', '123456', 'STREET', '0', '19-07-20'),
(2122, '', '61', '155', '1595236994', '0', '0', '', '', '0', '0', '0', '', '1', '-1', '', '***1', '0', 'Cash', 'paid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '20-07-2020'),
(2123, '', '61', '155', '1595239182', '0', '0', '', '', '0', '0', '0', '', '1', '-1', '', '***1', '0', 'Cash', 'paid', '1', 'ISAAC', '5555555', 'JRFJRJR', 'M. Saleem', '20-07-2020'),
(2124, '', '64', '155', '1595240061', '1450', '0', '', '', '10', '145', '1305', 'now', '1315', '-10', '', '19*400*others*1,33*0*others*1,25*0*others*1,39*100*diagnostic*1,51*100*diagnostic*1,54*250*diagnostic*1,851*600*lab*1', '1305', 'Cash', 'unpaid', '1', 'JIMMY CLIFF', '123456', 'STREET', 'M. Saleem', '20-07-20'),
(2125, '', '66', '155', '1595240473', '0', '0', '', '', '0', '0', '0', '******', '1', '-1', '', '***1', '0', 'Cash', 'paid', '1', 'New', '454545454', 'asdfghjkl', 'M. Saleem', '20-07-2020'),
(2126, '', '66', '', '1595241040', '1710', '0', '', '', '', '0', '1710', '', '1710', '0', '', '24*60*others*1,23*0*others*1,20*100*others*1,38*200*diagnostic*1,42*400*diagnostic*1,422*600*lab*1,45*350*diagnostic*1', '', 'Cash', 'unpaid', '1', 'New', '454545454', 'asdfghjkl', '0', '20-07-20'),
(2127, '', '58', '155', '1595241717', '4550', '0', '', '', '6', '273', '4277', 'now', '3635', '642', '', '35*1000*diagnostic*1,774*1500*lab*1,38*200*diagnostic*1,43*300*diagnostic*1,47*600*diagnostic*1,51*100*diagnostic*1,57*850*diagnostic*1', '4277', 'Cash', 'unpaid', '1', 'Dummy', '03045054937', 'BV-II Civil lines Sahiwal', 'M. Saleem', '20-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `merchant_key` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  `APIUsername` varchar(100) NOT NULL,
  `APIPassword` varchar(100) NOT NULL,
  `APISignature` varchar(100) NOT NULL,
  `status` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`) VALUES
(1, 'PayPal', '', '', '', '', 'API Username', 'API Password', 'API Signature', 'test'),
(2, 'Pay U Money', 'Merchant Key', 'Salt', '', '', '', '', 'Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`) VALUES
(16, 'E.C.G', 'Payments from E.C.G', '250', 'diagnostic', 30, 0),
(78, 'USG - Pregnancy Pro', 'USG - Pregnancy Pro', '400', 'diagnostic', 30, 0),
(19, 'Ward Fee', 'Deposits from ward', '400', 'others', 0, 0),
(20, 'Admission Fees', 'Patient Admission Fees', '100', 'others', 0, 0),
(23, 'Oxyzen', 'Income From Oxyzen', '0', 'others', 0, 0),
(24, 'Nebulizer', 'Income From Nebulizer', '60', 'others', 0, 0),
(25, 'Newspaper sell', 'Income From selling old newspaper', '0', 'others', 0, 0),
(33, 'Ambulance', 'Ambulance er vara', '0', 'others', 0, 0),
(34, 'HbAIc', 'gfdsegfdgd', '800', 'diagnostic', 30, 0),
(35, 'Troponin-I', 'Pathological Test', '1000', 'diagnostic', 30, 0),
(231, 'Amylase', '', '700', 'lab', 0, 0),
(37, 'Eosinophil', 'Pathological Test', '100', 'diagnostic', 30, 0),
(38, 'Platelets', 'Pathological Test', '200', 'diagnostic', 30, 0),
(39, 'Malarial Parasites (MP)', 'Pathological Test', '100', 'diagnostic', 30, 0),
(40, 'BT/ CT', 'Pathological Test', '200', 'diagnostic', 30, 0),
(41, 'ASO Titre', 'Pathological Test', '250', 'diagnostic', 30, 0),
(42, 'CRP', 'Pathological Test', '400', 'diagnostic', 30, 0),
(43, 'R/A test', 'Pathological Test', '300', 'diagnostic', 30, 0),
(44, 'VDRL', 'Pathological Test', '200', 'diagnostic', 30, 0),
(45, 'TPHA', 'Pathological Test', '350', 'diagnostic', 30, 0),
(46, 'HBsAg (Screening)', 'Pathological Test', '300', 'diagnostic', 30, 0),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', '600', 'diagnostic', 30, 0),
(48, 'CFT for Kala Zar', 'Pathological Test', '0', 'diagnostic', 0, 0),
(49, 'CFT for Filaria', 'Pathological Test', '0', 'diagnostic', 0, 0),
(50, 'Pregnancy Test', 'Pathological Test', '150', 'diagnostic', 30, 0),
(51, 'Blood Grouping', 'Pathological Test', '100', 'diagnostic', 30, 0),
(52, 'Widal Test', 'Pathological Test', '300', 'diagnostic', 30, 0),
(53, 'RBS', 'Pathological Test', '100', 'diagnostic', 30, 0),
(54, 'Blood Urea', 'Pathological Test', '250', 'diagnostic', 30, 0),
(55, 'S. Creatinine', 'Pathological Test', '250', 'diagnostic', 30, 0),
(56, 'S. cholesterol', 'Pathological Test', '250', 'diagnostic', 30, 0),
(57, 'Fasting Lipid Profile', 'Pathological Test', '850', 'diagnostic', 30, 0),
(58, 'S. Bilirubin', 'Pathological Test', '150', 'diagnostic', 30, 0),
(59, 'S. Alkaline Phosohare', 'Pathological Test', '300', 'diagnostic', 30, 0),
(60, 'S. Albumin', 'Pathological Test', '250', 'diagnostic', 30, 0),
(61, 'S. Calcium', 'Pathological Test', '350', 'diagnostic', 30, 0),
(62, 'RBS with CUS', 'Pathological Test', '160', 'diagnostic', 30, 0),
(63, 'SGPT', 'Pathological Test', '300', 'diagnostic', 30, 0),
(64, 'SGOT', 'Pathological Test', '300', 'diagnostic', 30, 0),
(65, 'Urine for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0),
(66, 'Urine C/S', 'Pathological Test', '350', 'diagnostic', 30, 0),
(67, 'Stool for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0),
(68, 'Semen Analysis', 'Pathological Test', '300', 'diagnostic', 30, 0),
(69, 'S. Electrolyte', 'Pathological Test', '800', 'diagnostic', 30, 0),
(70, 'S. T3/ T4/ THS', 'Pathological Test', '1000', 'diagnostic', 30, 0),
(71, 'MT', 'Pathological Test', '150', 'diagnostic', 30, 0),
(77, 'USG - Whole Abdomen ', 'USG - Whole Abdomen ', '400', 'diagnostic', 30, 0),
(73, 'ECHO Normal', 'ksdjkfsd', '700', 'diagnostic', 30, 0),
(76, 'x-ray chest', 'Normal', '200', 'diagnostic', 10, 0),
(79, 'USG - KUB', 'USG - KUB', '500', 'diagnostic', 20, 0),
(80, 'USG - Liver', 'USG - Liver', '400', 'diagnostic', 30, 0),
(81, 'USG - Breast (Left)', 'USG - Breast (Left)', '400', 'diagnostic', 30, 0),
(82, 'USG - Breast (Right)', 'USG - Breast (Right)', '400', 'diagnostic', 30, 0),
(83, 'X-RAY - Ba MealS+D  ', 'X-RAY - Ba MealS+D  ', '1400', 'diagnostic', 20, 0),
(84, 'X-RAY - Ba Swallo Oesopha', 'X-RAY - Ba Swallo Oesopha', '1000', 'diagnostic', 20, 0),
(85, 'X-RAY - KUB                         ', 'X-RAY - KUB ', '500', 'diagnostic', 20, 0),
(86, 'X-RAY - Leg Joint(B/V)(L/R)', 'X-RAY - Leg Joint(B/V)(L/R)', '500', 'diagnostic', 20, 0),
(87, 'X-RAY -Knee Joint(L/R)', 'X-RAY -Knee Joint(L/R)', '500', 'diagnostic', 20, 0),
(88, 'X-RAY - Finger(B/V) ', 'X-RAY - Finger(B/V) ', '350', 'diagnostic', 20, 0),
(89, 'X-RAY - Wrist(B/V)(L/R) ', 'X-RAY - Wrist(B/V)(L/R) ', '350', 'diagnostic', 20, 0),
(90, 'X-RAY - Hand(B/V)(L/R)                   ', 'X-RAY - Hand(B/V)(L/R)       ', '350', 'diagnostic', 20, 0),
(91, 'X-RAY - Elbow(B/V)(L/R)', 'X-RAY - Elbow(B/V)(L/R)', '350', 'diagnostic', 20, 0),
(92, 'X-RAY - Erm(B/V)(L/R )', 'X-RAY - Erm(B/V)(L/R )', '350', 'diagnostic', 20, 0),
(93, 'X-RAY - Shoulder Joint (B/V)', 'X-RAY - Shoulder Joint (B/V)', '500', 'diagnostic', 20, 0),
(94, 'X-RAY - Shoulder Joint (A/P)', 'X-RAY - Shoulder Joint (A/P)', '350', 'diagnostic', 20, 0),
(95, 'X-RAY - Foot (B/V)', 'X-RAY - Foot (B/V)', '350', 'diagnostic', 20, 0),
(96, 'X-RAY - Thigh(B/V)', 'X-RAY - Thigh(B/V)', '500', 'diagnostic', 20, 0),
(97, 'X-RAY - Ankle(B/V)', 'X-RAY - Ankle(B/V)', '350', 'diagnostic', 20, 0),
(98, 'X-RAY - Hip Joint(A/P)', 'X-RAY - Hip Joint(A/P)', '350', 'diagnostic', 20, 0),
(99, 'X-RAY - Pelvis(A/P)', 'X-RAY - Pelvis(A/P)', '500', 'diagnostic', 20, 0),
(100, 'X-RAY - L/S(B/V)(Lamber Spine)', 'X-RAY - L/S(B/V)(Lamber Spine)', '500', 'diagnostic', 20, 0),
(101, 'X-RAY - L/S(A/P)(LamberSpine)', 'X-RAY - L/S(A/P)(LamberSpine)', '500', 'diagnostic', 20, 0),
(102, 'X-RAY - D/L(A/P)(Thoracic)', 'X-RAY - D/L(A/P)(Thoracic)', '500', 'diagnostic', 20, 0),
(103, 'X-RAY - Mandable(B/V)', 'X-RAY - Mandable(B/V)', '500', 'diagnostic', 20, 0),
(104, 'X-RAY -C/S(AP)(Carvicai)', 'X-RAY -C/S(AP)(Carvicai)', '500', 'diagnostic', 20, 0),
(105, 'X-RAY - PNS (AP)', 'X-RAY - PNS (AP)', '350', 'diagnostic', 20, 0),
(106, 'ESR', 'Patho Test', '150', 'diagnostic', 30, 0),
(107, 'FBS CUS', 'Pathological test', '160', 'diagnostic', 30, 0),
(108, 'Hb%', 'Pathological test', '100', 'diagnostic', 30, 0),
(109, 'Physio-Therapy', 'Therapy', '1000', '', 0, 0),
(114, '2HABF', 'Pathological test', '100', 'diagnostic', 30, 0),
(113, 'FBS', 'Pathological test', '100', 'diagnostic', 30, 0),
(115, 'S. TSH', 'Pathological test', '400', 'diagnostic', 30, 0),
(116, 'S. T3', 'Pathological test', '400', 'diagnostic', 30, 0),
(117, 'DC', 'Pathological test', '200', 'diagnostic', 30, 0),
(118, 'TC', 'Pathological test', '200', 'diagnostic', 30, 0),
(119, 'X-Ray CXR (Digital)', 'X-Ray', '500', 'diagnostic', 20, 0),
(120, 'S. Uric acid', 'Pathological test', '250', 'diagnostic', 30, 0),
(122, 'U.S.G OF L/A ', 'U.S.G', '400', 'diagnostic', 30, 0),
(125, 'Rt knee joient b/v', 'X-Ray', '500', 'diagnostic', 20, 0),
(126, 'eosinphil', 'Pathology Test', '100', 'diagnostic', 0, 0),
(232, 'Amylase (Urine)', '', '700', 'lab', 0, 0),
(230, 'Ammonia (NH3)', '', '950', 'lab', 0, 0),
(861, 'Test ', '', '10000', 'lab', 0, 0),
(862, 'Burn Injury', 'Test  Message', '2000', 'others', 30, 0),
(863, 'Burn Injury', '', '2000', 'lab', 0, 0),
(229, 'Aminophlline / Theophylline', '', '700', 'lab', 0, 0),
(228, 'Amino Acid Chromatography', '', '1200', 'lab', 0, 0),
(227, 'Amino Acid', '', '1200', 'lab', 0, 0),
(149, '153_Nageen Kanwal', '', '1000', 'other', 0, 0),
(226, 'Alpha-MDBH', '', '900', 'lab', 0, 0),
(225, 'Alpha  Fetoprotein (AFP)', '', '1050', 'lab', 0, 0),
(224, 'ALPHA 1-Anti Trypsin Level(L-1)', '', '1500', 'lab', 0, 0),
(223, 'Alkaline Phosphate', '', '200', 'lab', 0, 0),
(222, 'Aldosterone Level', '', '1600', 'lab', 0, 0),
(221, 'Aldolase (Serum)', '', '1500', 'lab', 0, 0),
(220, 'Alcohol Level', '', '2000', 'lab', 0, 0),
(219, 'Albumin (Urine)', '', '200', 'lab', 0, 0),
(218, 'Albumin', '', '200', 'lab', 0, 0),
(217, 'ALA Urine', '', '1200', 'lab', 0, 0),
(216, 'AFB Smear', '', '500', 'lab', 0, 0),
(215, 'ACTH', '', '1700', 'lab', 0, 0),
(214, 'ACE Levels', '', '3000', 'lab', 0, 0),
(213, 'Acid Phosphate (Total)', '', '1200', 'lab', 0, 0),
(212, 'Acid Phosphate (Prostatic)', '', '1200', 'lab', 0, 0),
(211, 'Acid Phosphate', '', '1200', 'lab', 0, 0),
(210, 'G F R', '', '700', 'lab', 0, 0),
(209, 'Absolute Values/Cell Counts', '', '300', 'lab', 0, 0),
(208, 'Absolute Eosinophil Count', '', '300', 'lab', 0, 0),
(207, 'Abnormal Hb Quantitation', '', '1000', 'lab', 0, 0),
(206, 'A/G Ratio', '', '600', 'lab', 0, 0),
(205, '5-HIAA (Hydroxy Indole Acetic Acid)', '', '3500', 'lab', 0, 0),
(204, '25-Hydrox Vitamin D-3', '', '1890', 'lab', 0, 0),
(203, '17-OH CBCB (17-OHP)', '', '1800', 'lab', 0, 0),
(202, '17-Ketosteroids (24 hrs Urine)', '', '1700', 'lab', 0, 0),
(201, 'Dengue NS1', '', '1000', 'lab', 0, 0),
(233, 'ANA', '', '600', 'lab', 0, 0),
(234, 'Anti Nuclear Antibody (ANA) by Elisa', '', '1300', 'lab', 0, 0),
(235, 'ANCA-C', '', '1850', 'lab', 0, 0),
(236, 'ANCA-C (lgG)', '', '1850', 'lab', 0, 0),
(237, 'ANCA-C (lgM)', '', '1850', 'lab', 0, 0),
(238, 'ANCA-P', '', '1850', 'lab', 0, 0),
(239, 'Androgen Level', '', '1750', 'lab', 0, 0),
(240, 'Androstenidione Level', '', '1750', 'lab', 0, 0),
(241, 'Anemia Absolute Values', '', '2000', 'lab', 0, 0),
(242, 'Anti B2-Glycoprotein (lgG/lgM)', '', '2000', 'lab', 0, 0),
(243, 'Anti B2-Glycoprotein 1 Screen', '', '2000', 'lab', 0, 0),
(244, 'Anti Cardiac Abs (IFA Method)', '', '1000', 'lab', 0, 0),
(245, 'Anti Cardiolipin lgG', '', '1550', 'lab', 0, 0),
(246, 'Anti Cardiolipin lgM', '', '1550', 'lab', 0, 0),
(247, 'Anti CCP (Cyclic Citrullinated Peptide)', '', '1650', 'lab', 0, 0),
(248, 'Anti Cytoplasmic Antibodies', '', '2600', 'lab', 0, 0),
(249, 'Anti DNA', '', '2500', 'lab', 0, 0),
(250, 'Anti DS DNA', '', '1200', 'lab', 0, 0),
(251, 'Anti DS DNA lgG', '', '1200', 'lab', 0, 0),
(252, 'Anti DS DNA lgM', '', '1200', 'lab', 0, 0),
(253, 'Anti Endomysial Abs', '', '1500', 'lab', 0, 0),
(254, 'Anti Epstein Barr Virus lgG (EBV)', '', '1250', 'lab', 0, 0),
(255, 'Anti Epstein Barr Virus lgM (EBV)', '', '1250', 'lab', 0, 0),
(256, 'Anti GBM (Glomerular Basement Mem)', '', '2500', 'lab', 0, 0),
(257, 'Anti Gliadin Antibodies lgA', '', '1450', 'lab', 0, 0),
(258, 'Anti Gliadin Antibodies lgG', '', '1450', 'lab', 0, 0),
(259, 'Anti Gliadin Antibodies lgM', '', '1450', 'lab', 0, 0),
(260, 'Anti HB Core (Total)', '', '2000', 'lab', 0, 0),
(261, 'Anti HB Core lgG', '', '900', 'lab', 0, 0),
(262, 'Anti HB Core lgM', '', '900', 'lab', 0, 0),
(263, 'Anti HBe (ELISA)', '', '1000', 'lab', 0, 0),
(264, 'Anti HbSAg (ELISA)', '', '900', 'lab', 0, 0),
(265, 'Anti HCV (ELISA)', '', '1000', 'lab', 0, 0),
(266, 'Anti HCV (Screening)', '', '300', 'lab', 0, 0),
(267, 'Anti HDV lgM', '', '1500', 'lab', 0, 0),
(268, 'Anti HEV lgG', '', '1000', 'lab', 0, 0),
(269, 'Anti HEV lgM', '', '1050', 'lab', 0, 0),
(270, 'Anti HGB', '', '2500', 'lab', 0, 0),
(271, 'Anti HGV lgG', '', '2500', 'lab', 0, 0),
(272, 'Anti HGV lgM', '', '2500', 'lab', 0, 0),
(273, 'Anti HIV - 1 & 2 (ELISA)', '', '1200', 'lab', 0, 0),
(274, 'Anti HIV (Screening)', '', '450', 'lab', 0, 0),
(275, 'Anti HSV IgG (1+2)', '', '3200', 'lab', 0, 0),
(276, 'Anti HSV IgM (1+2)', '', '3200', 'lab', 0, 0),
(277, 'Anti JO-1', '', '2400', 'lab', 0, 0),
(278, 'Anti Mullerian Harmone', '', '4000', 'lab', 0, 0),
(279, 'Anti Lacto Ferrin', '', '3200', 'lab', 0, 0),
(280, 'Anti Leucocyte Plasma Abs', '', '1600', 'lab', 0, 0),
(281, 'Anti Microsomal Abs (AMA)', '', '2000', 'lab', 0, 0),
(282, 'Anti Mitochondrial Antibody', '', '1400', 'lab', 0, 0),
(283, 'Anti Nucleosome (Lupus Abs SLE)', '', '2600', 'lab', 0, 0),
(284, 'Anti Nucleotide Abs', '', '1800', 'lab', 0, 0),
(285, 'Anti Phospholipid lgG', '', '1200', 'lab', 0, 0),
(286, 'Anti Phospholipid lgM', '', '1200', 'lab', 0, 0),
(287, 'Anti Prothrombine (Screen)', '', '1500', 'lab', 0, 0),
(288, 'Anti Prothrombine lgA', '', '1600', 'lab', 0, 0),
(289, 'Anti Prothrombine lgG', '', '1600', 'lab', 0, 0),
(290, 'Anti SCL-70', '', '1400', 'lab', 0, 0),
(291, 'Anti Smooth Muscle Abs (SMA)', '', '1450', 'lab', 0, 0),
(292, 'Anti Sperm Antibodies', '', '1350', 'lab', 0, 0),
(293, 'Anti SS-A (RO)', '', '1500', 'lab', 0, 0),
(294, 'Anti SS-B (LA)', '', '1500', 'lab', 0, 0),
(295, 'Anti Thrombin-III', '', '1350', 'lab', 0, 0),
(296, 'Anti Thyroglobulin Anitbodies', '', '1400', 'lab', 0, 0),
(297, 'Anti Tissue Transgludaminase lgA', '', '1400', 'lab', 0, 0),
(298, 'Anti Tissue Transgludaminase lgG', '', '1400', 'lab', 0, 0),
(299, 'APO Lipoprotein A', '', '2000', 'lab', 0, 0),
(300, 'APO Lipoprotein B', '', '2000', 'lab', 0, 0),
(301, 'APTT (Activated Partial Thromboplasti)', '', '300', 'lab', 0, 0),
(302, 'Arterial Blood Gases (ABG\'s)', '', '1800', 'lab', 0, 0),
(303, 'Ascitic Fluid For AFB Culture', '', '1200', 'lab', 0, 0),
(304, 'Ascitic Fluid For AFB Smear / Z.N.', '', '350', 'lab', 0, 0),
(305, 'Ascitic Fluid For Amylase', '', '700', 'lab', 0, 0),
(306, 'Ascitic Fluid For Analysis (C/E)', '', '1000', 'lab', 0, 0),
(307, 'Ascitic Fluid For C / S', '', '750', 'lab', 0, 0),
(308, 'Ascitic Fluid For Cytology', '', '850', 'lab', 0, 0),
(309, 'Ascitic Fluid For Gram Stain', '', '400', 'lab', 0, 0),
(310, 'Ascitic Fluid for LDH', '', '1000', 'lab', 0, 0),
(311, 'Ascitic Fluid For Malignant Cell', '', '1500', 'lab', 0, 0),
(312, 'Ascitic Fluid For MTB by PCR', '', '2500', 'lab', 0, 0),
(313, 'Ascitic Fluid For Protein', '', '1000', 'lab', 0, 0),
(314, 'ASO TITRE', '', '600', 'lab', 0, 0),
(315, 'Asperrgillus Abs', '', '2500', 'lab', 0, 0),
(316, 'AST (SGOT)', '', '180', 'lab', 0, 0),
(317, 'Atypical Lymphocytes', '', '150', 'lab', 0, 0),
(318, 'Azure Granules', '', '300', 'lab', 0, 0),
(319, 'B-2 Micro Globulin', '', '1450', 'lab', 0, 0),
(320, 'Bacterial Colony Count', '', '1200', 'lab', 0, 0),
(321, 'Bence Jones Protein (Urine)', '', '500', 'lab', 0, 0),
(322, 'Beta HCG', '', '900', 'lab', 0, 0),
(323, 'Bicorbonate (HCO3)', '', '300', 'lab', 0, 0),
(324, 'Bicorbonate (HCO3) (Urine', '', '800', 'lab', 0, 0),
(325, 'BIL SGPT SGOT ALK PROT ALB', '', '500', 'lab', 0, 0),
(326, 'BIL SGPT SGOT ALK PROT GG', '', '500', 'lab', 0, 0),
(327, 'Bilirubin Direct', '', '200', 'lab', 0, 0),
(328, 'Bilirubin Indirect', '', '200', 'lab', 0, 0),
(329, 'Bilirubin Total', '', '200', 'lab', 0, 0),
(330, 'Biopsy Multiple', '', '4000', 'lab', 0, 0),
(331, 'Biopsy For H/P', '', '3000', 'lab', 0, 0),
(332, 'Biopsy (Extra Large)', '', '2500', 'lab', 0, 0),
(333, 'Biopsy Large', '', '2500', 'lab', 0, 0),
(334, 'Biopsy Small', '', '1500', 'lab', 0, 0),
(335, 'Biopsy Medium', '', '2000', 'lab', 0, 0),
(336, 'Bleeding Time', '', '300', 'lab', 0, 0),
(337, 'Blood C/E Retic Count', '', '600', 'lab', 0, 0),
(338, 'CBC-Blood Complete Examination WI', '', '500', 'lab', 0, 0),
(339, 'CBC-Dengue', '', '500', 'lab', 0, 0),
(340, 'Blood Culture For(Aerobic & Anaerobic)', '', '950', 'lab', 0, 0),
(341, 'Blood Eosinophil Count', '', '300', 'lab', 0, 0),
(342, 'Blood Film for Filariasis x', '', '1000', 'lab', 0, 0),
(343, 'Blood For C/S', '', '950', 'lab', 0, 0),
(344, 'Blood for MTB by PCR', '', '2500', 'lab', 0, 0),
(345, 'Blood Group & Cross Match', '', '1000', 'lab', 0, 0),
(346, 'Blood Group & Rh Factor', '', '50', 'lab', 0, 0),
(347, 'Blood Osmolalty x', '', '1000', 'lab', 0, 0),
(348, 'Blood for MP ICT', '', '300', 'lab', 0, 0),
(349, 'RFT/Renal Function Tests', '', '400', 'lab', 0, 0),
(350, 'Bone Marrow Biopsy', '', '4500', 'lab', 0, 0),
(351, 'Bone Marrow Slides Review', '', '2500', 'lab', 0, 0),
(352, 'Breast Milk for C/E', '', '300', 'lab', 0, 0),
(353, 'Breast Milk for Culture', '', '750', 'lab', 0, 0),
(354, 'Breast Milk for Cytology', '', '1600', 'lab', 0, 0),
(355, 'Breast Milk for Gram Stains', '', '400', 'lab', 0, 0),
(356, 'Breast Milk for ZN', '', '400', 'lab', 0, 0),
(357, 'Bronchial Washing AFB Culture', '', '1200', 'lab', 0, 0),
(358, 'Bronchial Washing C/S ', '', '750', 'lab', 0, 0),
(359, 'Bronchial Washing for Analysis', '', '1000', 'lab', 0, 0),
(360, 'Bronchial Washing for Cytology', '', '1000', 'lab', 0, 0),
(361, 'Bronchial Washing for Gram', '', '400', 'lab', 0, 0),
(362, 'Bronchial Washing for ZN ', '', '400', 'lab', 0, 0),
(363, 'Bronchial Washing MTB by PCR', '', '2500', 'lab', 0, 0),
(364, 'Brucella lgG', '', '1200', 'lab', 0, 0),
(365, 'Brucella lgM', '', '1200', 'lab', 0, 0),
(366, 'BUN', '', '200', 'lab', 0, 0),
(367, 'C-2 Monitoring x', '', '4600', 'lab', 0, 0),
(368, 'C3', '', '1000', 'lab', 0, 0),
(369, 'C-4', '', '1000', 'lab', 0, 0),
(370, 'CA 125 ', '', '1500', 'lab', 0, 0),
(371, 'CA 15-3', '', '2100', 'lab', 0, 0),
(372, 'CA 19-9', '', '1400', 'lab', 0, 0),
(373, 'CA 72-4 x', '', '3200', 'lab', 0, 0),
(374, 'Calcium', '', '300', 'lab', 0, 0),
(375, 'Calcium (Urine)', '', '450', 'lab', 0, 0),
(376, 'Calcium Ionized x', '', '500', 'lab', 0, 0),
(377, 'Calcium/Creatinine Ratio', '', '550', 'lab', 0, 0),
(378, 'Calculi Analysis (Stone) x', '', '2500', 'lab', 0, 0),
(379, 'Calculi Analysis (Urine) x', '', '1600', 'lab', 0, 0),
(380, 'Candida Albicans Abs x', '', '1500', 'lab', 0, 0),
(381, 'Carbamazepine (Tegretol,Epilepin)', '', '1200', 'lab', 0, 0),
(382, 'Cardic Enzymes (CPK,CKMB,SGOT)', '', '1500', 'lab', 0, 0),
(383, 'Casoni x', '', '1800', 'lab', 0, 0),
(384, 'Catecholamines (24hrs) x', '', '1650', 'lab', 0, 0),
(385, 'CEA', '', '1350', 'lab', 0, 0),
(386, 'CBC- 5 parts', '', '500', 'lab', 0, 0),
(387, 'Cervical Biopsy x', '', '2500', 'lab', 0, 0),
(388, 'Cervical Cone Biopsy x', '', '2500', 'lab', 0, 0),
(389, 'Cervical Swab C/S', '', '750', 'lab', 0, 0),
(390, 'Chickenpox Abs x', '', '1500', 'lab', 0, 0),
(391, 'Chickenpox lgG x', '', '3500', 'lab', 0, 0),
(392, 'Chickenpox lgM x', '', '3500', 'lab', 0, 0),
(393, 'Chloride', '', '300', 'lab', 0, 0),
(394, 'Chloride (Urine)', '', '300', 'lab', 0, 0),
(395, 'Cholesterol', '', '180', 'lab', 0, 0),
(396, 'Chylomicrons x', '', '500', 'lab', 0, 0),
(397, 'CK-MB', '', '500', 'lab', 0, 0),
(398, 'Clotting Time', '', '200', 'lab', 0, 0),
(399, 'CMV lgG', '', '1050', 'lab', 0, 0),
(400, 'CMV lgM', '', '1050', 'lab', 0, 0),
(401, 'Cocaine', '', '1250', 'lab', 0, 0),
(402, 'Cold Agglutination Test', '', '700', 'lab', 0, 0),
(403, 'Coomb\'s Test (Direct)', '', '450', 'lab', 0, 0),
(404, 'Coomb\'s Test (Indirect)', '', '450', 'lab', 0, 0),
(405, 'Copper', '', '1300', 'lab', 0, 0),
(406, 'Copper (Urine)', '', '1300', 'lab', 0, 0),
(407, 'Coprophyrins (Coprophyrins) x', '', '500', 'lab', 0, 0),
(408, 'Cortisol (A.M.)', '', '900', 'lab', 0, 0),
(409, 'Cortisol (P.M.)', '', '900', 'lab', 0, 0),
(410, 'Cortisol (Random Urine)', '', '1500', 'lab', 0, 0),
(411, 'Cortisol (24hrs Urine)', '', '900', 'lab', 0, 0),
(412, 'C-Peptide Level', '', '1350', 'lab', 0, 0),
(413, 'C-Peptide Level (Urine)', '', '2000', 'lab', 0, 0),
(414, 'CPK', '', '500', 'lab', 0, 0),
(415, 'Creatinine', '', '200', 'lab', 0, 0),
(416, 'Creatinine (Urine)', '', '400', 'lab', 0, 0),
(417, 'Creatinine Clearance', '', '750', 'lab', 0, 0),
(418, 'Cross Matching Simple', '', '250', 'lab', 0, 0),
(419, 'Cross Matching With ELISA', '', '2500', 'lab', 0, 0),
(420, 'Cross Matching With Screening', '', '1000', 'lab', 0, 0),
(421, 'CRP (High Sensivity)', '', '550', 'lab', 0, 0),
(422, 'CRP', '', '600', 'lab', 0, 0),
(423, 'CSF For AFB Culture', '', '1200', 'lab', 0, 0),
(424, 'CSF for C/E', '', '1000', 'lab', 0, 0),
(425, 'CSF for C/S', '', '750', 'lab', 0, 0),
(426, 'CSF For Chloride x', '', '800', 'lab', 0, 0),
(427, 'CSF for Cytology', '', '850', 'lab', 0, 0),
(428, 'CSF for Glucose', '', '1500', 'lab', 0, 0),
(429, 'CSF for Gram Stain', '', '400', 'lab', 0, 0),
(430, 'CSF for Lactate Level x', '', '1500', 'lab', 0, 0),
(431, 'CSF for LDH', '', '350', 'lab', 0, 0),
(432, 'CSF for lgG', '', '1500', 'lab', 0, 0),
(433, 'CSF for lgA', '', '1500', 'lab', 0, 0),
(434, 'CSF for lgM', '', '1500', 'lab', 0, 0),
(435, 'CSF for Measels lgG', '', '1250', 'lab', 0, 0),
(436, 'CSF for Measels lgM', '', '1250', 'lab', 0, 0),
(437, 'CSF for MTB By PCR', '', '2500', 'lab', 0, 0),
(438, 'CSF for Mumps Abs', '', '1450', 'lab', 0, 0),
(439, 'CSF For Oligloconal Bands', '', '2500', 'lab', 0, 0),
(440, 'CSF for Protein', '', '350', 'lab', 0, 0),
(441, 'CSF for Pyrupat x', '', '1000', 'lab', 0, 0),
(442, 'CSF for Xanthochromia', '', '500', 'lab', 0, 0),
(443, 'CSF for Z.N. Stain', '', '350', 'lab', 0, 0),
(444, 'CVP TIP for C/S', '', '750', 'lab', 0, 0),
(445, 'Cyclosporin Level', '', '3500', 'lab', 0, 0),
(446, 'Cyst Fluid for AFB/ZN', '', '400', 'lab', 0, 0),
(447, 'Cyst Fluid for Amylase x', '', '700', 'lab', 0, 0),
(448, 'Cyst Fluid for C/E', '', '1000', 'lab', 0, 0),
(449, 'Cyst Fluid for C/S', '', '750', 'lab', 0, 0),
(450, 'Cyst Fluid for Cytology', '', '1000', 'lab', 0, 0),
(451, 'Cyst Fluid for Gram Stain', '', '400', 'lab', 0, 0),
(452, 'Cyst Fluid for Malignant Cell', '', '1200', 'lab', 0, 0),
(453, 'Cyst Fluid for Protein', '', '1000', 'lab', 0, 0),
(454, 'Cytology (Slides)', '', '850', 'lab', 0, 0),
(455, 'D-Dimer x', '', '1000', 'lab', 0, 0),
(456, 'DHEA SO4', '', '1250', 'lab', 0, 0),
(457, 'Dengue (lgG & lgM) Screening', '', '800', 'lab', 0, 0),
(458, 'Digoxin', '', '1200', 'lab', 0, 0),
(459, 'Dilantin Level', '', '1500', 'lab', 0, 0),
(460, 'DLC (Differential Lecucyte Count)', '', '200', 'lab', 0, 0),
(461, 'E.B.V. Abs (Monospot)', '', '1600', 'lab', 0, 0),
(462, 'Ear Swab for AFB C/S', '', '1200', 'lab', 0, 0),
(463, 'Ear Swab for AFB Staining (Smear)', '', '350', 'lab', 0, 0),
(464, 'Ear Swab for C/S', '', '750', 'lab', 0, 0),
(465, 'Ear Swab for Gram Staining', '', '400', 'lab', 0, 0),
(466, 'Echynococcus Granulosus Abs', '', '2400', 'lab', 0, 0),
(467, 'ENA Profile', '', '5000', 'lab', 0, 0),
(468, 'Endo Cervical Swab Cytology', '', '1000', 'lab', 0, 0),
(469, 'Entamoeba Histolytica Abs', '', '1800', 'lab', 0, 0),
(470, 'Eosinophil Count', '', '200', 'lab', 0, 0),
(471, 'ESR', '', '80', 'lab', 0, 0),
(472, 'Estradiol (Estrogen Level, E2)', '', '1000', 'lab', 0, 0),
(473, 'Estradiol (Estrogen Level, E2)-Urine', '', '1500', 'lab', 0, 0),
(474, 'Estrogen Level, Progesterone Recept', '', '6500', 'lab', 0, 0),
(475, 'Eye Scraping for Fungus', '', '1500', 'lab', 0, 0),
(476, 'Eye Swab C/S', '', '1000', 'lab', 0, 0),
(477, 'FDP\'s (D-Dimer)', '', '1000', 'lab', 0, 0),
(478, 'F.N.A.C.', '', '2500', 'lab', 0, 0),
(479, 'F.N.A.C. Slides for Review', '', '1300', 'lab', 0, 0),
(480, 'Factor - IX', '', '1500', 'lab', 0, 0),
(481, 'Factor - V (Accelerator Globulin)', '', '1500', 'lab', 0, 0),
(482, 'Factor - VII (Procenvertine-Stuart)', '', '2500', 'lab', 0, 0),
(483, 'Factor - VIII (Anti Hemophilic Globulin)', '', '1500', 'lab', 0, 0),
(484, 'Factor - X (Stuart-Factor)', '', '2500', 'lab', 0, 0),
(485, 'Factor - XI', '', '2200', 'lab', 0, 0),
(486, 'Factor - XII (Hageman Factor)', '', '3500', 'lab', 0, 0),
(487, 'Factor - XIII', '', '3500', 'lab', 0, 0),
(488, 'Factor IX Level', '', '2500', 'lab', 0, 0),
(489, 'Factor VIII Level ', '', '2500', 'lab', 0, 0),
(490, 'Ferritin', '', '1000', 'lab', 0, 0),
(491, 'Fetal HB (Electrophoreses)', '', '1050', 'lab', 0, 0),
(492, 'FFA (Free Fatty Acid)', '', '1800', 'lab', 0, 0),
(493, 'FFP\'s', '', '2000', 'lab', 0, 0),
(494, 'FFP\'s With X-Matching', '', '2600', 'lab', 0, 0),
(495, 'Fibrinogen', '', '1000', 'lab', 0, 0),
(496, 'Fluid for C/E', '', '1000', 'lab', 0, 0),
(497, 'Fluid for C/S', '', '750', 'lab', 0, 0),
(498, 'Folic Acid (Folate)', '', '1300', 'lab', 0, 0),
(499, 'Free PSA', '', '1500', 'lab', 0, 0),
(500, 'Free PSA/PSA Ratio', '', '1500', 'lab', 0, 0),
(501, 'Free T-3 (Free Tri-lodoethyronine)', '', '1000', 'lab', 0, 0),
(502, 'Free T-4 (Free Thyroxine)', '', '1000', 'lab', 0, 0),
(503, 'Free Testosterone', '', '1300', 'lab', 0, 0),
(504, 'Free Thyroxin Index', '', '2200', 'lab', 0, 0),
(505, 'Frozen Section', '', '6500', 'lab', 0, 0),
(506, 'FSH (Follicle Stimulating Hormone)', '', '1000', 'lab', 0, 0),
(507, 'FSH (Follicle Stimulating Hormone) Urine', '', '2000', 'lab', 0, 0),
(508, 'Fungus Culture', '', '950', 'lab', 0, 0),
(509, 'Fungus Analysis', '', '0.00', 'lab', 0, 0),
(510, 'G-6 PD Test', '', '1800', 'lab', 0, 0),
(511, 'G6PD (Glucose 6 Phosphate Dehdrog)', '', '1200', 'lab', 0, 0),
(512, 'Gall Bladder Stone for Analysis', '', '2600', 'lab', 0, 0),
(513, 'Gamma GT (Gamma Glutamyl Transp)', '', '180', 'lab', 0, 0),
(514, 'Gastric Aspirate Analysis', '', '850', 'lab', 0, 0),
(515, 'Foly\'s for C/S', '', '750', 'lab', 0, 0),
(516, 'Gastrin Level', '', '2500', 'lab', 0, 0),
(517, 'GCT (Glucose Challenge Test)', '', '200', 'lab', 0, 0),
(518, 'Genital Specimen for C/S', '', '750', 'lab', 0, 0),
(519, 'Gentamycin', '', '1500', 'lab', 0, 0),
(520, 'GH (Growth Hormone)', '', '1400', 'lab', 0, 0),
(521, 'GH (Growth Hormone) after exercise', '', '1400', 'lab', 0, 0),
(522, 'Globulins', '', '250', 'lab', 0, 0),
(523, 'Gram Stain', '', '400', 'lab', 0, 0),
(524, 'GTT (Glucose Tolerance Test)', '', '300', 'lab', 0, 0),
(525, 'Gum Swab for C/S', '', '750', 'lab', 0, 0),
(526, 'Haemagglutination Test for E.Granulor', '', '3200', 'lab', 0, 0),
(527, 'Haemagglutination Test for Echinoco', '', '3500', 'lab', 0, 0),
(528, 'Haemagglutination Test for Entamoeb', '', '3200', 'lab', 0, 0),
(529, 'Haemagglutination Test for Hydatid Te', '', '3200', 'lab', 0, 0),
(530, 'Haemagglutination Test for Rubella', '', '3500', 'lab', 0, 0),
(531, 'Haemoglobin A2 (Electrophorses)', '', '2000', 'lab', 0, 0),
(532, 'Haptoglobin', '', '1050', 'lab', 0, 0),
(533, 'Anti HAV lgG', '', '1000', 'lab', 0, 0),
(534, 'Anti HAV lgM', '', '1000', 'lab', 0, 0),
(535, 'HB ', '', '100', 'lab', 0, 0),
(536, 'HB Electrophorses', '', '1100', 'lab', 0, 0),
(537, 'HbA1C (Glycosylated Haemoglobin)', '', '800', 'lab', 0, 0),
(538, 'HBeAg (ELISA)', '', '1000', 'lab', 0, 0),
(539, 'HBsAg (ELISA)', '', '800', 'lab', 0, 0),
(540, 'HBsAg (Screening)', '', '200', 'lab', 0, 0),
(541, 'HBV DNA by PCR (QL) Realtime', '', '2500', 'lab', 0, 0),
(542, 'HBV DNA by PCR (QN) Realtime', '', '3000', 'lab', 0, 0),
(543, 'HCT (Haemtocrit) (PCV)', '', '150', 'lab', 0, 0),
(544, 'HCV Genotyping By PCR Realtime', '', '3600', 'lab', 0, 0),
(545, 'HCV RNA by PCR (QL) Realtime', '', '2500', 'lab', 0, 0),
(546, 'HCV RNA by PCR (QN) Realtime', '', '3000', 'lab', 0, 0),
(547, 'HCV Serotyping', '', '3650', 'lab', 0, 0),
(548, 'HDL (Cholesterol)', '', '300', 'lab', 0, 0),
(549, 'HDV Antigen', '', '1500', 'lab', 0, 0),
(550, 'Helicobacter Pylori Abs (lgG,lgM) Elis', '', '1000', 'lab', 0, 0),
(551, 'Helicobacter Pylori Abs (lgG,lgM) Screening', '', '800', 'lab', 0, 0),
(552, 'Hepatitis \"B\" Profile', '', '6000', 'lab', 0, 0),
(553, 'Hepatitis Virological Profile', '', '12000', 'lab', 0, 0),
(554, 'HER 2-NEU (Staining)', '', '4000', 'lab', 0, 0),
(555, 'HCV RNA Detection by Real Time PC', '', '750', 'lab', 0, 0),
(556, 'HIV (Aids) by ELISA', '', '1500', 'lab', 0, 0),
(557, 'HIV (Aids) by Screening', '', '500', 'lab', 0, 0),
(558, 'HCV Genotyping By Realtime PCR', '', '3600', 'lab', 0, 0),
(559, 'HLA Typing', '', '7500', 'lab', 0, 0),
(560, 'Homocystine Level', '', '900', 'lab', 0, 0),
(561, 'Homocystine Level Urine', '', '900', 'lab', 0, 0),
(562, 'HVS for AFB Smear-ZN Stain', '', '400', 'lab', 0, 0),
(563, 'HVS for C/S', '', '750', 'lab', 0, 0),
(564, 'HVS for Gram Stain / Wet Smear', '', '400', 'lab', 0, 0),
(565, 'ICT Malaria', '', '400', 'lab', 0, 0),
(566, 'lgA', '', '1500', 'lab', 0, 0),
(567, 'lgE', '', '1000', 'lab', 0, 0),
(568, 'lgG', '', '1500', 'lab', 0, 0),
(569, 'lgM', '', '1500', 'lab', 0, 0),
(570, 'Immunofixation Electrophoreses', '', '4000', 'lab', 0, 0),
(571, 'INR', '', '300', 'lab', 0, 0),
(572, 'Insulin', '', '1300', 'lab', 0, 0),
(573, 'Insulin (After 1hr)', '', '1300', 'lab', 0, 0),
(574, 'Insulin (After 2hr)', '', '1300', 'lab', 0, 0),
(575, 'Insulin (After 3hr)', '', '1300', 'lab', 0, 0),
(576, 'Insulin (After 4hr)', '', '1300', 'lab', 0, 0),
(577, 'IVU (Intravenous Urography)', '', '3000', 'lab', 0, 0),
(578, 'Insulin (Fasting)', '', '1300', 'lab', 0, 0),
(579, 'Intact Parathormone (PTH)', '', '1400', 'lab', 0, 0),
(580, 'Iron / Fe Level', '', '400', 'lab', 0, 0),
(581, 'Joint Fluid for AFB Culture', '', '1250', 'lab', 0, 0),
(582, 'Joint Fluid for AFB Smear/ZN', '', '400', 'lab', 0, 0),
(583, 'Joint Fluid for Analysis', '', '1000', 'lab', 0, 0),
(584, 'Joint Fluid for C/S', '', '750', 'lab', 0, 0),
(585, 'Joint Fluid for Cytology', '', '1000', 'lab', 0, 0),
(586, 'Joint Fluid for Gram Stain', '', '500', 'lab', 0, 0),
(587, 'Joint Fluid for LDH', '', '500', 'lab', 0, 0),
(588, 'Joint Fluid for MTB by PCR', '', '2500', 'lab', 0, 0),
(589, 'KAHN Test', '', '800', 'lab', 0, 0),
(590, 'Kidney Stone for Analysis', '', '1000', 'lab', 0, 0),
(591, 'Knee Joint Fluid Cytology', '', '1200', 'lab', 0, 0),
(592, 'Knee Joint Fluid C/S', '', '750', 'lab', 0, 0),
(593, 'Knee Joint Fluid for Gram Stain', '', '400', 'lab', 0, 0),
(594, 'Knee Joint Fluid for ZN Stain', '', '400', 'lab', 0, 0),
(595, 'Knee Joint Malignant Cell', '', '1000', 'lab', 0, 0),
(596, 'Knee Joint Protein', '', '500', 'lab', 0, 0),
(597, 'Knee Joint Routine Examination', '', '1000', 'lab', 0, 0),
(598, 'Knee Joint Uric Acid', '', '300', 'lab', 0, 0),
(599, 'Knee Joint Uric Acid Crystals', '', '400', 'lab', 0, 0),
(600, 'Lactate Level (Lactic Acid)', '', '1400', 'lab', 0, 0),
(601, 'LAP Score Level (Leucocyte Alkaline)', '', '1500', 'lab', 0, 0),
(602, 'LDH (Lactic Dehydrogenase)', '', '400', 'lab', 0, 0),
(603, 'LDL Cholestrol', '', '500', 'lab', 0, 0),
(604, 'LE Cells', '', '650', 'lab', 0, 0),
(605, 'LE Phnomenon', '', '1500', 'lab', 0, 0),
(606, 'Lead Level', '', '2200', 'lab', 0, 0),
(607, 'Legionella Antibodies', '', '1500', 'lab', 0, 0),
(608, 'Leishmania Donovi Antibodies', '', '1000', 'lab', 0, 0),
(609, 'Leishmania Tropica Antibodies', '', '1000', 'lab', 0, 0),
(610, 'Leptospiral Abs', '', '1600', 'lab', 0, 0),
(611, 'LH (Luteinhizing Hormone)', '', '1000', 'lab', 0, 0),
(612, 'Lipase', '', '1000', 'lab', 0, 0),
(613, 'Lipid Profile', '', '800', 'lab', 0, 0),
(614, 'Lithium (Li)', '', '900', 'lab', 0, 0),
(615, 'LFT-Liver Function Tests', '', '900', 'lab', 0, 0),
(616, 'Lupus Anticoagulant Abs', '', '1550', 'lab', 0, 0),
(617, 'Magnesium', '', '400', 'lab', 0, 0),
(618, 'Malarial Parasite (Slide Method)', '', '350', 'lab', 0, 0),
(619, 'Malarial Parasite Screening Rapid Test', '', '350', 'lab', 0, 0),
(620, 'Mantoux Test (Heafs Test)', '', '500', 'lab', 0, 0),
(621, 'MCA ', '', '1500', 'lab', 0, 0),
(622, 'MCH', '', '150', 'lab', 0, 0),
(623, 'MCHC ', '', '150', 'lab', 0, 0),
(624, 'MCV', '', '150', 'lab', 0, 0),
(625, 'Measles lgG Abs', '', '1250', 'lab', 0, 0),
(626, 'Measles lgM Abs', '', '1800', 'lab', 0, 0),
(627, 'Metabolic Studies for Stone', '', '1500', 'lab', 0, 0),
(628, 'Met-Haemoglobin', '', '800', 'lab', 0, 0),
(629, 'Microalbumin Urea (Spot Urine)', '', '1500', 'lab', 0, 0),
(630, 'Milk for AFB C/S', '', '1200', 'lab', 0, 0),
(631, 'Milk for C/S', '', '750', 'lab', 0, 0),
(632, 'Milk for Cytology', '', '1000', 'lab', 0, 0),
(633, 'Milk for Gram Stain', '', '400', 'lab', 0, 0),
(634, 'Milk for Z.N. Stain', '', '350', 'lab', 0, 0),
(635, 'Monospot', '', '850', 'lab', 0, 0),
(636, 'Morphine Derivatives', '', '1100', 'lab', 0, 0),
(637, 'Mouth Swab for C/S', '', '750', 'lab', 0, 0),
(638, 'MTB DNA By PCR (Any Specimen)', '', '2500', 'lab', 0, 0),
(639, 'Mumps Antibodies', '', '2000', 'lab', 0, 0),
(640, 'Mumps lgG', '', '1100', 'lab', 0, 0),
(641, 'Mumps lgM', '', '1100', 'lab', 0, 0),
(642, 'Mycodot (lgG/lgM) Screening', '', '400', 'lab', 0, 0),
(643, 'Mycodot lgG by ELISA', '', '1000', 'lab', 0, 0),
(644, 'Mycodot lgM by ELISA', '', '1000', 'lab', 0, 0),
(645, 'Mycoplasma Abs', '', '2500', 'lab', 0, 0),
(646, 'Myoglobin', '', '1000', 'lab', 0, 0),
(647, 'Myoglobin (Urine)', '', '1000', 'lab', 0, 0),
(648, 'Nail scraping for Fungus', '', '1400', 'lab', 0, 0),
(649, 'Nasal Screation C/S', '', '750', 'lab', 0, 0),
(650, 'Nasal Swab for C/S', '', '1000', 'lab', 0, 0),
(651, 'Neonatal Rectum C/S', '', '750', 'lab', 0, 0),
(652, 'Neonatal Umbilicus C/S', '', '750', 'lab', 0, 0),
(653, 'Nipple Discharge C/S', '', '750', 'lab', 0, 0),
(654, 'Ovalution Test', '', '1200', 'lab', 0, 0),
(655, 'Osmolality (Urine)', '', '1000', 'lab', 0, 0),
(656, 'RBC Folate Level', '', '1500', 'lab', 0, 0),
(657, 'Pack Cell', '', '1500', 'lab', 0, 0),
(658, 'Pack Cell With X-Matching', '', '2000', 'lab', 0, 0),
(659, 'PAP Smear for Cytology', '', '1000', 'lab', 0, 0),
(660, 'Peripheral Smear', '', '600', 'lab', 0, 0),
(661, 'Peritoneal Fluid for AFB C/S', '', '1200', 'lab', 0, 0),
(662, 'Peritoneal Fluid for Amylase', '', '700', 'lab', 0, 0),
(663, 'Peritoneal Fluid for Analysis', '', '1000', 'lab', 0, 0),
(664, 'Peritoneal Fluid for C/S', '', '750', 'lab', 0, 0),
(665, 'Peritoneal Fluid for Cytology', '', '1000', 'lab', 0, 0),
(666, 'Peritoneal Fluid for Gram Stain', '', '400', 'lab', 0, 0),
(667, 'Peritoneal Fluid for LDH', '', '800', 'lab', 0, 0),
(668, 'Peritoneal Fluid for Malignant Cell', '', '800', 'lab', 0, 0),
(669, 'Peritoneal Fluid for MTB by PCR', '', '2500', 'lab', 0, 0),
(670, 'Peritoneal Fluid for Z.N. Stain', '', '400', 'lab', 0, 0),
(671, 'Peritoneal Fluid for Protein', '', '800', 'lab', 0, 0),
(672, 'Phenobarbitone', '', '1500', 'lab', 0, 0),
(673, 'Phenytoin (Dilantin)', '', '1150', 'lab', 0, 0),
(674, 'Phosphorous (Phosphate) PO4', '', '300', 'lab', 0, 0),
(675, 'Phosphorous (Phosphate) PO4 Urine', '', '550', 'lab', 0, 0),
(676, 'Plasma Renin Level', '', '4000', 'lab', 0, 0),
(677, 'Platelet Count', '', '200', 'lab', 0, 0),
(678, 'Pleural Fluid for AFB Culture', '', '1250', 'lab', 0, 0),
(679, 'Pleural Fluid for AFB Smear', '', '1400', 'lab', 0, 0),
(680, 'Pleural Fluid for AFB C/E', '', '1000', 'lab', 0, 0),
(681, 'Pleural Fluid for C/S', '', '750', 'lab', 0, 0),
(682, 'Pleural Fluid for Cystology', '', '1000', 'lab', 0, 0),
(683, 'Pleural Fluid for Gram Stain', '', '400', 'lab', 0, 0),
(684, 'Pleural Fluid for LDH', '', '500', 'lab', 0, 0),
(685, 'Pleural Fluid for Malignant Cells', '', '1200', 'lab', 0, 0),
(686, 'Pleural Fluid for MTB by PCR', '', '2500', 'lab', 0, 0),
(687, 'Pneumococcal Abs', '', '1800', 'lab', 0, 0),
(688, 'Protine (Spot Urine)', '', '500', 'lab', 0, 0),
(689, 'Potassium (K)', '', '300', 'lab', 0, 0),
(690, 'Potassium (Urine)', '', '300', 'lab', 0, 0),
(691, 'Pregnancy Test', '', '100', 'lab', 0, 0),
(692, 'Pre-Natal profile', '', '4000', 'lab', 0, 0),
(693, 'Progesterone', '', '1000', 'lab', 0, 0),
(694, 'Prolactin', '', '1000', 'lab', 0, 0),
(695, 'Protein Electrophoresis', '', '1800', 'lab', 0, 0),
(696, 'Protein / Creatinine Ratio Urine (Spot/', '', '500', 'lab', 0, 0),
(697, 'Protein-S', '', '2200', 'lab', 0, 0),
(698, 'P.S.A.', '', '1500', 'lab', 0, 0),
(699, 'PT (Prothrombin Time) PT with INR', '', '300', 'lab', 0, 0),
(700, 'PTH (Parathyroid Harmone)', '', '1400', 'lab', 0, 0),
(701, 'PUS for AFB Culture', '', '1250', 'lab', 0, 0),
(702, 'PUS for AFB Smear Z.N. Stain', '', '350', 'lab', 0, 0),
(703, 'PUS Swab', '', '750', 'lab', 0, 0),
(704, 'PUS for Cytology', '', '1000', 'lab', 0, 0),
(705, 'PUS for Gram Stain', '', '400', 'lab', 0, 0),
(706, 'PUS for MTB by PCR', '', '2500', 'lab', 0, 0),
(707, 'Protein Rich Plasma', '', '500', 'lab', 0, 0),
(708, 'RA Factor', '', '600', 'lab', 0, 0),
(709, 'ROTA Virus', '', '1800', 'lab', 0, 0),
(710, 'RBC\'s Count', '', '150', 'lab', 0, 0),
(711, 'RBC\'s Morphology', '', '400', 'lab', 0, 0),
(712, 'RDW', '', '150', 'lab', 0, 0),
(713, 'Red Cell Folic Acid', '', '1800', 'lab', 0, 0),
(714, 'Reducing Substances (Urine)', '', '150', 'lab', 0, 0),
(715, 'Retics Count (Reticulocyte)', '', '500', 'lab', 0, 0),
(716, 'RH Antibodies', '', '600', 'lab', 0, 0),
(717, 'Rhekestsia Abs', '', '4000', 'lab', 0, 0),
(718, 'RA Factor Quantitative', '', '1000', 'lab', 0, 0),
(719, 'ROTA Virus lgG', '', '1500', 'lab', 0, 0),
(720, 'ROTA Virus lgM', '', '1500', 'lab', 0, 0),
(721, 'Rubella lgG', '', '1000', 'lab', 0, 0),
(722, 'Rubella lgM', '', '1000', 'lab', 0, 0),
(723, 'Semen Analysis', '', '400', 'lab', 0, 0),
(724, 'Semen for AFB C/S', '', '1250', 'lab', 0, 0),
(725, 'Semen for AFB Smear', '', '350', 'lab', 0, 0),
(726, 'Semen for C/S', '', '750', 'lab', 0, 0),
(727, 'Serum Electrolytes (Na,K,Cl)', '', '700', 'lab', 0, 0),
(728, 'Serum Oxalate', '', '1750', 'lab', 0, 0),
(729, 'SGOT (AST)', '', '180', 'lab', 0, 0),
(730, 'SGPT (ALT)', '', '180', 'lab', 0, 0),
(731, 'SHBG (Sex Hormone Binding Globulin)', '', '1850', 'lab', 0, 0),
(732, 'Sinus Swab for C/S', '', '750', 'lab', 0, 0),
(733, 'Skin Scraping for Fungus', '', '650', 'lab', 0, 0),
(734, 'Sodium (Na)', '', '300', 'lab', 0, 0),
(735, 'Sodium (Urine)', '', '300', 'lab', 0, 0),
(736, 'Sputum for AFB C/S', '', '1200', 'lab', 0, 0),
(737, 'Sputum for AFB Smear / Z.N.', '', '350', 'lab', 0, 0),
(738, 'Sputum for C/S', '', '750', 'lab', 0, 0),
(739, 'Sputum for Cytology', '', '1000', 'lab', 0, 0),
(740, 'Sputum for Fungus Smear', '', '650', 'lab', 0, 0),
(741, 'Sputum for Gram Stain', '', '400', 'lab', 0, 0),
(742, 'Sputum for Malignant Cells', '', '2500', 'lab', 0, 0),
(743, 'Sputum for MTB by PCR', '', '2500', 'lab', 0, 0),
(744, 'Stool Culture & Sensitivity', '', '750', 'lab', 0, 0),
(745, 'Stool for C/E with Occult Blood', '', '500', 'lab', 0, 0),
(746, 'Stone Examination', '', '2200', 'lab', 0, 0),
(747, 'Stool for Fecal FAT', '', '1250', 'lab', 0, 0),
(748, 'Stool for H.Pylori Antigen', '', '1500', 'lab', 0, 0),
(749, 'Stool for Occult Blood', '', '400', 'lab', 0, 0),
(750, 'Stool PH & Reducing Substance', '', '300', 'lab', 0, 0),
(751, 'T3 (Tri-lodoethronine)', '', '600', 'lab', 0, 0),
(752, 'T3 Uptake', '', '1200', 'lab', 0, 0),
(753, 'T3, T4, TSH', '', '2000', 'lab', 0, 0),
(754, 'T4 (Thyroxine)', '', '800', 'lab', 0, 0),
(755, 'Tacrolimus (FK Level)', '', '5300', 'lab', 0, 0),
(756, 'Testosterone', '', '900', 'lab', 0, 0),
(757, 'Throat Swab for AFB Smear/ZN', '', '400', 'lab', 0, 0),
(758, 'Throat Swab for C/S', '', '750', 'lab', 0, 0),
(759, 'Throat Swab for Gram Stain', '', '400', 'lab', 0, 0),
(760, 'TIBC (Total Iron Binding Capacity)', '', '500', 'lab', 0, 0),
(761, 'Tissue Typing', '', '6000', 'lab', 0, 0),
(762, 'Tissue Typing (Patient/Donor X-Match)', '', '12000', 'lab', 0, 0),
(763, 'Thyroid Peroxidase Antibodies (TPO)', '', '900', 'lab', 0, 0),
(764, 'Tongue Swab for C/S', '', '750', 'lab', 0, 0),
(765, 'Torch Profile &#40;lgG,lgM&#41;', '', '5600', 'lab', 0, 0),
(766, 'Total Lipids', '', '600', 'lab', 0, 0),
(767, 'Total Protein', '', '180', 'lab', 0, 0),
(768, 'Toxoplasma lgG', '', '1000', 'lab', 0, 0),
(769, 'Toxoplasma lgM', '', '1000', 'lab', 0, 0),
(770, 'TPHA (Triponema Pallidium)', '', '1050', 'lab', 0, 0),
(771, 'Transferrin Saturation (Iron)', '', '1050', 'lab', 0, 0),
(772, 'Triglycerides', '', '180', 'lab', 0, 0),
(773, 'Triple Test', '', '2000', 'lab', 0, 0),
(774, 'Troponin-I', '', '1500', 'lab', 0, 0),
(775, 'Troponin-T ', '', '1200', 'lab', 0, 0),
(776, 'TSH (Thyroid Stimulating Hormone)', '', '800', 'lab', 0, 0),
(777, 'Troponin-I (High Sensitive) QN', '', '1800', 'lab', 0, 0),
(778, 'Typhidot lgG By ELISA', '', '1000', 'lab', 0, 0),
(779, 'Typhidot lgM By ELISA', '', '1000', 'lab', 0, 0),
(780, 'Typhidot Test (lgG,lgM) Screening', '', '600', 'lab', 0, 0),
(781, 'Unconjugated Estriol', '', '950', 'lab', 0, 0),
(782, 'Urea', '', '200', 'lab', 0, 0),
(783, 'Urea (Urine)', '', '450', 'lab', 0, 0),
(784, 'Urea Clearance', '', '4000', 'lab', 0, 0),
(785, 'Uric Acid', '', '180', 'lab', 0, 0),
(786, 'Uric Acid (Urine)', '', '500', 'lab', 0, 0),
(787, 'Urinar Protein Electrophoresis', '', '2500', 'lab', 0, 0),
(788, 'Urinary Amino Acid', '', '1800', 'lab', 0, 0),
(789, 'Urinary Amphetamines', '', '1150', 'lab', 0, 0),
(790, 'Urinary Benzodiazepine', '', '1250', 'lab', 0, 0),
(791, 'Urinary Calcium', '', '1200', 'lab', 0, 0),
(792, 'Urinary Cannabinoids', '', '1200', 'lab', 0, 0),
(793, 'Urinary Immunofixation Electrophorsis', '', '4000', 'lab', 0, 0),
(794, 'Urinary Metachromatic', '', '2000', 'lab', 0, 0),
(795, 'Urinary Mucopoly Saccbindes', '', '1100', 'lab', 0, 0),
(796, 'Urinary Myoglobulin', '', '1500', 'lab', 0, 0),
(797, 'Urinary Oxalate', '', '1750', 'lab', 0, 0),
(798, 'Urinary Phosphate', '', '300', 'lab', 0, 0),
(799, 'Urinary Porphyrin', '', '1000', 'lab', 0, 0),
(800, 'Urinary Protein', '', '50', 'lab', 0, 0),
(801, 'Urinary Protein (24 hrs)', '', '700', 'lab', 0, 0),
(802, 'Urine Complete Examination', '', '150', 'lab', 0, 0),
(803, 'Urine for AFB Smear', '', '350', 'lab', 0, 0),
(804, 'Urine for Bacterial Count', '', '800', 'lab', 0, 0),
(805, 'Urine for Bile Pigment', '', '250', 'lab', 0, 0),
(806, 'Urine for Bile Salt', '', '250', 'lab', 0, 0),
(807, 'Urine for C/S', '', '750', 'lab', 0, 0),
(808, 'Urine for Hash Metabolites', '', '2000', 'lab', 0, 0),
(809, 'Urine for Haemoglobin', '', '300', 'lab', 0, 0),
(810, 'Urine for Ketones', '', '50', 'lab', 0, 0),
(811, 'Urine for Lactate Level', '', '1800', 'lab', 0, 0),
(812, 'Urine for MTB PCR', '', '2500', 'lab', 0, 0),
(813, 'Urine for Opiates', '', '1350', 'lab', 0, 0),
(814, 'Urine for Porphobilinogen', '', '700', 'lab', 0, 0),
(815, 'Urine for Urea Creatinine Ratio', '', '500', 'lab', 0, 0),
(816, 'Urine Protein Creatinine Ratio', '', '1600', 'lab', 0, 0),
(817, 'Urine Sugar', '', '50', 'lab', 0, 0),
(818, 'Urine Sugar 1 hr ABF', '', '150', 'lab', 0, 0),
(819, 'Urine Sugar 1/2 hr ABF', '', '150', 'lab', 0, 0),
(820, 'Urine Sugar 1-1/2 hrs ABF', '', '150', 'lab', 0, 0),
(821, 'Urine Sugar 2 hrs ABF', '', '150', 'lab', 0, 0),
(822, 'Urine Sugar 2-1/2 hr ABF', '', '150', 'lab', 0, 0),
(823, 'Urine Sugar 3 hrs ABF', '', '150', 'lab', 0, 0),
(824, 'Urine Sugar after Dinner', '', '100', 'lab', 0, 0),
(825, 'Urine Sugar After Lunch', '', '150', 'lab', 0, 0),
(826, 'Urine Sugar Before Dinner', '', '150', 'lab', 0, 0),
(827, 'Urine Sugar Before Lunch', '', '150', 'lab', 0, 0),
(828, 'Urine Sugar Fasting', '', '50', 'lab', 0, 0),
(829, 'Urine Sugar Random', '', '50', 'lab', 0, 0),
(830, 'Urobilinogen', '', '150', 'lab', 0, 0),
(831, 'Vaginal Smear', '', '500', 'lab', 0, 0),
(832, 'Valporic Acid (Epival, Epilium)', '', '1200', 'lab', 0, 0),
(833, 'Vancomycin', '', '1350', 'lab', 0, 0),
(834, 'Varicella Zoster Abs', '', '1500', 'lab', 0, 0),
(835, 'VDRL (RPR)', '', '450', 'lab', 0, 0),
(836, 'Vitamin B-12', '', '1400', 'lab', 0, 0),
(837, 'VLDL', '', '600', 'lab', 0, 0),
(838, 'VMA (Vanillymandellic Acid)', '', '1500', 'lab', 0, 0),
(839, 'Von Willebrand AG Factor', '', '1350', 'lab', 0, 0),
(840, 'Water Bottle', '', '100', 'lab', 0, 0),
(841, 'DEIONIZED WATER', '', '300', 'lab', 0, 0),
(842, 'WBC Count (TLC)', '', '150', 'lab', 0, 0),
(843, 'WBC\'s Morphology', '', '600', 'lab', 0, 0),
(844, 'Wet Smear Microscopy', '', '400', 'lab', 0, 0),
(845, 'Widal Test', '', '350', 'lab', 0, 0),
(846, 'Digital OPG', '', '700', 'lab', 0, 0),
(847, 'Wound Secretion for C/S', '', '1200', 'lab', 0, 0),
(848, 'Wound Swab for AFB Smear - ZN', '', '400', 'lab', 0, 0),
(849, 'Wound Swab for C/S', '', '750', 'lab', 0, 0),
(850, 'Wound Swab for AFB Culture', '', '1200', 'lab', 0, 0),
(851, 'X-Ray Digital', '', '600', 'lab', 0, 0),
(852, 'Z.N. Staining / AFB Smear', '', '700', 'lab', 0, 0),
(853, 'Zinc Level (Serum)', '', '1400', 'lab', 0, 0),
(854, 'Zinc Level (24 hrs Urine)', '', '1400', 'lab', 0, 0),
(855, 'Anti HDV lgG', '', '2000', 'lab', 0, 0),
(857, 'USG', '', '300', 'lab', 0, 0),
(858, 'ECG', '', '250', 'lab', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(9, 'uploads/man19-5122.png', 'Adnan Admed', 'adnan@gmail.com', 'B-10 Block St#20', '789654', '', '', '766');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_expense`
--

INSERT INTO `pharmacy_expense` (`id`, `category`, `date`, `amount`, `user`) VALUES
(141, 'New Bill', '1595402391', '200', ''),
(142, 'Pending Bills', '1595402407', '800', ''),
(143, 'Paid Bills', '1595402419', '1000', '');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_expense_category`
--

INSERT INTO `pharmacy_expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(62, 'New Bill', 'test', '', ''),
(63, 'Pending Bills', 'Test', '', ''),
(64, 'Paid Bills', 'Test', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) NOT NULL,
  `flat_vat` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) NOT NULL,
  `gross_total` varchar(100) NOT NULL,
  `hospital_amount` varchar(100) NOT NULL,
  `doctor_amount` varchar(100) NOT NULL,
  `category_amount` varchar(1000) NOT NULL,
  `category_name` varchar(1000) NOT NULL,
  `amount_received` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `status`) VALUES
(1969, '', '0', '', '1595400968', '97', '0', '', '', '22', '21.34', '75.66', '', '', '', '2869*22*1*20,2868*3*1*2,2871*60*1*50,2870*12*1*10', '0', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `c_price` varchar(100) NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `symptom` varchar(100) CHARACTER SET utf8 NOT NULL,
  `advice` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `state` varchar(100) CHARACTER SET utf8 NOT NULL,
  `dd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `medicine` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `validity` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `patient`, `doctor`, `symptom`, `advice`, `state`, `dd`, `medicine`, `validity`, `note`) VALUES
(75, '1590433200', '61', '155', '<p>this is about the history</p>\n', '', '', '', '2868***50mg***1+1+1***7days***after food', '', '<p>this is note</p>\n'),
(78, '1594321200', '70', '156', '<p>Test Prescription note </p>\n', '', '', '', '2868***30mg***1+1***3days***after food', '', '<p>Dummy Note </p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(7, 'uploads/13-512.png', 'Ms Nadia Imtiaz', 'nadia@hms.com', 'Abdali Road, Multan', '+923034356789', '', '614');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `report_type`, `patient`, `description`, `doctor`, `date`, `add_date`) VALUES
(38, 'operation', 'Sabeeha*748', 'CSSS', 'Nageen Kanwal', '16-10-2019', '10/21/19'),
(39, 'birth', 'Tajamul Hussain*751', 'Birth @ hospital, Case deal by Dr. Nageen Kanwal', 'M. Saleem', '01-01-2010', '10/24/19'),
(40, 'birth', 'Exceptionist*768', 'city hospital', 'Dr.Strange', '01-07-2020', '07/22/20'),
(41, 'operation', 'Exceptionist*768', 'check', 'Dr.Strange', '02-07-2020', '07/22/20'),
(42, 'expire', 'New*760', 'test', 'Dr.Strange', '05-07-2020', '07/22/20');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img_url`, `title`, `description`) VALUES
(1, '', 'Cardiac Excellence', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(2, '', 'Cancer Treatment', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(3, '', 'Stroke Management', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
(4, '', '24 / 7 Support', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(100) CHARACTER SET utf8 NOT NULL,
  `language` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `login_title` varchar(100) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `invoice_logo` varchar(500) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `sms_gateway` varchar(100) NOT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`) VALUES
(1, 'Hospital Management System', 'Beijing Jushitan Hospital', 'Opposite D.H.Q. Hospital Road', '0300-0012345', 'info@hms.com', '#', 'Rs', 'english', 'percentage', 'percentage', 'Login Title', 'uploads/JishuitanHospitalLogo.jpg', '', 'PayPal', 'ICTCORE', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `text1` varchar(500) NOT NULL,
  `text2` varchar(500) NOT NULL,
  `text3` varchar(500) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
(1, 'Slider 1', 'uploads/who-offers-OVHC1.jpg', 'Welcome To Hospital', 'Hospital Management System', 'Hospital', '2', 'Active'),
(2, 'Best Hospital management System', 'uploads/1707260345350542.jpg', 'Best Hospital management System', 'Best Hospital management System', 'Best Hospital management System', '1', 'Inactive'),
(5, 'Slide 3', 'uploads/doctor-office-banner-background-healthcare-hospital-background-concept-87323968.jpg', 'Hospital management System', 'Healthy Life', 'Stay Safe Stay Healthy', '3', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 NOT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `date`, `message`, `recipient`, `user`) VALUES
(56, '1562757536', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 12-07-2019 Time: 10:45 AM', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +0123456789', '1'),
(57, '1562757537', 'Appointment is scheduled for you With Patient Mr Patient Date: 10-07-2019 Time: 10:45 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(58, '1562757609', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 12-07-2019 Time: 02:45 PM', 'Patient Id: 31<br> Patient Name: test<br> Patient Phone: 4343434', '1'),
(59, '1562757611', 'Appointment is scheduled for you With Patient test Date: 10-07-2019 Time: 02:45 PM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(60, '1562841164', '<p>hello this is testing</p>\n', 'Patient Id: 31<br> Patient Name: test<br> Patient Phone: 4343434', '1'),
(61, '1562841378', '<p>sdsdsd</p>\n', 'Patient Id: 32<br> Patient Name: dsasa<br> Patient Phone: 43434343434', '1'),
(62, '1562842625', '<p>asasasasasas</p>\n', 'Patient Id: 32<br> Patient Name: dsasa<br> Patient Phone: 43434343434', '1'),
(63, '2019-07-15 04:29:01', 'testing', '', '1'),
(64, '2019-07-15 04:31:57', 'testing', '', '1'),
(65, '2019-07-15 04:34:58', 'testing', '', '1'),
(66, '2019-07-15 04:36:37', 'testing', '', '1'),
(67, '2019-07-15 04:38:05', 'testing', '', '1'),
(68, '2019-07-15 04:38:42', 'testing', '', '1'),
(69, '2019-07-15 04:40:40', 'testing', '', '1'),
(70, '2019-07-15 08:34:10', 'testing', '', '1'),
(71, '2019-07-15 08:34:26', 'testing', '', '1'),
(72, '1563439334', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 18-07-2019 Time: 12:45 PM', 'Patient Id: 31<br> Patient Name: test<br> Patient Phone: 4343434', '1'),
(73, '1563439335', 'Appointment is scheduled for you With Patient test Date: 18-07-2019 Time: 12:45 PM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(74, '1563444779', 'Appointment is scheduled for you With Doctor dr.aslam Date: 18-07-2019 Time: 02:00 PM', 'Patient Id: 32<br> Patient Name: dsasa<br> Patient Phone: 43434343434', '1'),
(75, '1563444781', 'Appointment is scheduled for you With Patient dsasa Date: 18-07-2019 Time: 02:00 PM', 'Doctor Id: 148<br> Patient Name: dr.aslam<br> Doctor Phone: +0123456780', '1'),
(76, '1563515420', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 19-07-2019 Time: 10:45 AM', 'Patient Id: 32<br> Patient Name: dsasa<br> Patient Phone: 43434343434', '1'),
(77, '1563515425', 'Appointment is scheduled for you With Patient dsasa Date: 19-07-2019 Time: 10:45 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(78, '1563515534', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 19-07-2019 Time: 11:05 AM', 'Patient Id: 32<br> Patient Name: dsasa<br> Patient Phone: 43434343434', '1'),
(79, '1563515537', 'Appointment is scheduled for you With Patient dsasa Date: 19-07-2019 Time: 11:05 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(80, '1563515744', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 19-07-2019 Time: 11:25 AM', 'Patient Id: 31<br> Patient Name: test<br> Patient Phone: 4343434', '1'),
(81, '1563515746', 'Appointment is scheduled for you With Patient test Date: 19-07-2019 Time: 11:25 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(82, '1563516046', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 19-07-2019 Time: 10:45 AM', 'Patient Id: 32<br> Patient Name: dsasa<br> Patient Phone: 43434343434', '1'),
(83, '1563516055', 'Appointment is scheduled for you With Patient dsasa Date: 19-07-2019 Time: 10:45 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(84, '2019-07-20 06:15:04', 'your report ready please pick your report', '', '1'),
(85, '2019-07-25 11:22:29', 'your report ready please pick your report', '', '1'),
(86, '2019-07-25 11:22:37', 'your report delivered', '', '1'),
(87, '1564565903', '<p>hello this is ictcorre testing sms</p>\n', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(88, '1564566432', '<p>this is ictcore sms testing</p>\n', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(89, '1564566463', '<p>hghgh</p>\n', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(90, '1564567059', '<p>HELLO this is ictcore sms testing</p>\n', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(91, '2019-07-31 14:59:19', 'your report ready please pick your report', '', '1'),
(92, '2019-07-31 14:59:44', 'your report delivered', '', '1'),
(93, '1564567259', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 31-07-2019 Time: 10:35 AM', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(94, '1564567261', 'Appointment is scheduled for you With Patient arslan Date: 31-07-2019 Time: 10:35 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(95, '1564567765', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 31-07-2019 Time: 10:35 AM', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(96, '1564567767', 'Appointment is scheduled for you With Patient arslan Date: 31-07-2019 Time: 10:35 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(97, '1564569199', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 31-07-2019 Time: 10:15 AM', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(98, '1564569201', 'Appointment is scheduled for you With Patient arslan Date: 31-07-2019 Time: 10:15 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(99, '1564637784', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 01-08-2019 Time: 10:30 AM', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(100, '1564637807', 'Appointment is scheduled for you With Patient arslan Date: 01-08-2019 Time: 10:30 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(101, '1564639077', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 01-08-2019 Time: 10:45 AM', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(102, '1564639113', 'Appointment is scheduled for you With Patient arslan Date: 01-08-2019 Time: 10:45 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(103, '1564651837', 'Appointment is scheduled for you With Doctor Mr Doctor Date: 02-08-2019 Time: 10:00 AM', 'Patient Id: 35<br> Patient Name: arslan<br> Patient Phone: 923125896460', '1'),
(104, '1564651839', 'Appointment is scheduled for you With Patient arslan Date: 01-08-2019 Time: 10:00 AM', 'Doctor Id: 147<br> Patient Name: Mr Doctor<br> Doctor Phone: +0123456789', '1'),
(106, '2019-09-04 14:06:48', 'your report ready please pick your report', '', '1'),
(107, '2019-09-24 20:24:43', 'your report ready please pick your report', '', '1'),
(108, '2019-10-02 12:26:19', 'your report ready please pick your report', '', '1'),
(109, '2019-10-18 22:21:15', 'your report ready please pick your report', '', '1'),
(110, '2020-05-26 21:58:39', 'your report ready please pick your report', '', '1'),
(111, '2020-05-26 22:00:25', 'testing', '', '1'),
(112, '2020-07-06 08:24:57', 'testing', '', '1'),
(113, '2020-07-06 08:25:05', 'your report delivered', '', '1'),
(114, '2020-07-06 08:25:20', 'your report ready please pick your report', '', '1'),
(115, '2020-07-22 11:04:08', 'your report ready please pick your report', '', '1'),
(116, '2020-07-22 11:06:14', 'your report delivered', '', '1'),
(117, '2020-07-22 11:06:26', 'your report delivered', '', '1'),
(118, '1595404338', '<p>Stay Home Stay Home</p>\n', 'All Patient', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sender` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `name`, `username`, `password`, `api_id`, `sender`, `authkey`, `user`) VALUES
(1, 'Clickatell', 'rizviplabon', '', '3570596', '', '', '1'),
(2, 'MSG91', 'rizviplabon', '', '3570596', '', '54646456546456456456456', '1'),
(3, 'ICTCORE', 'ICT VISION', 'helloAdmin', 'http://core.ict.vision:180/api/', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `template` varchar(10000) NOT NULL,
  `user` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `procedure_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lab_cat_id` int(10) DEFAULT NULL,
  `sample_required` varchar(180) DEFAULT NULL,
  `reporting_day` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `template`, `user`, `x`, `procedure_id`, `lab_cat_id`, `sample_required`, `reporting_day`) VALUES
(76, 'Dengue NS1', '0', '1', '', '201', 139, 'Serum/Blood', '1'),
(77, '17-Ketosteroids (24 hrs Urine)', '0', '1', '', '202', 139, '24 hrs Urine', '1'),
(78, '17-OH CBCB (17-OHP)', '0', '1', '', '203', 139, '3-5cc clotted Blood/Serum', '1'),
(79, '25-Hydrox Vitamin D-3', '0', '1', '', '204', 139, '3-5cc clotted Blood/Serum', '1'),
(80, '5-HIAA (Hydroxy Indole Acetic Acid)', '0', '1', '', '205', 139, '24 hrs Urine', '1'),
(81, 'A/G Ratio', '0', '1', '', '206', 139, '3-5cc clotted Blood/Serum', '1'),
(82, 'Abnormal Hb Quantitation', '0', '1', '', '207', 139, '3-5cc clotted Blood/Serum', '1'),
(83, 'Absolute Eosinophil Count', '0', '1', '', '208', 139, '3cc Blood in EDTA', '1'),
(84, 'Absolute Values/Cell Counts', '0', '1', '', '209', 139, '3cc Blood in EDTA', '1'),
(85, 'G F R', '0', '1', '', '210', 139, '3-5cc clotted Blood/Serum', '1'),
(86, 'Acid Phosphate', '0', '1', '', '211', 139, '3-5cc clotted Blood/Serum', '1'),
(87, 'Acid Phosphate (Prostatic)', '0', '1', '', '212', 139, '3-5cc clotted Blood/Serum', '1'),
(88, 'Acid Phosphate (Total)', '0', '1', '', '213', 139, '3-5cc clotted Blood/Serum', '1'),
(89, 'ACE Levels', '0', '1', '', '214', 139, '.', '1'),
(90, 'ACTH', '0', '1', '', '215', 139, '3-5cc Blood in EDTA/Serum', '1'),
(91, 'AFB Smear', '0', '1', '', '216', 139, 'Any Specimen', '1'),
(92, 'ALA Urine', '0', '1', '', '217', 139, '24 hrs Urine/Random Urine', '1'),
(93, 'Albumin', '0', '1', '', '218', 139, '3-5cc clotted Blood/Serum', '1'),
(94, 'Albumin (Urine)', '0', '1', '', '219', 139, '24 hrs Urine/Random Urine', '1'),
(95, 'Alcohol Level', '0', '1', '', '220', 139, '3-5cc clotted Blood/Serum', '1'),
(96, 'Aldolase (Serum)', '0', '1', '', '221', 139, '3-5cc clotted Blood/Serum', '1'),
(97, 'Aldosterone Level', '0', '1', '', '222', 139, '3-5cc clotted Blood/Serum', '1'),
(98, 'Alkaline Phosphate', '0', '1', '', '223', 139, '3-5cc clotted Blood/Serum', '1'),
(99, 'ALPHA 1-Anti Trypsin Level(L-1)', '0', '1', '', '224', 139, '3-5cc clotted Blood/Serum', '1'),
(100, 'Alpha  Fetoprotein (AFP)', '0', '1', '', '225', 139, '3-5cc clotted Blood/Serum', '1'),
(101, 'Alpha-MDBH', '0', '1', '', '226', 139, '3-5cc clotted Blood/Serum', '1'),
(102, 'Amino Acid', '0', '1', '', '227', 139, '24 hrs Urine', '1'),
(103, 'Amino Acid Chromatography', '0', '1', '', '228', 139, '24 hrs Urine', '1'),
(104, 'Aminophlline / Theophylline', '0', '1', '', '229', 139, '3-5cc clotted Blood/Serum', '1'),
(105, 'Ammonia (NH3)', '0', '1', '', '230', 139, '3cc Blood in EDTA', '1'),
(106, 'Amylase', '0', '1', '', '231', 139, '.', '1'),
(107, 'Amylase (Urine)', '0', '1', '', '232', 139, '24 hrs Urine/Random Urine', '1'),
(108, 'ANA', '0', '1', '', '233', 139, '3-5cc clotted Blood/Serum', '1'),
(109, 'Anti Nuclear Antibody (ANA) by Elisa', '0', '1', '', '234', 139, '3-5cc clotted Blood/Serum', '1'),
(110, 'ANCA-C', '0', '1', '', '235', 139, '3-5cc clotted Blood/Serum', '1'),
(111, 'ANCA-C (lgG)', '0', '1', '', '236', 139, '3-5cc clotted Blood/Serum', '1'),
(112, 'ANCA-C (lgM)', '0', '1', '', '237', 139, '3-5cc clotted Blood/Serum', '1'),
(113, 'ANCA-P', '0', '1', '', '238', 139, '3-5cc clotted Blood/Serum', '1'),
(114, 'Androgen Level', '0', '1', '', '239', 139, '3-5cc clotted Blood/Serum', '1'),
(115, 'Androstenidione Level', '0', '1', '', '240', 139, '3-5cc clotted Blood/Serum', '1'),
(116, 'Anemia Absolute Values', '0', '1', '', '241', 139, '2-3 Blood in EDTA', '1'),
(117, 'Anti B2-Glycoprotein (lgG/lgM)', '0', '1', '', '242', 139, '.', '1'),
(118, 'Anti B2-Glycoprotein 1 Screen', '0', '1', '', '243', 139, '.', '1'),
(119, 'Anti Cardiac Abs (IFA Method)', '0', '1', '', '244', 139, '.', '1'),
(120, 'Anti Cardiolipin lgG', '0', '1', '', '245', 139, '3-5cc clotted Blood/Serum', '1'),
(121, 'Anti Cardiolipin lgM', '0', '1', '', '246', 139, '3-5cc clotted Blood/Serum', '1'),
(122, 'Anti CCP (Cyclic Citrullinated Peptide)', '0', '1', '', '247', 139, '3-5cc clotted Blood/Serum', '1'),
(123, 'Anti Cytoplasmic Antibodies', '0', '1', '', '248', 139, '3-5cc clotted Blood/Serum', '1'),
(124, 'Anti DNA', '0', '1', '', '249', 139, '3-5cc clotted Blood/Serum', '1'),
(125, 'Anti DS DNA', '0', '1', '', '250', 139, '3-5cc clotted Blood/Serum', '1'),
(126, 'Anti DS DNA lgG', '0', '1', '', '251', 139, '3-5cc clotted Blood/Serum', '1'),
(127, 'Anti DS DNA lgM', '0', '1', '', '252', 139, '3-5cc clotted Blood/Serum', '1'),
(128, 'Anti Endomysial Abs', '0', '1', '', '253', 139, '3-5cc clotted Blood/Serum', '1'),
(129, 'Anti Epstein Barr Virus lgG (EBV)', '0', '1', '', '254', 139, '3-5cc clotted Blood/Serum', '1'),
(130, 'Anti Epstein Barr Virus lgM (EBV)', '0', '1', '', '255', 139, '3-5cc clotted Blood/Serum', '1'),
(131, 'Anti GBM (Glomerular Basement Mem)', '0', '1', '', '256', 139, '3-5cc clotted Blood/Serum', '1'),
(132, 'Anti Gliadin Antibodies lgA', '0', '1', '', '257', 139, '3-5cc clotted Blood/Serum', '1'),
(133, 'Anti Gliadin Antibodies lgG', '0', '1', '', '258', 139, '3-5cc clotted Blood/Serum', '1'),
(134, 'Anti Gliadin Antibodies lgM', '0', '1', '', '259', 139, '3-5cc clotted Blood/Serum', '1'),
(135, 'Anti HB Core (Total)', '0', '1', '', '260', 139, '3-5cc clotted Blood/Serum', '1'),
(136, 'Anti HB Core lgG', '0', '1', '', '261', 139, '3-5cc clotted Blood/Serum', '1'),
(137, 'Anti HB Core lgM', '0', '1', '', '262', 139, '3-5cc clotted Blood/Serum', '1'),
(138, 'Anti HBe (ELISA)', '0', '1', '', '263', 139, '3-5cc clotted Blood/Serum', '1'),
(139, 'Anti HbSAg (ELISA)', '0', '1', '', '264', 139, '3-5cc clotted Blood/Serum', '1'),
(140, 'Anti HCV (ELISA)', '0', '1', '', '265', 139, '3-5cc clotted Blood/Serum', '1'),
(141, 'Anti HCV (Screening)', '0', '1', '', '266', 139, '3-5cc clotted Blood/Serum', '1'),
(142, 'Anti HDV lgM', '0', '1', '', '267', 139, '3-5cc clotted Blood/Serum', '1'),
(143, 'Anti HEV lgG', '0', '1', '', '268', 139, '3-5cc clotted Blood/Serum', '1'),
(144, 'Anti HEV lgM', '0', '1', '', '269', 139, '3-5cc clotted Blood/Serum', '1'),
(145, 'Anti HGB', '0', '1', '', '270', 139, '3-5cc clotted Blood/Serum', '1'),
(146, 'Anti HGV lgG', '0', '1', '', '271', 139, '3-5cc clotted Blood/Serum', '1'),
(147, 'Anti HGV lgM', '0', '1', '', '272', 139, '3-5cc clotted Blood/Serum', '1'),
(148, 'Anti HIV - 1 & 2 (ELISA)', '0', '1', '', '273', 139, '3-5cc clotted Blood/Serum', '1'),
(149, 'Anti HIV (Screening)', '0', '1', '', '274', 139, '3-5cc clotted Blood/Serum', '1'),
(150, 'Anti HSV IgG (1+2)', '0', '1', '', '275', 139, '3-5cc clotted Blood/Serum', '1'),
(151, 'Anti HSV IgM (1+2)', '0', '1', '', '276', 139, '3-5cc clotted Blood/Serum', '1'),
(152, 'Anti JO-1', '0', '1', '', '277', 139, '3-5cc clotted Blood/Serum', '1'),
(153, 'Anti Mullerian Harmone', '0', '1', '', '278', 139, '3-5cc clotted Blood/Serum', '1'),
(154, 'Anti Lacto Ferrin', '0', '1', '', '279', 139, '3-5cc clotted Blood/Serum', '1'),
(155, 'Anti Leucocyte Plasma Abs', '0', '1', '', '280', 139, '2-3cc Blood in EDTA', '1'),
(156, 'Anti Microsomal Abs (AMA)', '0', '1', '', '281', 139, '3-5cc clotted Blood/Serum', '1'),
(157, 'Anti Mitochondrial Antibody', '0', '1', '', '282', 139, '3-5cc clotted Blood/Serum', '1'),
(158, 'Anti Nucleosome (Lupus Abs SLE)', '0', '1', '', '283', 139, '.', '1'),
(159, 'Anti Nucleotide Abs', '0', '1', '', '284', 139, '3-5cc clotted Blood/Serum', '1'),
(160, 'Anti Phospholipid lgG', '0', '1', '', '285', 139, '3-5cc clotted Blood/Serum', '1'),
(161, 'Anti Phospholipid lgM', '0', '1', '', '286', 139, '3-5cc clotted Blood/Serum', '1'),
(162, 'Anti Prothrombine (Screen)', '0', '1', '', '287', 139, '.', '1'),
(163, 'Anti Prothrombine lgA', '0', '1', '', '288', 139, '.', '1'),
(164, 'Anti Prothrombine lgG', '0', '1', '', '289', 139, '.', '1'),
(165, 'Anti SCL-70', '0', '1', '', '290', 139, '3-5cc clotted Blood/Serum', '1'),
(166, 'Anti Smooth Muscle Abs (SMA)', '0', '1', '', '291', 139, '.', '1'),
(167, 'Anti Sperm Antibodies', '0', '1', '', '292', 139, '3-5cc clotted Blood/Serum', '1'),
(168, 'Anti SS-A (RO)', '0', '1', '', '293', 139, '3-5cc clotted Blood/Serum', '1'),
(169, 'Anti SS-B (LA)', '0', '1', '', '294', 139, '3-5cc clotted Blood/Serum', '1'),
(170, 'Anti Thrombin-III', '0', '1', '', '295', 139, 'Citrate Tube (from lab)', '1'),
(171, 'Anti Thyroglobulin Anitbodies', '0', '1', '', '296', 139, '3-5cc clotted Blood/Serum', '1'),
(172, 'Anti Tissue Transgludaminase lgA', '0', '1', '', '297', 139, '3-5cc clotted Blood/Serum', '1'),
(173, 'Anti Tissue Transgludaminase lgG', '0', '1', '', '298', 139, '3-5cc clotted Blood/Serum', '1'),
(174, 'APO Lipoprotein A', '0', '1', '', '299', 139, '3-5cc clotted Blood/Serum', '1'),
(175, 'APO Lipoprotein B', '0', '1', '', '300', 139, '3-5cc clotted Blood/Serum', '1'),
(176, 'APTT (Activated Partial Thromboplasti)', '0', '1', '', '301', 139, 'Citrate Tube (from lab)', '1'),
(177, 'Arterial Blood Gases (ABG\'s)', '0', '1', '', '302', 139, '3-5 cc Aterial Heparnized sam', '1'),
(178, 'Ascitic Fluid For AFB Culture', '0', '1', '', '303', 139, 'Specimen Fluid', '1'),
(179, 'Ascitic Fluid For AFB Smear / Z.N.', '0', '1', '', '304', 139, 'Specimen Fluid', '1'),
(180, 'Ascitic Fluid For Amylase', '0', '1', '', '305', 139, 'Specimen Fluid', '1'),
(181, 'Ascitic Fluid For Analysis (C/E)', '0', '1', '', '306', 139, 'Specimen Fluid', '1'),
(182, 'Ascitic Fluid For C / S', '0', '1', '', '307', 139, 'Specimen Fluid', '1'),
(183, 'Ascitic Fluid For Cytology', '0', '1', '', '308', 139, 'Specimen Fluid', '1'),
(184, 'Ascitic Fluid For Gram Stain', '0', '1', '', '309', 139, 'Specimen Fluid', '1'),
(185, 'Ascitic Fluid for LDH', '0', '1', '', '310', 139, 'Specimen Fluid', '1'),
(186, 'Ascitic Fluid For Malignant Cell', '0', '1', '', '311', 139, 'Specimen Fluid', '1'),
(187, 'Ascitic Fluid For MTB by PCR', '0', '1', '', '312', 139, 'Specimen Fluid', '1'),
(188, 'Ascitic Fluid For Protein', '0', '1', '', '313', 139, 'Specimen Fluid', '1'),
(189, 'ASO TITRE', '0', '1', '', '314', 139, '3-5cc clotted Blood/Serum', '1'),
(190, 'Asperrgillus Abs', '0', '1', '', '315', 139, '3-5cc clotted Blood/Serum', '1'),
(191, 'AST (SGOT)', '0', '1', '', '316', 139, '3-5cc clotted Blood/Serum', '1'),
(192, 'Atypical Lymphocytes', '0', '1', '', '317', 139, '3cc Blood in EDTA', '1'),
(193, 'Azure Granules', '0', '1', '', '318', 139, 'Random Urine', '1'),
(194, 'B-2 Micro Globulin', '0', '1', '', '319', 139, '3-5cc clotted Blood/Serum', '1'),
(195, 'Bacterial Colony Count', '0', '1', '', '320', 139, 'Any Specimen', '1'),
(196, 'Bence Jones Protein (Urine)', '0', '1', '', '321', 139, 'Random Urine', '1'),
(197, 'Beta HCG', '0', '1', '', '322', 139, '3-5cc clotted Blood/Serum', '1'),
(198, 'Bicorbonate (HCO3)', '0', '1', '', '323', 139, '3-5cc clotted Blood/Serum', '1'),
(199, 'Bicorbonate (HCO3) (Urine', '0', '1', '', '324', 139, '24 hrs Urine', '1'),
(200, 'BIL SGPT SGOT ALK PROT ALB', '0', '1', '', '325', 139, '3-5cc clotted Blood/Serum', '1'),
(201, 'BIL SGPT SGOT ALK PROT GG', '0', '1', '', '326', 139, '3-5cc clotted Blood/Serum', '1'),
(202, 'Bilirubin Direct', '0', '1', '', '327', 139, '3-5cc clotted Blood/Serum', '1'),
(203, 'Bilirubin Indirect', '0', '1', '', '328', 139, '3-5cc clotted Blood/Serum', '1'),
(204, 'Bilirubin Total', '0', '1', '', '329', 139, '3-5cc clotted Blood/Serum', '1'),
(205, 'Biopsy Multiple', '0', '1', '', '330', 139, 'Specimen', '1'),
(206, 'Biopsy For H/P', '0', '1', '', '331', 139, 'Specimen', '1'),
(207, 'Biopsy (Extra Large)', '0', '1', '', '332', 139, 'Specimen', '1'),
(208, 'Biopsy Large', '0', '1', '', '333', 139, 'Specimen', '7'),
(209, 'Biopsy Small', '0', '1', '', '334', 139, 'Specimen', '7'),
(210, 'Biopsy Medium', '0', '1', '', '335', 139, 'Specimen', '7'),
(211, 'Bleeding Time', '0', '1', '', '336', 139, 'Contact Lab', '1'),
(212, 'Blood C/E Retic Count', '0', '1', '', '337', 139, '3cc Blood in EDTA', '1'),
(213, 'CBC-Blood Complete Examination WI', '0', '1', '', '338', 139, '3cc Blood in EDTA', '1'),
(214, 'CBC-Dengue', '0', '1', '', '339', 139, '3cc Blood in EDTA', '1'),
(215, 'Blood Culture For(Aerobic & Anaerobic)', '0', '1', '', '340', 139, 'Culture Vial', '1'),
(216, 'Blood Eosinophil Count', '0', '1', '', '341', 139, '2-3cc Blood in EDTA', '1'),
(217, 'Blood Film for Filariasis x', '0', '1', '', '342', 139, '3cc Blood in EDTA', '1'),
(218, 'Blood For C/S', '0', '1', '', '343', 139, 'Blood Culture Vial', '1'),
(219, 'Blood for MTB by PCR', '0', '1', '', '344', 139, '3-5cc clotted Blood/Serum', '1'),
(220, 'Blood Group & Cross Match', '0', '1', '', '345', 139, '3cc Blood in EDTA', '1'),
(221, 'Blood Group & Rh Factor', '0', '1', '', '346', 139, '3cc Blood in EDTA', '1'),
(222, 'Blood Osmolalty x', '0', '1', '', '347', 139, '2-3cc Blood in EDTA', '1'),
(223, 'Blood for MP ICT', '0', '1', '', '348', 139, '2-3cc Blood in EDTA', '1'),
(224, 'RFT/Renal Function Tests', '0', '1', '', '349', 139, '3-5cc clotted Blood/Serum', '1'),
(225, 'Bone Marrow Biopsy', '0', '1', '', '350', 139, 'Contact Lab', '1'),
(226, 'Bone Marrow Slides Review', '0', '1', '', '351', 139, 'Slides', '1'),
(227, 'Breast Milk for C/E', '0', '1', '', '352', 139, 'Breast Milk', '1'),
(228, 'Breast Milk for Culture', '0', '1', '', '353', 139, 'Breast Milk', '1'),
(229, 'Breast Milk for Cytology', '0', '1', '', '354', 139, 'Breast Milk', '1'),
(230, 'Breast Milk for Gram Stains', '0', '1', '', '355', 139, 'Breast Milk', '1'),
(231, 'Breast Milk for ZN', '0', '1', '', '356', 139, 'Breast Milk', '1'),
(232, 'Bronchial Washing AFB Culture', '0', '1', '', '357', 139, 'Specimen Fluid', '1'),
(233, 'Bronchial Washing C/S ', '0', '1', '', '358', 139, 'Specimen Fluid', '1'),
(234, 'Bronchial Washing for Analysis', '0', '1', '', '359', 139, 'Specimen Fluid', '1'),
(235, 'Bronchial Washing for Cytology', '0', '1', '', '360', 139, 'Specimen Fluid', '1'),
(236, 'Bronchial Washing for Gram', '0', '1', '', '361', 139, 'Specimen Fluid', '1'),
(237, 'Bronchial Washing for ZN ', '0', '1', '', '362', 139, 'Specimen Fluid', '1'),
(238, 'Bronchial Washing MTB by PCR', '0', '1', '', '363', 139, 'Specimen Fluid', '1'),
(239, 'Brucella lgG', '0', '1', '', '364', 139, '3-5cc clotted Blood/Serum', '1'),
(240, 'Brucella lgM', '0', '1', '', '365', 139, '3-5cc clotted Blood/Serum', '1'),
(241, 'BUN', '0', '1', '', '366', 139, '3-5cc clotted Blood/Serum', '1'),
(242, 'C-2 Monitoring x', '0', '1', '', '367', 139, '3cc Blood in EDTA', '1'),
(243, 'C3', '0', '1', '', '368', 139, '3-5cc clotted Blood/Serum', '1'),
(244, 'C-4', '0', '1', '', '369', 139, '3-5cc clotted Blood/Serum', '1'),
(245, 'CA 125 ', '0', '1', '', '370', 139, '3-5cc clotted Blood/Serum', '1'),
(246, 'CA 15-3', '0', '1', '', '371', 139, '3-5cc clotted Blood/Serum', '1'),
(247, 'CA 19-9', '0', '1', '', '372', 139, '3-5cc clotted Blood/Serum', '1'),
(248, 'CA 72-4 x', '0', '1', '', '373', 139, '3-5cc clotted Blood/Serum', '1'),
(249, 'Calcium', '0', '1', '', '374', 139, '3-5cc clotted Blood/Serum', '1'),
(250, 'Calcium (Urine)', '0', '1', '', '375', 139, '24 hrs Urine/Random Urine', '1'),
(251, 'Calcium Ionized x', '0', '1', '', '376', 139, '3-5cc clotted Blood/Serum', '1'),
(252, 'Calcium/Creatinine Ratio', '0', '1', '', '377', 139, '3-5cc clotted Blood/Serum', '1'),
(253, 'Calculi Analysis (Stone) x', '0', '1', '', '378', 139, 'Specimen Stone', '7'),
(254, 'Calculi Analysis (Urine) x', '0', '1', '', '379', 139, '24 hrs Urine/Random Urine', '3'),
(255, 'Candida Albicans Abs x', '0', '1', '', '380', 139, '3-5cc clotted Blood/Serum', '1'),
(256, 'Carbamazepine (Tegretol,Epilepin)', '0', '1', '', '381', 139, '3-5cc clotted Blood/Serum', '1'),
(257, 'Cardic Enzymes (CPK,CKMB,SGOT)', '0', '1', '', '382', 139, '3-5cc clotted Blood/Serum', '1'),
(258, 'Casoni x', '0', '1', '', '383', 139, '.', '1'),
(259, 'Catecholamines (24hrs) x', '0', '1', '', '384', 139, '24 hrs Urine', '1'),
(260, 'CEA', '0', '1', '', '385', 139, '3-5cc clotted Blood/Serum', '1'),
(261, 'CBC- 5 parts', '0', '1', '', '386', 139, '3-5cc clotted Blood/Serum', '1'),
(262, 'Cervical Biopsy x', '0', '1', '', '387', 139, 'Cervical Biopsy', '7'),
(263, 'Cervical Cone Biopsy x', '0', '1', '', '388', 139, 'Cervical Cone Biopsy', '7'),
(264, 'Cervical Swab C/S', '0', '1', '', '389', 139, 'Cervical Swab', '7'),
(265, 'Chickenpox Abs x', '0', '1', '', '390', 139, '3-5cc clotted Blood/Serum', '1'),
(266, 'Chickenpox lgG x', '0', '1', '', '391', 139, '3-5cc clotted Blood/Serum', '7'),
(267, 'Chickenpox lgM x', '0', '1', '', '392', 139, '3-5cc clotted Blood/Serum', '1'),
(268, 'Chloride', '0', '1', '', '393', 139, '3-5cc clotted Blood/Serum', '1'),
(269, 'Chloride (Urine)', '0', '1', '', '394', 139, '24 hrs Urine/Random Urine', '1'),
(270, 'Cholesterol', '0', '1', '', '395', 139, '3-5cc clotted Blood', '1'),
(271, 'Chylomicrons x', '0', '1', '', '396', 139, '3-5cc clotted Blood', '1'),
(272, 'CK-MB', '0', '1', '', '397', 139, '3-5cc clotted Blood/Serum', '1'),
(273, 'Clotting Time', '0', '1', '', '398', 139, 'Contact Lab', '1'),
(274, 'CMV lgG', '0', '1', '', '399', 139, '3-5cc clotted Blood/Serum', '1'),
(275, 'CMV lgM', '0', '1', '', '400', 139, '3-5cc clotted Blood/Serum', '1'),
(276, 'Cocaine', '0', '1', '', '401', 139, 'Random Urine', '1'),
(277, 'Cold Agglutination Test', '0', '1', '', '402', 139, '3-5cc clotted Blood/Serum', '1'),
(278, 'Coomb\'s Test (Direct)', '0', '1', '', '403', 139, '3cc Blood in EDTA', '1'),
(279, 'Coomb\'s Test (Indirect)', '0', '1', '', '404', 139, '3-5cc clotted Blood/Serum', '1'),
(280, 'Copper', '0', '1', '', '405', 139, '3-5cc clotted Blood/Serum', '1'),
(281, 'Copper (Urine)', '0', '1', '', '406', 139, '24 hrs Urine/Random Urine', '1'),
(282, 'Coprophyrins (Coprophyrins) x', '0', '1', '', '407', 139, 'Random Urine', '1'),
(283, 'Cortisol (A.M.)', '0', '1', '', '408', 139, '3-5cc clotted Blood/Serum', '1'),
(284, 'Cortisol (P.M.)', '0', '1', '', '409', 139, '3-5cc clotted Blood/Serum', '1'),
(285, 'Cortisol (Random Urine)', '0', '1', '', '410', 139, 'Random Urine', '1'),
(286, 'Cortisol (24hrs Urine)', '0', '1', '', '411', 139, '24 hrs Urine', '1'),
(287, 'C-Peptide Level', '0', '1', '', '412', 139, '3-5cc clotted Blood/Serum', '1'),
(288, 'C-Peptide Level (Urine)', '0', '1', '', '413', 139, '24 hrs Urine/Random Urine', '1'),
(289, 'CPK', '0', '1', '', '414', 139, '3-5cc clotted Blood/Serum', '1'),
(290, 'Creatinine', '0', '1', '', '415', 139, '3-5cc clotted Blood/Serum', '1'),
(291, 'Creatinine (Urine)', '0', '1', '', '416', 139, '24 hrs Urine/Random Urine', '1'),
(292, 'Creatinine Clearance', '0', '1', '', '417', 139, '3-5cc clotted Blood/Serum', '1'),
(293, 'Cross Matching Simple', '0', '1', '', '418', 139, '3cc Blood in EDTA/Clotted-D', '1'),
(294, 'Cross Matching With ELISA', '0', '1', '', '419', 139, '3cc Blood in EDTA/Clotted-D', '1'),
(295, 'Cross Matching With Screening', '0', '1', '', '420', 139, '3-5cc clotted Blood/Serum', '1'),
(296, 'CRP (High Sensivity)', '0', '1', '', '421', 139, '3-5cc clotted Blood/Serum', '1'),
(297, 'CRP', '0', '1', '', '422', 139, '3-5cc clotted Blood/Serum', '1'),
(298, 'CSF For AFB Culture', '0', '1', '', '423', 139, 'Specimen CSF Fluid', '1'),
(299, 'CSF for C/E', '0', '1', '', '424', 139, 'Specimen CSF Fluid', '1'),
(300, 'CSF for C/S', '0', '1', '', '425', 139, 'Specimen CSF Fluid', '1'),
(301, 'CSF For Chloride x', '0', '1', '', '426', 139, 'CSF', '1'),
(302, 'CSF for Cytology', '0', '1', '', '427', 139, 'Specimen CSF Fluid', '1'),
(303, 'CSF for Glucose', '0', '1', '', '428', 139, 'CSF', '1'),
(304, 'CSF for Gram Stain', '0', '1', '', '429', 139, 'Specimen CSF Fluid', '1'),
(305, 'CSF for Lactate Level x', '0', '1', '', '430', 139, 'Specimen CSF Fluid', '1'),
(306, 'CSF for LDH', '0', '1', '', '431', 139, 'Specimen CSF Fluid', '1'),
(307, 'CSF for lgG', '0', '1', '', '432', 139, 'Specimen CSF Fluid', '1'),
(308, 'CSF for lgA', '0', '1', '', '433', 139, 'Specimen CSF Fluid', '1'),
(309, 'CSF for lgM', '0', '1', '', '434', 139, 'Specimen CSF Fluid', '1'),
(310, 'CSF for Measels lgG', '0', '1', '', '435', 139, 'Specimen CSF Fluid', '1'),
(311, 'CSF for Measels lgM', '0', '1', '', '436', 139, 'Specimen CSF Fluid', '1'),
(312, 'CSF for MTB By PCR', '0', '1', '', '437', 139, 'Specimen CSF Fluid', '1'),
(313, 'CSF for Mumps Abs', '0', '1', '', '438', 139, 'Specimen CSF Fluid', '1'),
(314, 'CSF For Oligloconal Bands', '0', '1', '', '439', 139, 'Specimen CSF Fluid', '1'),
(315, 'CSF for Protein', '0', '1', '', '440', 139, 'CSF', '1'),
(316, 'CSF for Pyrupat x', '0', '1', '', '441', 139, 'CSF', '1'),
(317, 'CSF for Xanthochromia', '0', '1', '', '442', 139, 'CSF', '1'),
(318, 'CSF for Z.N. Stain', '0', '1', '', '443', 139, 'Specimen CSF Fluid', '1'),
(319, 'CVP TIP for C/S', '0', '1', '', '444', 139, 'Specimen', '1'),
(320, 'Cyclosporin Level', '0', '1', '', '445', 139, '3cc Blood in EDTA', '1'),
(321, 'Cyst Fluid for AFB/ZN', '0', '1', '', '446', 139, 'Cyst Fluid', '1'),
(322, 'Cyst Fluid for Amylase x', '0', '1', '', '447', 139, 'Cyst Fluid', '1'),
(323, 'Cyst Fluid for C/E', '0', '1', '', '448', 139, 'Cyst Fluid', '1'),
(324, 'Cyst Fluid for C/S', '0', '1', '', '449', 139, 'Cyst Fluid', '1'),
(325, 'Cyst Fluid for Cytology', '0', '1', '', '450', 139, 'Cyst Fluid', '1'),
(326, 'Cyst Fluid for Gram Stain', '0', '1', '', '451', 139, 'Cyst Fluid', '1'),
(327, 'Cyst Fluid for Malignant Cell', '0', '1', '', '452', 139, 'Cyst Fluid', '1'),
(328, 'Cyst Fluid for Protein', '0', '1', '', '453', 139, 'Cyst Fluid', '1'),
(329, 'Cytology (Slides)', '0', '1', '', '454', 139, 'Slides', '1'),
(330, 'D-Dimer x', '0', '1', '', '455', 139, '3cc Blood in EDTA', '1'),
(331, 'DHEA SO4', '0', '1', '', '456', 139, '.', '1'),
(332, 'Dengue (lgG & lgM) Screening', '0', '1', '', '457', 139, '3-5cc clotted Blood/Serum', '1'),
(333, 'Digoxin', '0', '1', '', '458', 139, '3-5cc clotted Blood/Serum', '1'),
(334, 'Dilantin Level', '0', '1', '', '459', 139, '3-5cc clotted Blood/Serum', '1'),
(335, 'DLC (Differential Lecucyte Count)', '0', '1', '', '460', 139, '3-5cc Blood in EDTA', '1'),
(336, 'E.B.V. Abs (Monospot)', '0', '1', '', '461', 139, '3-5cc clotted Blood/Serum', '1'),
(337, 'Ear Swab for AFB C/S', '0', '1', '', '462', 139, 'Swab', '1'),
(338, 'Ear Swab for AFB Staining (Smear)', '0', '1', '', '463', 139, 'Swab', '1'),
(339, 'Ear Swab for C/S', '0', '1', '', '464', 139, 'Swab', '1'),
(340, 'Ear Swab for Gram Staining', '0', '1', '', '465', 139, 'Swab', '1'),
(341, 'Echynococcus Granulosus Abs', '0', '1', '', '466', 139, '.', '1'),
(342, 'ENA Profile', '0', '1', '', '467', 139, '3-5cc clotted Blood/Serum', '1'),
(343, 'Endo Cervical Swab Cytology', '0', '1', '', '468', 139, '.', '1'),
(344, 'Entamoeba Histolytica Abs', '0', '1', '', '469', 139, '.', '1'),
(345, 'Eosinophil Count', '0', '1', '', '470', 139, '3cc Blood in EDTA', '1'),
(346, 'ESR', '0', '1', '', '471', 139, '3cc Blood in EDTA', '1'),
(347, 'Estradiol (Estrogen Level, E2)', '0', '1', '', '472', 139, '3-5cc clotted Blood/Serum', '1'),
(348, 'Estradiol (Estrogen Level, E2)-Urine', '0', '1', '', '473', 139, '24 hrs Urine', '1'),
(349, 'Estrogen Level, Progesterone Recept', '0', '1', '', '474', 139, 'Blocks', '1'),
(350, 'Eye Scraping for Fungus', '0', '1', '', '475', 139, 'Eye Scraping', '1'),
(351, 'Eye Swab C/S', '0', '1', '', '476', 139, 'Eye Swab', '1'),
(352, 'FDP\'s (D-Dimer)', '0', '1', '', '477', 139, 'Citrate Tube (from lab)', '1'),
(353, 'F.N.A.C.', '0', '1', '', '478', 139, 'Contact Lab', '1'),
(354, 'F.N.A.C. Slides for Review', '0', '1', '', '479', 139, 'Contact Lab/Slides', '1'),
(355, 'Factor - IX', '0', '1', '', '480', 139, '.', '1'),
(356, 'Factor - V (Accelerator Globulin)', '0', '1', '', '481', 139, '.', '1'),
(357, 'Factor - VII (Procenvertine-Stuart)', '0', '1', '', '482', 139, '.', '1'),
(358, 'Factor - VIII (Anti Hemophilic Globulin)', '0', '1', '', '483', 139, '.', '1'),
(359, 'Factor - X (Stuart-Factor)', '0', '1', '', '484', 139, '.', '1'),
(360, 'Factor - XI', '0', '1', '', '485', 139, '.', '1'),
(361, 'Factor - XII (Hageman Factor)', '0', '1', '', '486', 139, '.', '1'),
(362, 'Factor - XIII', '0', '1', '', '487', 139, '.', '1'),
(363, 'Factor IX Level', '0', '1', '', '488', 139, 'Citrate Tube (from lab)', '1'),
(364, 'Factor VIII Level ', '0', '1', '', '489', 139, 'Citrate Tube (from lab)', '1'),
(365, 'Ferritin', '0', '1', '', '490', 139, '3-5cc clotted Blood/Serum', '1'),
(366, 'Fetal HB (Electrophoreses)', '0', '1', '', '491', 139, '3cc Blood in EDTA', '1'),
(367, 'FFA (Free Fatty Acid)', '0', '1', '', '492', 139, '.', '1'),
(368, 'FFP\'s', '0', '1', '', '493', 139, 'Blood Bag', '1'),
(369, 'FFP\'s With X-Matching', '0', '1', '', '494', 139, 'Blood Bag/Patient/Donar', '1'),
(370, 'Fibrinogen', '0', '1', '', '495', 139, 'Citrate Tube (from lab)', '1'),
(371, 'Fluid for C/E', '0', '1', '', '496', 139, 'Specimen Fluid', '1'),
(372, 'Fluid for C/S', '0', '1', '', '497', 139, 'Specimen Fluid', '1'),
(373, 'Folic Acid (Folate)', '0', '1', '', '498', 139, '3-5cc clotted Blood/Serum', '1'),
(374, 'Free PSA', '0', '1', '', '499', 139, '3-5cc clotted Blood/Serum', '1'),
(375, 'Free PSA/PSA Ratio', '0', '1', '', '500', 139, '3-5cc clotted Blood/Serum', '1'),
(376, 'Free T-3 (Free Tri-lodoethyronine)', '0', '1', '', '501', 139, '3-5cc clotted Blood/Serum', '1'),
(377, 'Free T-4 (Free Thyroxine)', '0', '1', '', '502', 139, '3-5cc clotted Blood/Serum', '1'),
(378, 'Free Testosterone', '0', '1', '', '503', 139, '3-5cc clotted Blood/Serum', '1'),
(379, 'Free Thyroxin Index', '0', '1', '', '504', 139, '3-5cc clotted Blood/Serum', '1'),
(380, 'Frozen Section', '0', '1', '', '505', 139, 'Contact Lab', '1'),
(381, 'FSH (Follicle Stimulating Hormone)', '0', '1', '', '506', 139, '3-5cc clotted Blood/Serum', '1'),
(382, 'FSH (Follicle Stimulating Hormone) Urine', '0', '1', '', '507', 139, '24 hrs Urine', '1'),
(383, 'Fungus Culture', '0', '1', '', '508', 139, 'Contact Lab', '1'),
(384, 'Fungus Analysis', '0', '1', '', '509', 139, 'Any Specimen', '1'),
(385, 'G-6 PD Test', '0', '1', '', '510', 139, '3cc Blood in EDTA', '1'),
(386, 'G6PD (Glucose 6 Phosphate Dehdrog)', '0', '1', '', '511', 139, '2cc Clotted Blood/EDTA Blood', '1'),
(387, 'Gall Bladder Stone for Analysis', '0', '1', '', '512', 139, 'Stone', '7'),
(388, 'Gamma GT (Gamma Glutamyl Transp)', '0', '1', '', '513', 139, '3-5cc clotted Blood/Serum', '1'),
(389, 'Gastric Aspirate Analysis', '0', '1', '', '514', 139, 'Gastroc Aspirate', '1'),
(390, 'Foly\'s for C/S', '0', '1', '', '515', 139, 'Foly\'s Specimen', '1'),
(391, 'Gastrin Level', '0', '1', '', '516', 139, '3-5cc clotted Blood/Serum', '1'),
(392, 'GCT (Glucose Challenge Test)', '0', '1', '', '517', 139, '3-5cc clotted Blood/Serum', '1'),
(393, 'Genital Specimen for C/S', '0', '1', '', '518', 139, 'Genital Specimen', '1'),
(394, 'Gentamycin', '0', '1', '', '519', 139, '3-5cc clotted Blood/Serum', '1'),
(395, 'GH (Growth Hormone)', '0', '1', '', '520', 139, '3-5cc clotted Blood/Serum', '1'),
(396, 'GH (Growth Hormone) after exercise', '0', '1', '', '521', 139, '3-5cc clotted Blood/Serum', '1'),
(397, 'Globulins', '0', '1', '', '522', 139, '3-5cc clotted Blood/Serum', '1'),
(398, 'Gram Stain', '0', '1', '', '523', 139, 'Specimen', '1'),
(399, 'GTT (Glucose Tolerance Test)', '0', '1', '', '524', 139, '3-5cc clotted Blood/Serum', '1'),
(400, 'Gum Swab for C/S', '0', '1', '', '525', 139, 'Gum Swab', '1'),
(401, 'Haemagglutination Test for E.Granulor', '0', '1', '', '526', 139, '3-5cc clotted Blood/Serum', '1'),
(402, 'Haemagglutination Test for Echinoco', '0', '1', '', '527', 139, '3-5cc clotted Blood/Serum', '1'),
(403, 'Haemagglutination Test for Entamoeb', '0', '1', '', '528', 139, '3-5cc clotted Blood/Serum', '1'),
(404, 'Haemagglutination Test for Hydatid Te', '0', '1', '', '529', 139, '3-5cc clotted Blood/Serum', '1'),
(405, 'Haemagglutination Test for Rubella', '0', '1', '', '530', 139, '3-5cc clotted Blood/Serum', '1'),
(406, 'Haemoglobin A2 (Electrophorses)', '0', '1', '', '531', 139, '3cc Blood in EDTA', '1'),
(407, 'Haptoglobin', '0', '1', '', '532', 139, '3-5cc clotted Blood/Serum', '1'),
(408, 'Anti HAV lgG', '0', '1', '', '533', 139, '3-5cc clotted Blood/Serum', '1'),
(409, 'Anti HAV lgM', '0', '1', '', '534', 139, '3-5cc clotted Blood/Serum', '1'),
(410, 'HB ', '0', '1', '', '535', 139, '3cc Blood in EDTA', '1'),
(411, 'HB Electrophorses', '0', '1', '', '536', 139, '3cc Blood in EDTA', '1'),
(412, 'HbA1C (Glycosylated Haemoglobin)', '0', '1', '', '537', 139, '3cc Blood in EDTA', '1'),
(413, 'HBeAg (ELISA)', '0', '1', '', '538', 139, '3-5cc clotted Blood/Serum', '1'),
(414, 'HBsAg (ELISA)', '0', '1', '', '539', 139, '3-5cc clotted Blood/Serum', '1'),
(415, 'HBsAg (Screening)', '0', '1', '', '540', 139, '3-5cc clotted Blood/Serum', '1'),
(416, 'HBV DNA by PCR (QL) Realtime', '0', '1', '', '541', 139, '3-5cc clotted Blood/Serum', '1'),
(417, 'HBV DNA by PCR (QN) Realtime', '0', '1', '', '542', 139, '3-5cc clotted Blood/Serum', '1'),
(418, 'HCT (Haemtocrit) (PCV)', '0', '1', '', '543', 139, '3cc Blood in EDTA', '1'),
(419, 'HCV Genotyping By PCR Realtime', '0', '1', '', '544', 139, '3-5cc clotted Blood/Serum', '1'),
(420, 'HCV RNA by PCR (QL) Realtime', '0', '1', '', '545', 139, '3-5cc clotted Blood/Serum', '1'),
(421, 'HCV RNA by PCR (QN) Realtime', '0', '1', '', '546', 139, '.', '1'),
(422, 'HCV Serotyping', '0', '1', '', '547', 139, '3-5cc clotted Blood/Serum', '1'),
(423, 'HDL (Cholesterol)', '0', '1', '', '548', 139, '3-5cc clotted Blood/Serum', '1'),
(424, 'HDV Antigen', '0', '1', '', '549', 139, '3-5cc clotted Blood/Serum', '1'),
(425, 'Helicobacter Pylori Abs (lgG,lgM) Elis', '0', '1', '', '550', 139, '3-5cc clotted Blood/Serum', '1'),
(426, 'Helicobacter Pylori Abs (lgG,lgM) Screening', '0', '1', '', '551', 139, '3-5cc clotted Blood/Serum', '1'),
(427, 'Hepatitis \"B\" Profile', '0', '1', '', '552', 139, '3-5cc clotted Blood/Serum', '1'),
(428, 'Hepatitis Virological Profile', '0', '1', '', '553', 139, '3-5cc clotted Blood/Serum', '1'),
(429, 'HER 2-NEU (Staining)', '0', '1', '', '554', 139, 'Blocks', '1'),
(430, 'HCV RNA Detection by Real Time PC', '0', '1', '', '555', 139, '3-5cc clotted Blood/Serum', '1'),
(431, 'HIV (Aids) by ELISA', '0', '1', '', '556', 139, '3-5cc clotted Blood/Serum', '1'),
(432, 'HIV (Aids) by Screening', '0', '1', '', '557', 139, '3-5cc clotted Blood/Serum', '1'),
(433, 'HCV Genotyping By Realtime PCR', '0', '1', '', '558', 139, '24 hrs Urine/Random Urine', '1'),
(434, 'HLA Typing', '0', '1', '', '559', 139, '3-5cc clotted Blood/Serum', '1'),
(435, 'Homocystine Level', '0', '1', '', '560', 139, '3-5cc clotted Blood/Serum', '1'),
(436, 'Homocystine Level Urine', '0', '1', '', '561', 139, '24 hrs Urine/Random Urine', '1'),
(437, 'HVS for AFB Smear-ZN Stain', '0', '1', '', '562', 139, 'Swab', '1'),
(438, 'HVS for C/S', '0', '1', '', '563', 139, 'Swab', '1'),
(439, 'HVS for Gram Stain / Wet Smear', '0', '1', '', '564', 139, 'Swab', '1'),
(440, 'ICT Malaria', '0', '1', '', '565', 139, '3-5cc Blood in EDTA', '1'),
(441, 'lgA', '0', '1', '', '566', 139, '3-5cc clotted Blood/Serum', '1'),
(442, 'lgE', '0', '1', '', '567', 139, '3-5cc clotted Blood/Serum', '1'),
(443, 'lgG', '0', '1', '', '568', 139, '3-5cc clotted Blood/Serum', '1'),
(444, 'lgM', '0', '1', '', '569', 139, '3-5cc clotted Blood/Serum', '1'),
(445, 'Immunofixation Electrophoreses', '0', '1', '', '570', 139, '3-5cc clotted Blood/Serum', '1'),
(446, 'INR', '0', '1', '', '571', 139, 'Citrate Tube (from lab)', '1'),
(447, 'Insulin', '0', '1', '', '572', 139, '3-5cc clotted Blood/Serum', '1'),
(448, 'Insulin (After 1hr)', '0', '1', '', '573', 139, '3-5cc clotted Blood/Serum', '1'),
(449, 'Insulin (After 2hr)', '0', '1', '', '574', 139, '3-5cc clotted Blood/Serum', '1'),
(450, 'Insulin (After 3hr)', '0', '1', '', '575', 139, '3-5cc clotted Blood/Serum', '1'),
(451, 'Insulin (After 4hr)', '0', '1', '', '576', 139, '3-5cc clotted Blood/Serum', '1'),
(452, 'IVU (Intravenous Urography)', '0', '1', '', '577', 139, '.', '1'),
(453, 'Insulin (Fasting)', '0', '1', '', '578', 139, '3-5cc clotted Blood/Serum', '1'),
(454, 'Intact Parathormone (PTH)', '0', '1', '', '579', 139, '3-5cc clotted Blood/Serum', '1'),
(455, 'Iron / Fe Level', '0', '1', '', '580', 139, '3-5cc clotted Blood/Serum', '1'),
(456, 'Joint Fluid for AFB Culture', '0', '1', '', '581', 139, 'Specimen Fluid', '1'),
(457, 'Joint Fluid for AFB Smear/ZN', '0', '1', '', '582', 139, 'Specimen Fluid', '1'),
(458, 'Joint Fluid for Analysis', '0', '1', '', '583', 139, 'Specimen Fluid', '1'),
(459, 'Joint Fluid for C/S', '0', '1', '', '584', 139, 'Specimen Fluid', '1'),
(460, 'Joint Fluid for Cytology', '0', '1', '', '585', 139, 'Specimen Fluid', '1'),
(461, 'Joint Fluid for Gram Stain', '0', '1', '', '586', 139, 'Specimen Fluid', '1'),
(462, 'Joint Fluid for LDH', '0', '1', '', '587', 139, 'Specimen Fluid', '1'),
(463, 'Joint Fluid for MTB by PCR', '0', '1', '', '588', 139, 'Specimen Fluid', '1'),
(464, 'KAHN Test', '0', '1', '', '589', 139, '.', '1'),
(465, 'Kidney Stone for Analysis', '0', '1', '', '590', 139, 'Specimen Fluid', '1'),
(466, 'Knee Joint Fluid Cytology', '0', '1', '', '591', 139, 'Knee Joint Fluid', '1'),
(467, 'Knee Joint Fluid C/S', '0', '1', '', '592', 139, 'Knee Joint Fluid', '1'),
(468, 'Knee Joint Fluid for Gram Stain', '0', '1', '', '593', 139, 'Knee Joint Fluid', '1'),
(469, 'Knee Joint Fluid for ZN Stain', '0', '1', '', '594', 139, 'Knee Joint Fluid', '1'),
(470, 'Knee Joint Malignant Cell', '0', '1', '', '595', 139, 'Knee Joint Fluid', '1'),
(471, 'Knee Joint Protein', '0', '1', '', '596', 139, 'Knee Joint Fluid', '1'),
(472, 'Knee Joint Routine Examination', '0', '1', '', '597', 139, 'Knee Joint Fluid', '1'),
(473, 'Knee Joint Uric Acid', '0', '1', '', '598', 139, 'Knee Joint Fluid', '1'),
(474, 'Knee Joint Uric Acid Crystals', '0', '1', '', '599', 139, 'Knee Joint Fluid', '1'),
(475, 'Lactate Level (Lactic Acid)', '0', '1', '', '600', 139, '3-5cc Blood in EDTA', '1'),
(476, 'LAP Score Level (Leucocyte Alkaline)', '0', '1', '', '601', 139, '.', '1'),
(477, 'LDH (Lactic Dehydrogenase)', '0', '1', '', '602', 139, '3-5cc clotted Blood/Serum', '1'),
(478, 'LDL Cholestrol', '0', '1', '', '603', 139, '3-5cc clotted Blood/Serum', '1'),
(479, 'LE Cells', '0', '1', '', '604', 139, '10cc Clotted Blood', '1'),
(480, 'LE Phnomenon', '0', '1', '', '605', 139, '3-5cc clotted Blood/Serum', '1'),
(481, 'Lead Level', '0', '1', '', '606', 139, '3-5cc clotted Blood/Serum', '1'),
(482, 'Legionella Antibodies', '0', '1', '', '607', 139, '3-5cc clotted Blood/Serum', '1'),
(483, 'Leishmania Donovi Antibodies', '0', '1', '', '608', 139, '3-5cc clotted Blood/Serum', '1'),
(484, 'Leishmania Tropica Antibodies', '0', '1', '', '609', 139, '3-5cc clotted Blood/Serum', '1'),
(485, 'Leptospiral Abs', '0', '1', '', '610', 139, '3-5cc clotted Blood/Serum', '1'),
(486, 'LH (Luteinhizing Hormone)', '0', '1', '', '611', 139, '3-5cc clotted Blood/Serum', '1'),
(487, 'Lipase', '0', '1', '', '612', 139, '3-5cc clotted Blood/Serum', '1'),
(488, 'Lipid Profile', '0', '1', '', '613', 139, '3-5cc clotted Blood/Serum', '1'),
(489, 'Lithium (Li)', '0', '1', '', '614', 139, '3-5cc clotted Blood/Serum', '1'),
(490, 'LFT-Liver Function Tests', '0', '1', '', '615', 139, '3-5cc clotted Blood/Serum', '1'),
(491, 'Lupus Anticoagulant Abs', '0', '1', '', '616', 139, 'Citrate Tube (from lab)', '1'),
(492, 'Magnesium', '0', '1', '', '617', 139, '3-5cc clotted Blood/Serum', '1'),
(493, 'Malarial Parasite (Slide Method)', '0', '1', '', '618', 139, '24 hrs Urine/Random Urine', '1'),
(494, 'Malarial Parasite Screening Rapid Test', '0', '1', '', '619', 139, '3cc Blood in EDTA', '1'),
(495, 'Mantoux Test (Heafs Test)', '0', '1', '', '620', 139, 'Injection', '1'),
(496, 'MCA ', '0', '1', '', '621', 139, '3cc Blood in EDTA', '1'),
(497, 'MCH', '0', '1', '', '622', 139, '3cc Blood in EDTA', '1'),
(498, 'MCHC ', '0', '1', '', '623', 139, '3cc Blood in EDTA', '1'),
(499, 'MCV', '0', '1', '', '624', 139, '3cc Blood in EDTA', '1'),
(500, 'Measles lgG Abs', '0', '1', '', '625', 139, '3-5cc clotted Blood/Serum', '1'),
(501, 'Measles lgM Abs', '0', '1', '', '626', 139, '3-5cc clotted Blood/Serum', '1'),
(502, 'Metabolic Studies for Stone', '0', '1', '', '627', 139, '24 hrs Urine/Blood', '1'),
(503, 'Met-Haemoglobin', '0', '1', '', '628', 139, '3cc Blood in EDTA', '1'),
(504, 'Microalbumin Urea (Spot Urine)', '0', '1', '', '629', 139, '24 hrs Urine/Random Urine', '1'),
(505, 'Milk for AFB C/S', '0', '1', '', '630', 139, 'Milk', '1'),
(506, 'Milk for C/S', '0', '1', '', '631', 139, 'Milk', '1'),
(507, 'Milk for Cytology', '0', '1', '', '632', 139, 'Milk', '1'),
(508, 'Milk for Gram Stain', '0', '1', '', '633', 139, 'Milk', '1'),
(509, 'Milk for Z.N. Stain', '0', '1', '', '634', 139, 'Milk', '1'),
(510, 'Monospot', '0', '1', '', '635', 139, '3-5cc clotted Blood/Serum', '1'),
(511, 'Morphine Derivatives', '0', '1', '', '636', 139, 'Random Urine', '1'),
(512, 'Mouth Swab for C/S', '0', '1', '', '637', 139, 'Mouth Swab', '1'),
(513, 'MTB DNA By PCR (Any Specimen)', '0', '1', '', '638', 139, 'Sputum', '1'),
(514, 'Mumps Antibodies', '0', '1', '', '639', 139, '3-5cc clotted Blood/Serum', '1'),
(515, 'Mumps lgG', '0', '1', '', '640', 139, '3-5cc clotted Blood/Serum', '1'),
(516, 'Mumps lgM', '0', '1', '', '641', 139, '3-5cc clotted Blood/Serum', '1'),
(517, 'Mycodot (lgG/lgM) Screening', '0', '1', '', '642', 139, '3-5cc clotted Blood/Serum', '1'),
(518, 'Mycodot lgG by ELISA', '0', '1', '', '643', 139, '3-5cc clotted Blood/Serum', '1'),
(519, 'Mycodot lgM by ELISA', '0', '1', '', '644', 139, '3-5cc clotted Blood/Serum', '1'),
(520, 'Mycoplasma Abs', '0', '1', '', '645', 139, '3-5cc clotted Blood/Serum', '1'),
(521, 'Myoglobin', '0', '1', '', '646', 139, '3-5cc clotted Blood/Serum', '1'),
(522, 'Myoglobin (Urine)', '0', '1', '', '647', 139, '24 hrs Urine/Random Urine', '1'),
(523, 'Nail scraping for Fungus', '0', '1', '', '648', 139, 'Nail Scraping', '1'),
(524, 'Nasal Screation C/S', '0', '1', '', '649', 139, 'Nasal Screation', '1'),
(525, 'Nasal Swab for C/S', '0', '1', '', '650', 139, 'Nasal Swab', '1'),
(526, 'Neonatal Rectum C/S', '0', '1', '', '651', 139, 'Neonatal Rectum', '1'),
(527, 'Neonatal Umbilicus C/S', '0', '1', '', '652', 139, 'Neonatal Umbilicus', '1'),
(528, 'Nipple Discharge C/S', '0', '1', '', '653', 139, 'Nipple Discharge', '1'),
(529, 'Ovalution Test', '0', '1', '', '654', 139, '3-5cc clotted Blood/Serum', '1'),
(530, 'Osmolality (Urine)', '0', '1', '', '655', 139, '24 hrs Urine/Random Urine', '1'),
(531, 'RBC Folate Level', '0', '1', '', '656', 139, '3 cc Blood in EDTA & 3 cc in H', '1'),
(532, 'Pack Cell', '0', '1', '', '657', 139, 'Blood Bag/Donar', '1'),
(533, 'Pack Cell With X-Matching', '0', '1', '', '658', 139, 'Blood Bag/Patient/Donar', '1'),
(534, 'PAP Smear for Cytology', '0', '1', '', '659', 139, 'Slides', '1'),
(535, 'Peripheral Smear', '0', '1', '', '660', 139, '2cc Blood in EDTA', '1'),
(536, 'Peritoneal Fluid for AFB C/S', '0', '1', '', '661', 139, 'Specimen Fluid', '1'),
(537, 'Peritoneal Fluid for Amylase', '0', '1', '', '662', 139, 'Peritoneal Fluid', '1'),
(538, 'Peritoneal Fluid for Analysis', '0', '1', '', '663', 139, 'Specimen Fluid', '1'),
(539, 'Peritoneal Fluid for C/S', '0', '1', '', '664', 139, 'Specimen Fluid', '1'),
(540, 'Peritoneal Fluid for Cytology', '0', '1', '', '665', 139, 'Specimen Fluid', '1'),
(541, 'Peritoneal Fluid for Gram Stain', '0', '1', '', '666', 139, 'Specimen Fluid', '1'),
(542, 'Peritoneal Fluid for LDH', '0', '1', '', '667', 139, 'Specimen Fluid', '1'),
(543, 'Peritoneal Fluid for Malignant Cell', '0', '1', '', '668', 139, 'Peritoneal Fluid', '1'),
(544, 'Peritoneal Fluid for MTB by PCR', '0', '1', '', '669', 139, 'Specimen Fluid', '1'),
(545, 'Peritoneal Fluid for Z.N. Stain', '0', '1', '', '670', 139, 'Specimen Fluid', '1'),
(546, 'Peritoneal Fluid for Protein', '0', '1', '', '671', 139, 'Peritoneal Fluid', '1'),
(547, 'Phenobarbitone', '0', '1', '', '672', 139, '3-5cc clotted Blood/Serum', '1'),
(548, 'Phenytoin (Dilantin)', '0', '1', '', '673', 139, '3-5cc clotted Blood/Serum', '1'),
(549, 'Phosphorous (Phosphate) PO4', '0', '1', '', '674', 139, '3-5cc clotted Blood/Serum', '1'),
(550, 'Phosphorous (Phosphate) PO4 Urine', '0', '1', '', '675', 139, '24 hrs Urine/Random Urine', '1'),
(551, 'Plasma Renin Level', '0', '1', '', '676', 139, '3cc Blood in EDTA', '1'),
(552, 'Platelet Count', '0', '1', '', '677', 139, '3cc Blood in EDTA', '1'),
(553, 'Pleural Fluid for AFB Culture', '0', '1', '', '678', 139, 'Specimen Fluid', '1'),
(554, 'Pleural Fluid for AFB Smear', '0', '1', '', '679', 139, 'Specimen Fluid', '1'),
(555, 'Pleural Fluid for AFB C/E', '0', '1', '', '680', 139, 'Specimen Fluid', '1'),
(556, 'Pleural Fluid for C/S', '0', '1', '', '681', 139, 'Specimen Fluid', '1'),
(557, 'Pleural Fluid for Cystology', '0', '1', '', '682', 139, 'Specimen Fluid', '1'),
(558, 'Pleural Fluid for Gram Stain', '0', '1', '', '683', 139, 'Specimen Fluid', '1'),
(559, 'Pleural Fluid for LDH', '0', '1', '', '684', 139, 'Specimen Fluid', '1'),
(560, 'Pleural Fluid for Malignant Cells', '0', '1', '', '685', 139, 'Specimen Fluid', '1'),
(561, 'Pleural Fluid for MTB by PCR', '0', '1', '', '686', 139, 'Specimen Fluid', '1'),
(562, 'Pneumococcal Abs', '0', '1', '', '687', 139, '3-5cc clotted Blood/Serum', '1'),
(563, 'Protine (Spot Urine)', '0', '1', '', '688', 139, 'Urine', '1'),
(564, 'Potassium (K)', '0', '1', '', '689', 139, '3-5cc clotted Blood/Serum', '1'),
(565, 'Potassium (Urine)', '0', '1', '', '690', 139, 'Random Urine', '1'),
(566, 'Pregnancy Test', '0', '1', '', '691', 139, 'Random Urine', '1'),
(567, 'Pre-Natal profile', '0', '1', '', '692', 139, '3-5cc clotted Blood/Serum', '1'),
(568, 'Progesterone', '0', '1', '', '693', 139, '3-5cc clotted Blood/Serum', '1'),
(569, 'Prolactin', '0', '1', '', '694', 139, '3-5cc clotted Blood/Serum', '1'),
(570, 'Protein Electrophoresis', '0', '1', '', '695', 139, '3-5cc clotted Blood/Serum', '1'),
(571, 'Protein / Creatinine Ratio Urine (Spot/', '0', '1', '', '696', 139, '.', '1'),
(572, 'Protein-S', '0', '1', '', '697', 139, 'Citrate Tube (from lab)', '1'),
(573, 'P.S.A.', '0', '1', '', '698', 139, '3-5cc clotted Blood/Serum', '1'),
(574, 'PT (Prothrombin Time) PT with INR', '0', '1', '', '699', 139, 'Citrate Tube (from lab)', '1'),
(575, 'PTH (Parathyroid Harmone)', '0', '1', '', '700', 139, '3-5cc clotted Blood/Serum', '1'),
(576, 'PUS for AFB Culture', '0', '1', '', '701', 139, 'Pus', '1'),
(577, 'PUS for AFB Smear Z.N. Stain', '0', '1', '', '702', 139, 'Pus', '1'),
(578, 'PUS Swab', '0', '1', '', '703', 139, 'Pus', '1'),
(579, 'PUS for Cytology', '0', '1', '', '704', 139, 'Pus', '1'),
(580, 'PUS for Gram Stain', '0', '1', '', '705', 139, 'Pus', '1'),
(581, 'PUS for MTB by PCR', '0', '1', '', '706', 139, 'Pus', '1'),
(582, 'Protein Rich Plasma', '0', '1', '', '707', 139, '3-5cc clotted Blood/Serum', '1'),
(583, 'RA Factor', '0', '1', '', '708', 139, '3-5cc clotted Blood/Serum', '1'),
(584, 'ROTA Virus', '0', '1', '', '709', 139, '24 hrs Stool', '1'),
(585, 'RBC\'s Count', '0', '1', '', '710', 139, '3cc Blood in EDTA', '1'),
(586, 'RBC\'s Morphology', '0', '1', '', '711', 139, '3cc Blood in EDTA', '1'),
(587, 'RDW', '0', '1', '', '712', 139, '3cc Blood in EDTA', '1'),
(588, 'Red Cell Folic Acid', '0', '1', '', '713', 139, '3cc Blood in EDTA', '1'),
(589, 'Reducing Substances (Urine)', '0', '1', '', '714', 139, 'Random Urine', '1'),
(590, 'Retics Count (Reticulocyte)', '0', '1', '', '715', 139, '3cc Blood in EDTA', '1'),
(591, 'RH Antibodies', '0', '1', '', '716', 139, '3-5cc clotted Blood/Serum', '1'),
(592, 'Rhekestsia Abs', '0', '1', '', '717', 139, '3-5cc clotted Blood/Serum', '1'),
(593, 'RA Factor Quantitative', '0', '1', '', '718', 139, '3-5cc clotted Blood/Serum', '1'),
(594, 'ROTA Virus lgG', '0', '1', '', '719', 139, '.', '1'),
(595, 'ROTA Virus lgM', '0', '1', '', '720', 139, '3-5cc clotted Blood/Serum', '1'),
(596, 'Rubella lgG', '0', '1', '', '721', 139, '3-5cc clotted Blood/Serum', '1'),
(597, 'Rubella lgM', '0', '1', '', '722', 139, '3-5cc clotted Blood/Serum', '1'),
(598, 'Semen Analysis', '0', '1', '', '723', 139, 'Semen Specimen', '1'),
(599, 'Semen for AFB C/S', '0', '1', '', '724', 139, 'Semen Specimen', '1'),
(600, 'Semen for AFB Smear', '0', '1', '', '725', 139, 'Semen Specimen', '1'),
(601, 'Semen for C/S', '0', '1', '', '726', 139, 'Semen Specimen', '1'),
(602, 'Serum Electrolytes (Na,K,Cl)', '0', '1', '', '727', 139, '3-5cc clotted Blood/Serum', '1'),
(603, 'Serum Oxalate', '0', '1', '', '728', 139, '3-5cc clotted Blood/Serum', '1'),
(604, 'SGOT (AST)', '0', '1', '', '729', 139, '3-5cc clotted Blood/Serum', '1'),
(605, 'SGPT (ALT)', '0', '1', '', '730', 139, '3-5cc clotted Blood/Serum', '1'),
(606, 'SHBG (Sex Hormone Binding Globulin)', '0', '1', '', '731', 139, '3-5cc clotted Blood/Serum', '1'),
(607, 'Sinus Swab for C/S', '0', '1', '', '732', 139, 'Sinus Swab', '1'),
(608, 'Skin Scraping for Fungus', '0', '1', '', '733', 139, 'Contact Lab', '1'),
(609, 'Sodium (Na)', '0', '1', '', '734', 139, '3-5cc clotted Blood/Serum', '1'),
(610, 'Sodium (Urine)', '0', '1', '', '735', 139, '24 hrs Urine/Random Urine', '1'),
(611, 'Sputum for AFB C/S', '0', '1', '', '736', 139, 'Specimen Sputum', '1'),
(612, 'Sputum for AFB Smear / Z.N.', '0', '1', '', '737', 139, 'Specimen Sputum', '1'),
(613, 'Sputum for C/S', '0', '1', '', '738', 139, 'Specimen Sputum', '1'),
(614, 'Sputum for Cytology', '0', '1', '', '739', 139, 'Specimen Sputum', '1'),
(615, 'Sputum for Fungus Smear', '0', '1', '', '740', 139, 'Sputum', '1'),
(616, 'Sputum for Gram Stain', '0', '1', '', '741', 139, 'Specimen Sputum', '1'),
(617, 'Sputum for Malignant Cells', '0', '1', '', '742', 139, 'Specimen Sputum', '1'),
(618, 'Sputum for MTB by PCR', '0', '1', '', '743', 139, 'Specimen Sputum', '1'),
(619, 'Stool Culture & Sensitivity', '0', '1', '', '744', 139, 'Specimen Stool', '1'),
(620, 'Stool for C/E with Occult Blood', '0', '1', '', '745', 139, 'Specimen Stool', '1'),
(621, 'Stone Examination', '0', '1', '', '746', 139, 'Specimen Stool', '1'),
(622, 'Stool for Fecal FAT', '0', '1', '', '747', 139, 'Specimen Stool', '1'),
(623, 'Stool for H.Pylori Antigen', '0', '1', '', '748', 139, 'Specimen Stool', '1'),
(624, 'Stool for Occult Blood', '0', '1', '', '749', 139, 'Specimen Stool', '1'),
(625, 'Stool PH & Reducing Substance', '0', '1', '', '750', 139, 'Specimen Stool', '1'),
(626, 'T3 (Tri-lodoethronine)', '0', '1', '', '751', 139, '3-5cc clotted Blood/Serum', '1'),
(627, 'T3 Uptake', '0', '1', '', '752', 139, '3-5cc clotted Blood/Serum', '1'),
(628, 'T3, T4, TSH', '0', '1', '', '753', 139, '3-5cc clotted Blood/Serum', '1'),
(629, 'T4 (Thyroxine)', '0', '1', '', '754', 139, '3-5cc clotted Blood/Serum', '1'),
(630, 'Tacrolimus (FK Level)', '0', '1', '', '755', 139, '3cc Blood in EDTA', '1'),
(631, 'Testosterone', '0', '1', '', '756', 139, '3-5cc clotted Blood/Serum', '1'),
(632, 'Throat Swab for AFB Smear/ZN', '0', '1', '', '757', 139, 'Swab', '1'),
(633, 'Throat Swab for C/S', '0', '1', '', '758', 139, 'Swab', '1'),
(634, 'Throat Swab for Gram Stain', '0', '1', '', '759', 139, 'Swab', '1'),
(635, 'TIBC (Total Iron Binding Capacity)', '0', '1', '', '760', 139, '3-5cc clotted Blood/Serum', '1'),
(636, 'Tissue Typing', '0', '1', '', '761', 139, 'Tissue', '5'),
(637, 'Tissue Typing (Patient/Donor X-Match)', '0', '1', '', '762', 139, '3-5cc clotted Blood/Serum', '1'),
(638, 'Thyroid Peroxidase Antibodies (TPO)', '0', '1', '', '763', 139, 'Contact Lab', '1'),
(639, 'Tongue Swab for C/S', '0', '1', '', '764', 139, 'Tongue Swab', '1'),
(640, 'Torch Profile &#40;lgG,lgM&#41;', '0', '1', '', '765', 139, '3-5cc clotted Blood/Serum', '1'),
(641, 'Total Lipids', '0', '1', '', '766', 139, '3-5cc clotted Blood/Serum', '1'),
(642, 'Total Protein', '0', '1', '', '767', 139, '3-5cc clotted Blood/Serum', '1'),
(643, 'Toxoplasma lgG', '0', '1', '', '768', 139, '3-5cc clotted Blood/Serum', '1'),
(644, 'Toxoplasma lgM', '0', '1', '', '769', 139, '3-5cc clotted Blood/Serum', '1'),
(645, 'TPHA (Triponema Pallidium)', '0', '1', '', '770', 139, '3-5cc clotted Blood/Serum', '1'),
(646, 'Transferrin Saturation (Iron)', '0', '1', '', '771', 139, '3-5cc clotted Blood/Serum', '1'),
(647, 'Triglycerides', '0', '1', '', '772', 139, '3-5cc clotted Blood/Serum', '1'),
(648, 'Triple Test', '0', '1', '', '773', 139, '3-5cc clotted Blood/Serum', '1'),
(649, 'Troponin-I', '0', '1', '', '774', 139, '3cc Blood in EDTA', '1'),
(650, 'Troponin-T ', '0', '1', '', '775', 139, '3cc Blood in EDTA', '1'),
(651, 'TSH (Thyroid Stimulating Hormone)', '0', '1', '', '776', 139, '3-5cc clotted Blood/Serum', '1'),
(652, 'Troponin-I (High Sensitive) QN', '0', '1', '', '777', 139, 'Citrate Tube (from lab)', '1'),
(653, 'Typhidot lgG By ELISA', '0', '1', '', '778', 139, '3-5cc clotted Blood/Serum', '1'),
(654, 'Typhidot lgM By ELISA', '0', '1', '', '779', 139, '3-5cc clotted Blood/Serum', '1'),
(655, 'Typhidot Test (lgG,lgM) Screening', '0', '1', '', '780', 139, '3-5cc clotted Blood/Serum', '1'),
(656, 'Unconjugated Estriol', '0', '1', '', '781', 139, '3-5cc clotted Blood/Serum', '1'),
(657, 'Urea', '0', '1', '', '782', 139, '3-5cc clotted Blood/Serum', '1'),
(658, 'Urea (Urine)', '0', '1', '', '783', 139, '24 hrs Urine/Random Urine', '1'),
(659, 'Urea Clearance', '0', '1', '', '784', 139, '24 hrs Urine', '1'),
(660, 'Uric Acid', '0', '1', '', '785', 139, '3-5cc clotted Blood/Serum', '1'),
(661, 'Uric Acid (Urine)', '0', '1', '', '786', 139, '24 hrs Urine/Random Urine', '1'),
(662, 'Urinar Protein Electrophoresis', '0', '1', '', '787', 139, 'Random Urine', '1'),
(663, 'Urinary Amino Acid', '0', '1', '', '788', 139, 'Random Urine', '1'),
(664, 'Urinary Amphetamines', '0', '1', '', '789', 139, 'Random Urine', '1'),
(665, 'Urinary Benzodiazepine', '0', '1', '', '790', 139, '24 hrs Urine/Random Urine', '1'),
(666, 'Urinary Calcium', '0', '1', '', '791', 139, '24 hrs Urine/Random Urine', '1'),
(667, 'Urinary Cannabinoids', '0', '1', '', '792', 139, 'Random Urine', '1'),
(668, 'Urinary Immunofixation Electrophorsis', '0', '1', '', '793', 139, '24 hrs Urine/Random Urine', '1'),
(669, 'Urinary Metachromatic', '0', '1', '', '794', 139, '24 hrs Urine/Random Urine', '1'),
(670, 'Urinary Mucopoly Saccbindes', '0', '1', '', '795', 139, '24 hrs Urine/Random Urine', '1'),
(671, 'Urinary Myoglobulin', '0', '1', '', '796', 139, 'Random Urine', '1'),
(672, 'Urinary Oxalate', '0', '1', '', '797', 139, '24 hrs Urine/Random Urine', '1'),
(673, 'Urinary Phosphate', '0', '1', '', '798', 139, 'Random Urine', '1'),
(674, 'Urinary Porphyrin', '0', '1', '', '799', 139, 'Random Urine', '1'),
(675, 'Urinary Protein', '0', '1', '', '800', 139, 'Random Urine', '1'),
(676, 'Urinary Protein (24 hrs)', '0', '1', '', '801', 139, '24 hrs Urine', '1'),
(677, 'Urine Complete Examination', '0', '1', '', '802', 139, 'Random Urine', '1'),
(678, 'Urine for AFB Smear', '0', '1', '', '803', 139, 'Urine', '1'),
(679, 'Urine for Bacterial Count', '0', '1', '', '804', 139, 'Urine', '1'),
(680, 'Urine for Bile Pigment', '0', '1', '', '805', 139, 'Random Urine', '1'),
(681, 'Urine for Bile Salt', '0', '1', '', '806', 139, 'Random Urine', '1'),
(682, 'Urine for C/S', '0', '1', '', '807', 139, 'Random Urine', '1'),
(683, 'Urine for Hash Metabolites', '0', '1', '', '808', 139, '24 hrs Urine/Random Urine', '1');
INSERT INTO `template` (`id`, `name`, `template`, `user`, `x`, `procedure_id`, `lab_cat_id`, `sample_required`, `reporting_day`) VALUES
(684, 'Urine for Haemoglobin', '0', '1', '', '809', 139, 'Random Urine', '1'),
(685, 'Urine for Ketones', '0', '1', '', '810', 139, 'Random Urine', '1'),
(686, 'Urine for Lactate Level', '0', '1', '', '811', 139, 'Random Urine', '1'),
(687, 'Urine for MTB PCR', '0', '1', '', '812', 139, 'Random Urine', '1'),
(688, 'Urine for Opiates', '0', '1', '', '813', 139, 'Random Urine', '1'),
(689, 'Urine for Porphobilinogen', '0', '1', '', '814', 139, 'Random Urine', '1'),
(690, 'Urine for Urea Creatinine Ratio', '0', '1', '', '815', 139, '24 hrs Urine/Random Urine', '1'),
(691, 'Urine Protein Creatinine Ratio', '0', '1', '', '816', 139, '24 hrs Urine/Random Urine', '1'),
(692, 'Urine Sugar', '0', '1', '', '817', 139, 'Random Urine', '1'),
(693, 'Urine Sugar 1 hr ABF', '0', '1', '', '818', 139, 'Random Urine', '1'),
(694, 'Urine Sugar 1/2 hr ABF', '0', '1', '', '819', 139, 'Random Urine', '1'),
(695, 'Urine Sugar 1-1/2 hrs ABF', '0', '1', '', '820', 139, 'Random Urine', '1'),
(696, 'Urine Sugar 2 hrs ABF', '0', '1', '', '821', 139, 'Random Urine', '1'),
(697, 'Urine Sugar 2-1/2 hr ABF', '0', '1', '', '822', 139, 'Random Urine', '1'),
(698, 'Urine Sugar 3 hrs ABF', '0', '1', '', '823', 139, 'Random Urine', '1'),
(699, 'Urine Sugar after Dinner', '0', '1', '', '824', 139, 'Random Urine', '1'),
(700, 'Urine Sugar After Lunch', '0', '1', '', '825', 139, 'Random Urine', '1'),
(701, 'Urine Sugar Before Dinner', '0', '1', '', '826', 139, 'Random Urine', '1'),
(702, 'Urine Sugar Before Lunch', '0', '1', '', '827', 139, 'Random Urine', '1'),
(703, 'Urine Sugar Fasting', '0', '1', '', '828', 139, 'Fasting Urine', '1'),
(704, 'Urine Sugar Random', '0', '1', '', '829', 139, 'Random Urine', '1'),
(705, 'Urobilinogen', '0', '1', '', '830', 139, 'Random Urine', '1'),
(706, 'Vaginal Smear', '0', '1', '', '831', 139, 'Vaginal Smear', '1'),
(707, 'Valporic Acid (Epival, Epilium)', '0', '1', '', '832', 139, '3-5cc clotted Blood/Serum', '1'),
(708, 'Vancomycin', '0', '1', '', '833', 139, '3-5cc clotted Blood/Serum', '1'),
(709, 'Varicella Zoster Abs', '0', '1', '', '834', 139, '3-5cc clotted Blood/Serum', '1'),
(710, 'VDRL (RPR)', '0', '1', '', '835', 139, '3-5cc clotted Blood/Serum', '1'),
(711, 'Vitamin B-12', '0', '1', '', '836', 139, '3-5cc clotted Blood/Serum', '1'),
(712, 'VLDL', '0', '1', '', '837', 139, '3-5cc clotted Blood/Serum', '1'),
(713, 'VMA (Vanillymandellic Acid)', '0', '1', '', '838', 139, '24 hrs Urine', '1'),
(714, 'Von Willebrand AG Factor', '0', '1', '', '839', 139, 'Sodium Citrate Tube (PT Vial)', '1'),
(715, 'Water Bottle', '0', '1', '', '840', 139, '.', '1'),
(716, 'DEIONIZED WATER', '0', '1', '', '841', 139, '.', '1'),
(717, 'WBC Count (TLC)', '0', '1', '', '842', 139, '3cc Blood in EDTA', '1'),
(718, 'WBC\'s Morphology', '0', '1', '', '843', 139, '3cc Blood in EDTA', '1'),
(719, 'Wet Smear Microscopy', '0', '1', '', '844', 139, 'Any Specimen', '1'),
(720, 'Widal Test', '0', '1', '', '845', 139, '3-5cc clotted Blood/Serum', '1'),
(721, 'Digital OPG', '0', '1', '', '846', 139, 'Contact Lab', '1'),
(722, 'Wound Secretion for C/S', '0', '1', '', '847', 139, 'Specimen Wound Secretion', '1'),
(723, 'Wound Swab for AFB Smear - ZN', '0', '1', '', '848', 139, 'Swab', '1'),
(724, 'Wound Swab for C/S', '0', '1', '', '849', 139, 'Swab', '1'),
(725, 'Wound Swab for AFB Culture', '0', '1', '', '850', 139, 'Swab', '1'),
(726, 'X-Ray Digital', '0', '1', '', '851', 139, 'Contact Lab', '1'),
(727, 'Z.N. Staining / AFB Smear', '0', '1', '', '852', 139, 'Any Specimen', '1'),
(728, 'Zinc Level (Serum)', '0', '1', '', '853', 139, '3-5cc clotted Blood/Serum', '1'),
(729, 'Zinc Level (24 hrs Urine)', '0', '1', '', '854', 139, '24 hrs Urine', '1'),
(730, 'Anti HDV lgG', '0', '1', '', '855', 139, '3-5cc clotted Blood/Serum', '1'),
(736, 'Test ', '0', '1', '', '861', 139, 'Blood', '1 Day'),
(732, 'USG', '0', '1', '', '857', 139, '.', '1'),
(733, 'ECG', '0', '1', '', '858', 139, 'Contact Lab', '1'),
(737, 'Burn Injury', '0', '1', '', '863', 140, 'Test Sample', 'Monday');

-- --------------------------------------------------------

--
-- Table structure for table `test_items`
--

CREATE TABLE `test_items` (
  `id` int(6) UNSIGNED NOT NULL,
  `lab_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `male_value` varchar(50) NOT NULL,
  `female_value` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_items`
--

INSERT INTO `test_items` (`id`, `lab_id`, `name`, `male_value`, `female_value`, `unit`, `created_at`) VALUES
(26, '22', 'blood1', '<200', '43', 'mg/dl', '2019-09-04 07:51:28'),
(27, '22', 'blood2', '100-160', '43', 'mg/dl', '2019-09-04 07:51:28'),
(28, '22', 'blood4', '<150', '566', 'mg/dl', '2019-09-04 07:51:28'),
(29, '23', 'abc', '20-30', '30-35', '5ml', '2019-09-04 09:02:59'),
(30, '23', 'xyx', '12-35', '15-20', '5ml', '2019-09-04 09:02:59'),
(33, '24', 'ESR', 'Upto 15', '', 'mm/1st Hour', '2019-09-07 12:07:43'),
(34, '24', 'abc', '20', '15', 'mml/l', '2019-09-07 12:07:43'),
(35, '25', 'rbc', '4-11', '', '1122', '2019-09-19 12:10:17'),
(36, '26', '', '', '', '', '2019-09-19 12:16:01'),
(38, '27', '', '', '', '', '2019-09-19 19:28:25'),
(40, '28', '', '', '', '', '2019-09-19 19:30:24'),
(42, '29', '', '', '', '', '2019-09-19 19:32:37'),
(43, '30', '', '', '', '', '2019-09-19 19:34:09'),
(44, '31', '', '', '', '', '2019-09-19 19:35:45'),
(45, '32', '', '', '', '', '2019-09-19 19:36:22'),
(46, '33', '', '', '', '', '2019-09-19 19:36:45'),
(47, '34', '', '', '', '', '2019-09-19 19:37:32'),
(48, '35', '', '', '', '', '2019-09-19 19:38:30'),
(49, '36', '', '', '', '', '2019-09-19 19:39:16'),
(50, '37', '', '', '', '', '2019-09-19 19:40:06'),
(51, '38', '', '', '', '', '2019-09-19 19:41:28'),
(53, '40', '', '', '', '', '2019-09-19 19:43:25'),
(54, '41', '', '', '', '', '2019-09-19 19:44:39'),
(56, '42', '', '', '', '', '2019-09-23 07:59:52'),
(59, '39', '', '', '', '', '2019-09-23 08:21:28'),
(61, '43', '', '', '', '', '2019-09-24 06:08:15'),
(64, '44', '', '', '', '', '2019-09-25 07:05:51'),
(65, '45', '', '', '', '', '2019-09-25 07:08:54'),
(66, '46', '', '', '', '', '2019-09-25 07:09:53'),
(67, '47', '', '', '', '', '2019-09-25 07:10:51'),
(68, '48', '', '', '', '', '2019-09-25 07:11:39'),
(69, '49', '', '', '', '', '2019-09-25 07:12:42'),
(70, '50', '', '', '', '', '2019-09-25 07:13:43'),
(71, '51', '', '', '', '', '2019-09-25 07:15:26'),
(72, '52', '', '', '', '', '2019-09-25 07:16:36'),
(73, '53', '', '', '', '', '2019-09-25 07:17:43'),
(74, '54', '', '', '', '', '2019-09-25 07:18:45'),
(75, '55', '', '', '', '', '2019-09-25 07:19:28'),
(76, '56', '', '', '', '', '2019-09-25 07:20:11'),
(77, '57', '', '', '', '', '2019-09-25 07:20:55'),
(78, '58', '', '', '', '', '2019-09-25 07:21:30'),
(79, '59', '', '', '', '', '2019-09-25 07:22:18'),
(80, '60', '', '', '', '', '2019-09-25 07:23:32'),
(81, '61', '', '', '', '', '2019-09-25 07:25:19'),
(82, '62', '', '', '', '', '2019-09-25 07:26:30'),
(84, '63', '', '', '', '', '2019-09-27 10:18:52'),
(86, '64', '', '', '', '', '2019-10-15 10:53:19'),
(87, '65', '', '', '', '', '2019-10-15 11:48:23'),
(90, '67', '', '', '', '', '2019-10-15 14:13:28'),
(91, '66', '', '', '', '', '2019-10-15 14:13:38'),
(93, '68', '', '', '', '', '2019-10-15 14:14:27'),
(95, '69', '', '', '', '', '2019-10-15 14:33:22'),
(96, '70', '', '', '', '', '2019-10-15 14:33:53'),
(97, '71', '', '', '', '', '2019-10-15 14:55:00'),
(100, '72', '', '', '', '', '2019-10-15 14:56:14'),
(102, '73', '', '', '', '', '2019-10-15 15:23:51'),
(104, '74', 'abc', '12', '15', '3cm', '2019-10-15 15:38:17'),
(105, '74', 'def', '10', '9', '5cc', '2019-10-15 15:38:17'),
(107, '75', 'abc', '10', '15', '3cm', '2019-10-15 16:01:53'),
(108, '75', 'def', '12', '12', '5cc', '2019-10-15 16:01:53'),
(109, '76', '', '', '', '', '2019-10-18 01:03:46'),
(111, '78', '', '', '', '', '2019-10-18 01:08:01'),
(112, '77', '', '', '', '', '2019-10-18 01:09:08'),
(113, '79', '', '', '', '', '2019-10-18 01:11:04'),
(114, '80', '', '', '', '', '2019-10-18 01:12:17'),
(115, '81', '', '', '', '', '2019-10-18 01:13:01'),
(116, '82', '', '', '', '', '2019-10-18 01:13:54'),
(117, '83', '', '', '', '', '2019-10-18 01:15:25'),
(118, '84', '', '', '', '', '2019-10-18 01:17:43'),
(119, '85', '', '', '', '', '2019-10-18 01:36:15'),
(120, '86', '', '', '', '', '2019-10-18 01:36:55'),
(121, '87', '', '', '', '', '2019-10-18 01:37:39'),
(122, '88', '', '', '', '', '2019-10-18 01:38:14'),
(123, '89', '', '', '', '', '2019-10-18 01:39:06'),
(124, '90', '', '', '', '', '2019-10-18 01:40:22'),
(125, '91', '', '', '', '', '2019-10-18 01:41:13'),
(126, '92', '', '', '', '', '2019-10-18 01:42:11'),
(127, '93', '', '', '', '', '2019-10-18 01:42:45'),
(128, '94', '', '', '', '', '2019-10-18 01:43:33'),
(129, '95', '', '', '', '', '2019-10-18 01:44:18'),
(130, '96', '', '', '', '', '2019-10-18 01:45:15'),
(131, '97', '', '', '', '', '2019-10-18 01:46:06'),
(132, '98', '', '', '', '', '2019-10-18 01:46:42'),
(133, '99', '', '', '', '', '2019-10-18 01:48:04'),
(134, '100', '', '', '', '', '2019-10-18 01:49:10'),
(135, '101', '', '', '', '', '2019-10-18 01:49:42'),
(136, '102', '', '', '', '', '2019-10-18 01:50:11'),
(137, '103', '', '', '', '', '2019-10-18 01:51:00'),
(138, '104', '', '', '', '', '2019-10-18 01:51:53'),
(139, '105', '', '', '', '', '2019-10-18 01:52:42'),
(140, '106', '', '', '', '', '2019-10-18 01:53:39'),
(141, '107', '', '', '', '', '2019-10-18 01:54:33'),
(142, '108', '', '', '', '', '2019-10-18 01:55:02'),
(143, '109', '', '', '', '', '2019-10-18 01:56:01'),
(144, '110', '', '', '', '', '2019-10-18 01:56:31'),
(145, '111', '', '', '', '', '2019-10-18 01:57:18'),
(146, '112', '', '', '', '', '2019-10-18 01:58:00'),
(147, '113', '', '', '', '', '2019-10-18 01:58:31'),
(148, '114', '', '', '', '', '2019-10-18 01:59:02'),
(149, '115', '', '', '', '', '2019-10-18 01:59:46'),
(150, '116', '', '', '', '', '2019-10-18 02:00:37'),
(151, '117', '', '', '', '', '2019-10-18 02:01:45'),
(152, '118', '', '', '', '', '2019-10-18 02:02:25'),
(153, '119', '', '', '', '', '2019-10-18 02:03:27'),
(154, '120', '', '', '', '', '2019-10-18 02:04:04'),
(155, '121', '', '', '', '', '2019-10-18 02:04:34'),
(156, '122', '', '', '', '', '2019-10-18 02:05:47'),
(157, '123', '', '', '', '', '2019-10-18 02:06:33'),
(158, '124', '', '', '', '', '2019-10-18 02:07:01'),
(159, '125', '', '', '', '', '2019-10-18 02:07:47'),
(160, '126', '', '', '', '', '2019-10-18 02:08:22'),
(161, '127', '', '', '', '', '2019-10-18 02:08:49'),
(162, '128', '', '', '', '', '2019-10-18 02:09:30'),
(163, '129', '', '', '', '', '2019-10-18 02:10:33'),
(164, '130', '', '', '', '', '2019-10-18 02:11:09'),
(165, '131', '', '', '', '', '2019-10-18 02:12:30'),
(166, '132', '', '', '', '', '2019-10-18 02:13:27'),
(167, '133', '', '', '', '', '2019-10-18 02:13:55'),
(168, '134', '', '', '', '', '2019-10-18 02:14:30'),
(169, '135', '', '', '', '', '2019-10-18 02:15:08'),
(170, '136', '', '', '', '', '2019-10-18 02:15:44'),
(171, '137', '', '', '', '', '2019-10-18 02:16:12'),
(172, '138', '', '', '', '', '2019-10-18 02:16:50'),
(173, '139', '', '', '', '', '2019-10-18 02:17:53'),
(174, '140', '', '', '', '', '2019-10-18 02:18:26'),
(175, '141', '', '', '', '', '2019-10-18 02:19:10'),
(176, '142', '', '', '', '', '2019-10-18 02:19:51'),
(177, '143', '', '', '', '', '2019-10-18 02:20:30'),
(178, '144', '', '', '', '', '2019-10-18 02:21:37'),
(179, '145', '', '', '', '', '2019-10-18 02:22:08'),
(180, '146', '', '', '', '', '2019-10-18 02:22:53'),
(181, '147', '', '', '', '', '2019-10-18 02:23:43'),
(182, '148', '', '', '', '', '2019-10-18 02:24:38'),
(183, '149', '', '', '', '', '2019-10-18 02:25:20'),
(184, '150', '', '', '', '', '2019-10-18 04:15:08'),
(185, '151', '', '', '', '', '2019-10-18 04:15:47'),
(186, '152', '', '', '', '', '2019-10-18 04:16:23'),
(187, '153', '', '', '', '', '2019-10-18 04:17:16'),
(188, '154', '', '', '', '', '2019-10-18 04:17:54'),
(189, '155', '', '', '', '', '2019-10-18 04:19:05'),
(190, '156', '', '', '', '', '2019-10-18 04:19:39'),
(191, '157', '', '', '', '', '2019-10-18 04:20:19'),
(192, '158', '', '', '', '', '2019-10-18 04:21:01'),
(193, '159', '', '', '', '', '2019-10-18 04:21:40'),
(194, '160', '', '', '', '', '2019-10-18 04:22:18'),
(195, '161', '', '', '', '', '2019-10-18 04:22:48'),
(196, '162', '', '', '', '', '2019-10-18 04:23:22'),
(197, '163', '', '', '', '', '2019-10-18 04:23:57'),
(198, '164', '', '', '', '', '2019-10-18 04:24:26'),
(199, '165', '', '', '', '', '2019-10-18 04:24:57'),
(200, '166', '', '', '', '', '2019-10-18 04:25:34'),
(201, '167', '', '', '', '', '2019-10-18 04:26:02'),
(202, '168', '', '', '', '', '2019-10-18 04:26:47'),
(203, '169', '', '', '', '', '2019-10-18 04:27:13'),
(204, '170', '', '', '', '', '2019-10-18 04:28:04'),
(205, '171', '', '', '', '', '2019-10-18 04:28:38'),
(206, '172', '', '', '', '', '2019-10-18 04:29:24'),
(207, '173', '', '', '', '', '2019-10-18 04:29:55'),
(208, '174', '', '', '', '', '2019-10-18 04:30:31'),
(209, '175', '', '', '', '', '2019-10-18 04:30:58'),
(210, '176', '', '', '', '', '2019-10-18 04:31:54'),
(211, '177', '', '', '', '', '2019-10-18 04:33:10'),
(212, '178', '', '', '', '', '2019-10-18 04:34:06'),
(213, '179', '', '', '', '', '2019-10-18 04:36:52'),
(214, '180', '', '', '', '', '2019-10-18 04:37:30'),
(215, '181', '', '', '', '', '2019-10-18 04:38:13'),
(216, '182', '', '', '', '', '2019-10-18 04:38:46'),
(218, '183', '', '', '', '', '2019-10-18 04:40:18'),
(219, '184', '', '', '', '', '2019-10-18 04:41:29'),
(220, '185', '', '', '', '', '2019-10-18 04:42:00'),
(221, '186', '', '', '', '', '2019-10-18 04:42:43'),
(222, '187', '', '', '', '', '2019-10-18 04:43:23'),
(223, '188', '', '', '', '', '2019-10-18 04:43:56'),
(224, '189', '', '', '', '', '2019-10-18 04:44:27'),
(225, '190', '', '', '', '', '2019-10-18 04:45:01'),
(226, '191', '', '', '', '', '2019-10-18 04:45:34'),
(227, '192', '', '', '', '', '2019-10-18 04:46:15'),
(228, '193', '', '', '', '', '2019-10-18 04:46:44'),
(229, '194', '', '', '', '', '2019-10-18 04:47:23'),
(230, '195', '', '', '', '', '2019-10-18 04:48:00'),
(231, '196', '', '', '', '', '2019-10-18 04:48:42'),
(232, '197', '', '', '', '', '2019-10-18 04:49:10'),
(233, '198', '', '', '', '', '2019-10-18 04:49:49'),
(234, '199', '', '', '', '', '2019-10-18 04:50:36'),
(235, '200', '', '', '', '', '2019-10-18 04:51:18'),
(236, '201', '', '', '', '', '2019-10-18 04:51:48'),
(237, '202', '', '', '', '', '2019-10-18 04:52:23'),
(238, '203', '', '', '', '', '2019-10-18 04:52:52'),
(239, '204', '', '', '', '', '2019-10-18 04:53:21'),
(240, '205', '', '', '', '', '2019-10-18 04:53:47'),
(241, '206', '', '', '', '', '2019-10-18 04:54:27'),
(242, '207', '', '', '', '', '2019-10-18 04:55:09'),
(243, '208', '', '', '', '', '2019-10-18 04:55:56'),
(244, '209', '', '', '', '', '2019-10-18 04:56:27'),
(245, '210', '', '', '', '', '2019-10-18 04:57:03'),
(246, '211', '', '', '', '', '2019-10-18 04:57:31'),
(247, '212', '', '', '', '', '2019-10-18 04:58:05'),
(248, '213', '', '', '', '', '2019-10-18 04:58:45'),
(249, '214', '', '', '', '', '2019-10-18 04:59:13'),
(250, '215', '', '', '', '', '2019-10-18 05:00:12'),
(251, '216', '', '', '', '', '2019-10-18 05:00:47'),
(252, '217', '', '', '', '', '2019-10-18 05:01:44'),
(253, '218', '', '', '', '', '2019-10-18 05:02:26'),
(254, '219', '', '', '', '', '2019-10-18 05:02:55'),
(255, '220', '', '', '', '', '2019-10-18 05:03:29'),
(256, '221', '', '', '', '', '2019-10-18 05:04:01'),
(257, '222', '', '', '', '', '2019-10-18 05:04:36'),
(258, '223', '', '', '', '', '2019-10-18 05:05:06'),
(259, '224', '', '', '', '', '2019-10-18 05:05:38'),
(260, '225', '', '', '', '', '2019-10-18 05:06:10'),
(261, '226', '', '', '', '', '2019-10-18 05:06:39'),
(262, '227', '', '', '', '', '2019-10-18 05:07:06'),
(263, '228', '', '', '', '', '2019-10-18 05:07:33'),
(264, '229', '', '', '', '', '2019-10-18 05:08:01'),
(265, '230', '', '', '', '', '2019-10-18 05:08:29'),
(266, '231', '', '', '', '', '2019-10-18 05:08:55'),
(267, '232', '', '', '', '', '2019-10-18 05:09:31'),
(268, '233', '', '', '', '', '2019-10-18 05:10:07'),
(269, '234', '', '', '', '', '2019-10-18 05:10:38'),
(270, '235', '', '', '', '', '2019-10-18 05:11:06'),
(271, '236', '', '', '', '', '2019-10-18 05:11:38'),
(272, '237', '', '', '', '', '2019-10-18 05:12:25'),
(273, '238', '', '', '', '', '2019-10-18 05:13:00'),
(274, '239', '', '', '', '', '2019-10-18 05:13:32'),
(275, '240', '', '', '', '', '2019-10-18 05:13:56'),
(276, '241', '', '', '', '', '2019-10-18 05:14:18'),
(277, '242', '', '', '', '', '2019-10-18 05:14:59'),
(278, '243', '', '', '', '', '2019-10-18 05:15:22'),
(279, '244', '', '', '', '', '2019-10-18 05:15:42'),
(280, '245', '', '', '', '', '2019-10-18 05:16:06'),
(281, '246', '', '', '', '', '2019-10-18 05:16:43'),
(282, '247', '', '', '', '', '2019-10-18 05:17:09'),
(283, '248', '', '', '', '', '2019-10-18 05:17:39'),
(284, '249', '', '', '', '', '2019-10-18 05:18:21'),
(285, '250', '', '', '', '', '2019-10-18 05:18:50'),
(286, '251', '', '', '', '', '2019-10-18 05:19:24'),
(287, '252', '', '', '', '', '2019-10-18 05:20:16'),
(288, '253', '', '', '', '', '2019-10-18 05:20:58'),
(289, '254', '', '', '', '', '2019-10-18 05:21:46'),
(290, '255', '', '', '', '', '2019-10-18 05:22:15'),
(291, '256', '', '', '', '', '2019-10-18 05:23:05'),
(292, '257', '', '', '', '', '2019-10-18 05:23:42'),
(293, '258', '', '', '', '', '2019-10-18 05:24:08'),
(294, '259', '', '', '', '', '2019-10-18 05:24:52'),
(295, '260', '', '', '', '', '2019-10-18 05:25:11'),
(296, '261', '', '', '', '', '2019-10-18 05:25:45'),
(297, '262', '', '', '', '', '2019-10-18 05:26:35'),
(298, '263', '', '', '', '', '2019-10-18 05:27:16'),
(299, '264', '', '', '', '', '2019-10-18 05:28:29'),
(300, '265', '', '', '', '', '2019-10-18 05:28:59'),
(301, '266', '', '', '', '', '2019-10-18 05:29:33'),
(302, '267', '', '', '', '', '2019-10-18 05:30:07'),
(303, '268', '', '', '', '', '2019-10-18 05:30:31'),
(304, '269', '', '', '', '', '2019-10-18 05:30:59'),
(305, '270', '', '', '', '', '2019-10-18 05:31:48'),
(306, '271', '', '', '', '', '2019-10-18 05:32:22'),
(307, '272', '', '', '', '', '2019-10-18 05:32:54'),
(308, '273', '', '', '', '', '2019-10-18 05:33:31'),
(309, '274', '', '', '', '', '2019-10-18 05:34:02'),
(310, '275', '', '', '', '', '2019-10-18 05:34:27'),
(311, '276', '', '', '', '', '2019-10-18 05:34:56'),
(312, '277', '', '', '', '', '2019-10-18 05:35:26'),
(313, '278', '', '', '', '', '2019-10-18 05:35:59'),
(314, '279', '', '', '', '', '2019-10-18 05:36:31'),
(315, '280', '', '', '', '', '2019-10-18 05:36:52'),
(316, '281', '', '', '', '', '2019-10-18 05:37:19'),
(317, '282', '', '', '', '', '2019-10-18 05:38:06'),
(318, '283', '', '', '', '', '2019-10-18 05:38:43'),
(319, '284', '', '', '', '', '2019-10-18 05:39:09'),
(320, '285', '', '', '', '', '2019-10-18 05:39:42'),
(321, '286', '', '', '', '', '2019-10-18 05:40:21'),
(322, '287', '', '', '', '', '2019-10-18 05:40:58'),
(323, '288', '', '', '', '', '2019-10-18 05:41:34'),
(324, '289', '', '', '', '', '2019-10-18 05:41:55'),
(325, '290', '', '', '', '', '2019-10-18 05:42:22'),
(326, '291', '', '', '', '', '2019-10-18 05:42:48'),
(327, '292', '', '', '', '', '2019-10-18 05:43:19'),
(328, '293', '', '', '', '', '2019-10-18 05:44:33'),
(329, '294', '', '', '', '', '2019-10-18 05:45:15'),
(330, '295', '', '', '', '', '2019-10-18 05:45:47'),
(331, '296', '', '', '', '', '2019-10-18 05:46:24'),
(332, '297', '', '', '', '', '2019-10-18 05:46:48'),
(333, '298', '', '', '', '', '2019-10-18 05:47:26'),
(334, '299', '', '', '', '', '2019-10-18 05:47:52'),
(335, '300', '', '', '', '', '2019-10-18 05:48:27'),
(336, '301', '', '', '', '', '2019-10-18 05:48:57'),
(337, '302', '', '', '', '', '2019-10-18 05:49:27'),
(338, '303', '', '', '', '', '2019-10-18 05:49:47'),
(339, '304', '', '', '', '', '2019-10-18 05:50:11'),
(340, '305', '', '', '', '', '2019-10-18 05:50:43'),
(341, '306', '', '', '', '', '2019-10-18 05:51:07'),
(342, '307', '', '', '', '', '2019-10-18 05:51:33'),
(343, '308', '', '', '', '', '2019-10-18 05:52:15'),
(344, '309', '', '', '', '', '2019-10-18 05:52:55'),
(345, '310', '', '', '', '', '2019-10-18 05:53:31'),
(346, '311', '', '', '', '', '2019-10-18 05:53:58'),
(347, '312', '', '', '', '', '2019-10-18 05:54:40'),
(348, '313', '', '', '', '', '2019-10-18 05:55:09'),
(349, '314', '', '', '', '', '2019-10-18 07:19:32'),
(350, '315', '', '', '', '', '2019-10-18 07:20:00'),
(351, '316', '', '', '', '', '2019-10-18 07:20:49'),
(352, '317', '', '', '', '', '2019-10-18 07:21:19'),
(353, '318', '', '', '', '', '2019-10-18 07:21:50'),
(354, '319', '', '', '', '', '2019-10-18 07:22:18'),
(355, '320', '', '', '', '', '2019-10-18 07:22:50'),
(356, '321', '', '', '', '', '2019-10-18 07:23:21'),
(357, '322', '', '', '', '', '2019-10-18 07:23:54'),
(358, '323', '', '', '', '', '2019-10-18 07:24:22'),
(359, '324', '', '', '', '', '2019-10-18 07:24:48'),
(360, '325', '', '', '', '', '2019-10-18 07:25:19'),
(361, '326', '', '', '', '', '2019-10-18 07:25:46'),
(362, '327', '', '', '', '', '2019-10-18 07:26:22'),
(363, '328', '', '', '', '', '2019-10-18 07:26:53'),
(364, '329', '', '', '', '', '2019-10-18 07:27:24'),
(365, '330', '', '', '', '', '2019-10-18 07:27:53'),
(366, '331', '', '', '', '', '2019-10-18 07:28:19'),
(367, '332', '', '', '', '', '2019-10-18 07:29:08'),
(368, '333', '', '', '', '', '2019-10-18 07:29:31'),
(369, '334', '', '', '', '', '2019-10-18 07:30:02'),
(370, '335', '', '', '', '', '2019-10-18 07:32:39'),
(371, '336', '', '', '', '', '2019-10-18 07:33:14'),
(372, '337', '', '', '', '', '2019-10-18 07:33:45'),
(373, '338', '', '', '', '', '2019-10-18 07:34:20'),
(374, '339', '', '', '', '', '2019-10-18 07:35:07'),
(375, '340', '', '', '', '', '2019-10-18 07:35:36'),
(376, '341', '', '', '', '', '2019-10-18 07:36:18'),
(377, '342', '', '', '', '', '2019-10-18 07:36:49'),
(378, '343', '', '', '', '', '2019-10-18 07:37:22'),
(379, '344', '', '', '', '', '2019-10-18 07:37:56'),
(380, '345', '', '', '', '', '2019-10-18 07:38:35'),
(381, '346', '', '', '', '', '2019-10-18 07:38:58'),
(382, '347', '', '', '', '', '2019-10-18 07:39:41'),
(383, '348', '', '', '', '', '2019-10-18 07:40:14'),
(384, '349', '', '', '', '', '2019-10-18 07:41:04'),
(385, '350', '', '', '', '', '2019-10-18 07:41:41'),
(386, '351', '', '', '', '', '2019-10-18 07:42:09'),
(387, '352', '', '', '', '', '2019-10-18 07:42:46'),
(388, '353', '', '', '', '', '2019-10-18 07:43:09'),
(389, '354', '', '', '', '', '2019-10-18 07:43:48'),
(390, '355', '', '', '', '', '2019-10-18 07:44:14'),
(391, '356', '', '', '', '', '2019-10-18 07:44:50'),
(392, '357', '', '', '', '', '2019-10-18 07:45:46'),
(393, '358', '', '', '', '', '2019-10-18 07:46:27'),
(394, '359', '', '', '', '', '2019-10-18 07:47:01'),
(395, '360', '', '', '', '', '2019-10-18 07:47:32'),
(396, '361', '', '', '', '', '2019-10-18 07:48:09'),
(397, '362', '', '', '', '', '2019-10-18 07:48:37'),
(398, '363', '', '', '', '', '2019-10-18 08:32:47'),
(399, '364', '', '', '', '', '2019-10-18 08:33:30'),
(400, '365', '', '', '', '', '2019-10-18 08:33:56'),
(401, '366', '', '', '', '', '2019-10-18 08:34:43'),
(402, '367', '', '', '', '', '2019-10-18 09:09:37'),
(403, '368', '', '', '', '', '2019-10-18 09:10:09'),
(404, '369', '', '', '', '', '2019-10-18 09:10:54'),
(405, '370', '', '', '', '', '2019-10-18 09:11:29'),
(406, '371', '', '', '', '', '2019-10-18 09:11:56'),
(407, '372', '', '', '', '', '2019-10-18 09:12:34'),
(408, '373', '', '', '', '', '2019-10-18 09:13:13'),
(409, '374', '', '', '', '', '2019-10-18 09:13:40'),
(410, '375', '', '', '', '', '2019-10-18 09:14:22'),
(411, '376', '', '', '', '', '2019-10-18 09:15:32'),
(412, '377', '', '', '', '', '2019-10-18 09:16:12'),
(413, '378', '', '', '', '', '2019-10-18 09:16:52'),
(414, '379', '', '', '', '', '2019-10-18 09:17:33'),
(415, '380', '', '', '', '', '2019-10-18 09:18:03'),
(416, '381', '', '', '', '', '2019-10-18 09:19:17'),
(417, '382', '', '', '', '', '2019-10-18 09:19:49'),
(418, '383', '', '', '', '', '2019-10-18 09:20:17'),
(419, '384', '', '', '', '', '2019-10-18 09:20:47'),
(420, '385', '', '', '', '', '2019-10-18 09:21:19'),
(421, '386', '', '', '', '', '2019-10-18 09:22:50'),
(422, '387', '', '', '', '', '2019-10-18 09:23:28'),
(423, '388', '', '', '', '', '2019-10-18 09:24:34'),
(424, '389', '', '', '', '', '2019-10-18 09:25:15'),
(425, '390', '', '', '', '', '2019-10-18 09:25:48'),
(426, '391', '', '', '', '', '2019-10-18 09:26:20'),
(427, '392', '', '', '', '', '2019-10-18 09:27:00'),
(428, '393', '', '', '', '', '2019-10-18 09:27:35'),
(429, '394', '', '', '', '', '2019-10-18 09:28:05'),
(430, '395', '', '', '', '', '2019-10-18 09:28:37'),
(431, '396', '', '', '', '', '2019-10-18 09:29:15'),
(432, '397', '', '', '', '', '2019-10-18 09:29:45'),
(433, '398', '', '', '', '', '2019-10-18 09:30:10'),
(434, '399', '', '', '', '', '2019-10-18 09:30:45'),
(435, '400', '', '', '', '', '2019-10-18 09:31:13'),
(436, '401', '', '', '', '', '2019-10-18 09:32:06'),
(437, '402', '', '', '', '', '2019-10-18 09:32:40'),
(438, '403', '', '', '', '', '2019-10-18 09:33:26'),
(439, '404', '', '', '', '', '2019-10-18 09:34:12'),
(440, '405', '', '', '', '', '2019-10-18 09:34:45'),
(441, '406', '', '', '', '', '2019-10-18 09:35:40'),
(442, '407', '', '', '', '', '2019-10-18 09:36:07'),
(443, '408', '', '', '', '', '2019-10-18 09:36:34'),
(444, '409', '', '', '', '', '2019-10-18 09:37:04'),
(445, '410', '', '', '', '', '2019-10-18 09:37:28'),
(446, '411', '', '', '', '', '2019-10-18 09:38:04'),
(447, '412', '', '', '', '', '2019-10-18 09:39:13'),
(448, '413', '', '', '', '', '2019-10-18 09:39:49'),
(449, '414', '', '', '', '', '2019-10-18 09:40:20'),
(450, '415', '', '', '', '', '2019-10-18 09:41:00'),
(451, '416', '', '', '', '', '2019-10-18 09:41:45'),
(452, '417', '', '', '', '', '2019-10-18 09:42:21'),
(453, '418', '', '', '', '', '2019-10-18 09:43:13'),
(454, '419', '', '', '', '', '2019-10-18 09:44:01'),
(455, '420', '', '', '', '', '2019-10-18 09:44:40'),
(456, '421', '', '', '', '', '2019-10-18 09:45:24'),
(457, '422', '', '', '', '', '2019-10-18 09:45:57'),
(458, '423', '', '', '', '', '2019-10-18 09:46:35'),
(459, '424', '', '', '', '', '2019-10-18 09:47:02'),
(460, '425', '', '', '', '', '2019-10-18 09:48:07'),
(461, '426', '', '', '', '', '2019-10-18 09:48:46'),
(462, '427', '', '', '', '', '2019-10-18 09:49:18'),
(463, '428', '', '', '', '', '2019-10-18 09:50:08'),
(464, '429', '', '', '', '', '2019-10-18 09:50:55'),
(465, '430', '', '', '', '', '2019-10-18 09:51:39'),
(466, '431', '', '', '', '', '2019-10-18 09:52:29'),
(467, '432', '', '', '', '', '2019-10-18 09:53:00'),
(468, '433', '', '', '', '', '2019-10-18 09:54:04'),
(469, '434', '', '', '', '', '2019-10-18 09:54:35'),
(470, '435', '', '', '', '', '2019-10-18 09:55:13'),
(471, '436', '', '', '', '', '2019-10-18 09:55:40'),
(472, '437', '', '', '', '', '2019-10-18 09:56:18'),
(473, '438', '', '', '', '', '2019-10-18 09:56:40'),
(474, '439', '', '', '', '', '2019-10-18 09:57:15'),
(475, '440', '', '', '', '', '2019-10-18 09:57:53'),
(476, '441', '', '', '', '', '2019-10-18 09:58:23'),
(477, '442', '', '', '', '', '2019-10-18 09:58:49'),
(478, '443', '', '', '', '', '2019-10-18 09:59:13'),
(479, '444', '', '', '', '', '2019-10-18 09:59:34'),
(480, '445', '', '', '', '', '2019-10-18 10:00:18'),
(481, '446', '', '', '', '', '2019-10-18 10:00:38'),
(482, '447', '', '', '', '', '2019-10-18 10:01:44'),
(483, '448', '', '', '', '', '2019-10-18 10:02:26'),
(484, '449', '', '', '', '', '2019-10-18 10:02:54'),
(485, '450', '', '', '', '', '2019-10-18 10:03:20'),
(486, '451', '', '', '', '', '2019-10-18 10:03:46'),
(487, '452', '', '', '', '', '2019-10-18 10:04:28'),
(488, '453', '', '', '', '', '2019-10-18 10:04:58'),
(489, '454', '', '', '', '', '2019-10-18 10:05:38'),
(490, '455', '', '', '', '', '2019-10-18 10:06:02'),
(491, '456', '', '', '', '', '2019-10-18 10:06:40'),
(492, '457', '', '', '', '', '2019-10-18 10:07:20'),
(493, '458', '', '', '', '', '2019-10-18 10:07:52'),
(494, '459', '', '', '', '', '2019-10-18 10:09:15'),
(495, '460', '', '', '', '', '2019-10-18 10:25:44'),
(496, '461', '', '', '', '', '2019-10-18 10:26:16'),
(497, '462', '', '', '', '', '2019-10-18 10:26:49'),
(498, '463', '', '', '', '', '2019-10-18 10:27:30'),
(499, '464', '', '', '', '', '2019-10-18 10:28:01'),
(500, '465', '', '', '', '', '2019-10-18 10:28:27'),
(501, '466', '', '', '', '', '2019-10-18 10:29:15'),
(502, '467', '', '', '', '', '2019-10-18 10:29:45'),
(503, '468', '', '', '', '', '2019-10-18 10:30:23'),
(504, '469', '', '', '', '', '2019-10-18 10:31:11'),
(505, '470', '', '', '', '', '2019-10-18 10:31:48'),
(506, '471', '', '', '', '', '2019-10-18 10:32:14'),
(507, '472', '', '', '', '', '2019-10-18 10:32:48'),
(508, '473', '', '', '', '', '2019-10-18 10:33:19'),
(509, '474', '', '', '', '', '2019-10-18 10:33:50'),
(510, '475', '', '', '', '', '2019-10-18 10:35:09'),
(511, '476', '', '', '', '', '2019-10-18 10:36:05'),
(512, '477', '', '', '', '', '2019-10-18 10:36:48'),
(513, '478', '', '', '', '', '2019-10-18 10:37:25'),
(514, '479', '', '', '', '', '2019-10-18 10:37:57'),
(515, '480', '', '', '', '', '2019-10-18 10:38:32'),
(516, '481', '', '', '', '', '2019-10-18 10:38:54'),
(517, '482', '', '', '', '', '2019-10-18 10:39:25'),
(518, '483', '', '', '', '', '2019-10-18 10:41:21'),
(519, '484', '', '', '', '', '2019-10-18 10:42:06'),
(520, '485', '', '', '', '', '2019-10-18 10:42:38'),
(521, '486', '', '', '', '', '2019-10-18 10:43:24'),
(522, '487', '', '', '', '', '2019-10-18 10:43:52'),
(523, '488', '', '', '', '', '2019-10-18 10:44:19'),
(524, '489', '', '', '', '', '2019-10-18 10:44:46'),
(525, '490', '', '', '', '', '2019-10-18 10:45:22'),
(526, '491', '', '', '', '', '2019-10-18 10:46:16'),
(527, '492', '', '', '', '', '2019-10-18 10:46:45'),
(528, '493', '', '', '', '', '2019-10-18 10:47:47'),
(529, '494', '', '', '', '', '2019-10-18 10:48:43'),
(530, '495', '', '', '', '', '2019-10-18 10:49:34'),
(531, '496', '', '', '', '', '2019-10-18 10:50:03'),
(532, '497', '', '', '', '', '2019-10-18 10:50:41'),
(533, '498', '', '', '', '', '2019-10-18 10:51:03'),
(534, '499', '', '', '', '', '2019-10-18 10:51:26'),
(535, '500', '', '', '', '', '2019-10-18 10:52:02'),
(536, '501', '', '', '', '', '2019-10-18 10:52:41'),
(537, '502', '', '', '', '', '2019-10-18 10:53:29'),
(538, '503', '', '', '', '', '2019-10-18 10:54:03'),
(539, '504', '', '', '', '', '2019-10-18 10:54:49'),
(540, '505', '', '', '', '', '2019-10-18 10:55:17'),
(541, '506', '', '', '', '', '2019-10-18 10:55:38'),
(542, '507', '', '', '', '', '2019-10-18 10:56:12'),
(543, '508', '', '', '', '', '2019-10-18 10:56:38'),
(544, '509', '', '', '', '', '2019-10-18 10:57:21'),
(545, '510', '', '', '', '', '2019-10-18 10:57:46'),
(546, '511', '', '', '', '', '2019-10-18 10:58:31'),
(547, '512', '', '', '', '', '2019-10-18 10:59:03'),
(548, '513', '', '', '', '', '2019-10-18 10:59:58'),
(549, '514', '', '', '', '', '2019-10-18 11:00:28'),
(550, '515', '', '', '', '', '2019-10-18 11:01:04'),
(551, '516', '', '', '', '', '2019-10-18 11:01:33'),
(552, '517', '', '', '', '', '2019-10-18 11:02:14'),
(553, '518', '', '', '', '', '2019-10-18 11:02:46'),
(554, '519', '', '', '', '', '2019-10-18 11:03:20'),
(555, '520', '', '', '', '', '2019-10-18 11:03:42'),
(556, '521', '', '', '', '', '2019-10-18 11:04:16'),
(557, '522', '', '', '', '', '2019-10-18 11:04:46'),
(558, '523', '', '', '', '', '2019-10-18 11:05:37'),
(559, '524', '', '', '', '', '2019-10-18 11:06:20'),
(560, '525', '', '', '', '', '2019-10-18 11:06:46'),
(561, '526', '', '', '', '', '2019-10-18 11:07:43'),
(562, '527', '', '', '', '', '2019-10-18 11:08:38'),
(563, '528', '', '', '', '', '2019-10-18 11:09:11'),
(564, '529', '', '', '', '', '2019-10-18 11:09:39'),
(565, '530', '', '', '', '', '2019-10-18 11:10:16'),
(566, '531', '', '', '', '', '2019-10-18 11:11:28'),
(567, '532', '', '', '', '', '2019-10-18 11:12:07'),
(568, '533', '', '', '', '', '2019-10-18 11:13:02'),
(569, '534', '', '', '', '', '2019-10-18 11:13:32'),
(570, '535', '', '', '', '', '2019-10-18 11:14:08'),
(571, '536', '', '', '', '', '2019-10-18 11:14:45'),
(572, '537', '', '', '', '', '2019-10-18 11:15:41'),
(573, '538', '', '', '', '', '2019-10-18 11:16:20'),
(574, '539', '', '', '', '', '2019-10-18 11:17:00'),
(575, '540', '', '', '', '', '2019-10-18 11:17:29'),
(576, '541', '', '', '', '', '2019-10-18 11:17:58'),
(577, '542', '', '', '', '', '2019-10-18 11:18:28'),
(578, '543', '', '', '', '', '2019-10-18 11:19:06'),
(579, '544', '', '', '', '', '2019-10-18 11:19:40'),
(580, '545', '', '', '', '', '2019-10-18 11:20:08'),
(581, '546', '', '', '', '', '2019-10-18 11:20:34'),
(582, '547', '', '', '', '', '2019-10-18 11:21:11'),
(583, '548', '', '', '', '', '2019-10-18 11:22:05'),
(584, '549', '', '', '', '', '2019-10-18 11:22:47'),
(585, '550', '', '', '', '', '2019-10-18 11:23:24'),
(586, '551', '', '', '', '', '2019-10-18 11:23:55'),
(587, '552', '', '', '', '', '2019-10-18 11:24:20'),
(588, '553', '', '', '', '', '2019-10-18 11:24:57'),
(589, '554', '', '', '', '', '2019-10-18 11:25:31'),
(590, '555', '', '', '', '', '2019-10-18 11:25:59'),
(591, '556', '', '', '', '', '2019-10-18 11:26:33'),
(592, '557', '', '', '', '', '2019-10-18 11:27:01'),
(593, '558', '', '', '', '', '2019-10-18 13:50:58'),
(594, '559', '', '', '', '', '2019-10-18 13:51:27'),
(595, '560', '', '', '', '', '2019-10-18 13:52:07'),
(596, '561', '', '', '', '', '2019-10-18 13:52:45'),
(597, '562', '', '', '', '', '2019-10-18 13:53:32'),
(598, '563', '', '', '', '', '2019-10-18 13:54:09'),
(599, '564', '', '', '', '', '2019-10-18 13:54:37'),
(600, '565', '', '', '', '', '2019-10-18 13:55:06'),
(601, '566', '', '', '', '', '2019-10-18 13:55:35'),
(602, '567', '', '', '', '', '2019-10-18 13:56:09'),
(603, '568', '', '', '', '', '2019-10-18 13:56:39'),
(604, '569', '', '', '', '', '2019-10-18 13:57:15'),
(605, '570', '', '', '', '', '2019-10-18 13:58:06'),
(606, '571', '', '', '', '', '2019-10-18 13:59:23'),
(607, '572', '', '', '', '', '2019-10-18 13:59:52'),
(608, '573', '', '', '', '', '2019-10-18 14:00:17'),
(609, '574', '', '', '', '', '2019-10-18 14:01:00'),
(610, '575', '', '', '', '', '2019-10-18 14:01:36'),
(611, '576', '', '', '', '', '2019-10-18 14:02:10'),
(612, '577', '', '', '', '', '2019-10-18 14:03:33'),
(613, '578', '', '', '', '', '2019-10-18 14:04:04'),
(614, '579', '', '', '', '', '2019-10-18 14:04:40'),
(615, '580', '', '', '', '', '2019-10-18 14:05:18'),
(616, '581', '', '', '', '', '2019-10-18 14:06:04'),
(617, '582', '', '', '', '', '2019-10-18 14:06:31'),
(618, '583', '', '', '', '', '2019-10-18 14:06:57'),
(619, '584', '', '', '', '', '2019-10-18 14:07:35'),
(620, '585', '', '', '', '', '2019-10-18 14:08:04'),
(621, '586', '', '', '', '', '2019-10-18 14:08:37'),
(622, '587', '', '', '', '', '2019-10-18 14:09:22'),
(623, '588', '', '', '', '', '2019-10-18 14:11:56'),
(624, '589', '', '', '', '', '2019-10-18 14:12:48'),
(625, '590', '', '', '', '', '2019-10-18 14:13:38'),
(626, '591', '', '', '', '', '2019-10-18 14:23:26'),
(627, '592', '', '', '', '', '2019-10-18 14:24:14'),
(628, '593', '', '', '', '', '2019-10-18 14:24:52'),
(629, '594', '', '', '', '', '2019-10-18 14:25:21'),
(630, '595', '', '', '', '', '2019-10-18 14:25:58'),
(631, '596', '', '', '', '', '2019-10-18 14:26:26'),
(632, '597', '', '', '', '', '2019-10-18 14:26:52'),
(633, '598', '', '', '', '', '2019-10-18 14:27:30'),
(634, '599', '', '', '', '', '2019-10-18 14:28:08'),
(635, '600', '', '', '', '', '2019-10-18 14:28:46'),
(636, '601', '', '', '', '', '2019-10-18 14:29:23'),
(637, '602', '', '', '', '', '2019-10-18 14:30:01'),
(638, '603', '', '', '', '', '2019-10-18 14:30:29'),
(639, '604', '', '', '', '', '2019-10-18 14:30:59'),
(640, '605', '', '', '', '', '2019-10-18 14:31:24'),
(641, '606', '', '', '', '', '2019-10-18 14:32:08'),
(642, '607', '', '', '', '', '2019-10-18 14:33:50'),
(643, '608', '', '', '', '', '2019-10-18 14:34:25'),
(644, '609', '', '', '', '', '2019-10-18 14:35:00'),
(645, '610', '', '', '', '', '2019-10-18 14:35:32'),
(646, '611', '', '', '', '', '2019-10-18 14:36:13'),
(647, '612', '', '', '', '', '2019-10-18 14:37:02'),
(648, '613', '', '', '', '', '2019-10-18 14:37:32'),
(649, '614', '', '', '', '', '2019-10-18 14:38:04'),
(650, '615', '', '', '', '', '2019-10-18 14:38:47'),
(651, '616', '', '', '', '', '2019-10-18 14:39:20'),
(652, '617', '', '', '', '', '2019-10-18 14:39:54'),
(653, '618', '', '', '', '', '2019-10-18 14:40:30'),
(654, '619', '', '', '', '', '2019-10-18 14:41:19'),
(655, '620', '', '', '', '', '2019-10-18 14:42:02'),
(656, '621', '', '', '', '', '2019-10-18 14:42:54'),
(657, '622', '', '', '', '', '2019-10-18 14:43:35'),
(658, '623', '', '', '', '', '2019-10-18 14:44:17'),
(659, '624', '', '', '', '', '2019-10-18 14:44:54'),
(660, '625', '', '', '', '', '2019-10-18 14:45:34'),
(661, '626', '', '', '', '', '2019-10-18 14:46:25'),
(662, '627', '', '', '', '', '2019-10-18 14:46:52'),
(663, '628', '', '', '', '', '2019-10-18 14:47:22'),
(664, '629', '', '', '', '', '2019-10-18 14:47:59'),
(665, '630', '', '', '', '', '2019-10-18 14:48:42'),
(666, '631', '', '', '', '', '2019-10-18 14:49:24'),
(667, '632', '', '', '', '', '2019-10-18 14:49:58'),
(668, '633', '', '', '', '', '2019-10-18 14:50:29'),
(669, '634', '', '', '', '', '2019-10-18 14:50:56'),
(670, '635', '', '', '', '', '2019-10-18 14:51:28'),
(671, '636', '', '', '', '', '2019-10-18 14:53:23'),
(672, '637', '', '', '', '', '2019-10-18 14:54:21'),
(673, '638', '', '', '', '', '2019-10-18 14:55:17'),
(674, '639', '', '', '', '', '2019-10-18 14:55:51'),
(675, '640', '', '', '', '', '2019-10-18 14:56:26'),
(676, '641', '', '', '', '', '2019-10-18 14:56:51'),
(677, '642', '', '', '', '', '2019-10-18 14:57:17'),
(678, '643', '', '', '', '', '2019-10-18 14:57:46'),
(679, '644', '', '', '', '', '2019-10-18 14:58:13'),
(680, '645', '', '', '', '', '2019-10-18 14:58:50'),
(681, '646', '', '', '', '', '2019-10-18 14:59:27'),
(682, '647', '', '', '', '', '2019-10-18 15:00:00'),
(683, '648', '', '', '', '', '2019-10-18 15:00:30'),
(684, '649', '', '', '', '', '2019-10-18 15:01:06'),
(685, '650', '', '', '', '', '2019-10-18 15:01:52'),
(686, '651', '', '', '', '', '2019-10-18 15:02:32'),
(687, '652', '', '', '', '', '2019-10-18 15:03:10'),
(688, '653', '', '', '', '', '2019-10-18 15:03:51'),
(689, '654', '', '', '', '', '2019-10-18 15:04:26'),
(690, '655', '', '', '', '', '2019-10-18 15:05:04'),
(691, '656', '', '', '', '', '2019-10-18 15:05:51'),
(692, '657', '', '', '', '', '2019-10-18 15:06:12'),
(693, '658', '', '', '', '', '2019-10-18 15:06:49'),
(694, '659', '', '', '', '', '2019-10-18 15:07:23'),
(696, '661', '', '', '', '', '2019-10-18 15:08:44'),
(697, '662', '', '', '', '', '2019-10-18 15:09:32'),
(698, '663', '', '', '', '', '2019-10-18 15:10:07'),
(699, '664', '', '', '', '', '2019-10-18 15:10:42'),
(700, '665', '', '', '', '', '2019-10-18 15:11:35'),
(701, '666', '', '', '', '', '2019-10-18 15:12:01'),
(702, '667', '', '', '', '', '2019-10-18 15:12:34'),
(703, '668', '', '', '', '', '2019-10-18 15:13:34'),
(704, '669', '', '', '', '', '2019-10-18 15:14:06'),
(705, '670', '', '', '', '', '2019-10-18 15:14:46'),
(706, '671', '', '', '', '', '2019-10-18 15:15:23'),
(707, '672', '', '', '', '', '2019-10-18 15:15:51'),
(708, '673', '', '', '', '', '2019-10-18 15:16:17'),
(709, '674', '', '', '', '', '2019-10-18 15:16:51'),
(710, '675', '', '', '', '', '2019-10-18 15:17:19'),
(711, '676', '', '', '', '', '2019-10-18 15:18:00'),
(712, '677', '', '', '', '', '2019-10-18 15:18:30'),
(713, '678', '', '', '', '', '2019-10-18 15:18:58'),
(714, '679', '', '', '', '', '2019-10-18 15:19:35'),
(715, '680', '', '', '', '', '2019-10-18 15:20:05'),
(716, '681', '', '', '', '', '2019-10-18 15:20:32'),
(717, '682', '', '', '', '', '2019-10-18 15:21:01'),
(718, '683', '', '', '', '', '2019-10-18 15:21:38'),
(719, '684', '', '', '', '', '2019-10-18 15:22:20'),
(720, '685', '', '', '', '', '2019-10-18 16:35:56'),
(721, '686', '', '', '', '', '2019-10-18 16:36:41'),
(722, '687', '', '', '', '', '2019-10-18 16:37:22'),
(723, '688', '', '', '', '', '2019-10-18 16:38:11'),
(724, '689', '', '', '', '', '2019-10-18 16:38:49'),
(725, '690', '', '', '', '', '2019-10-18 16:39:32'),
(726, '691', '', '', '', '', '2019-10-18 16:40:17'),
(727, '692', '', '', '', '', '2019-10-18 16:40:43'),
(728, '693', '', '', '', '', '2019-10-18 16:41:16'),
(729, '694', '', '', '', '', '2019-10-18 16:41:54'),
(730, '695', '', '', '', '', '2019-10-18 16:42:33'),
(731, '696', '', '', '', '', '2019-10-18 16:43:10'),
(732, '697', '', '', '', '', '2019-10-18 16:43:48'),
(733, '698', '', '', '', '', '2019-10-18 16:44:13'),
(734, '699', '', '', '', '', '2019-10-18 16:44:41'),
(735, '700', '', '', '', '', '2019-10-18 16:45:10'),
(736, '701', '', '', '', '', '2019-10-18 16:45:39'),
(737, '702', '', '', '', '', '2019-10-18 16:46:05'),
(738, '703', '', '', '', '', '2019-10-18 16:46:35'),
(739, '704', '', '', '', '', '2019-10-18 16:47:05'),
(740, '705', '', '', '', '', '2019-10-18 16:47:51'),
(741, '706', '', '', '', '', '2019-10-18 16:48:30'),
(742, '707', '', '', '', '', '2019-10-18 16:49:11'),
(743, '708', '', '', '', '', '2019-10-18 16:49:35'),
(744, '709', '', '', '', '', '2019-10-18 16:50:07'),
(745, '710', '', '', '', '', '2019-10-18 16:50:35'),
(746, '711', '', '', '', '', '2019-10-18 16:51:03'),
(747, '712', '', '', '', '', '2019-10-18 16:51:25'),
(748, '713', '', '', '', '', '2019-10-18 16:52:25'),
(749, '714', '', '', '', '', '2019-10-18 16:53:25'),
(750, '715', '', '', '', '', '2019-10-18 16:53:56'),
(751, '716', '', '', '', '', '2019-10-18 16:54:21'),
(752, '717', '', '', '', '', '2019-10-18 16:54:54'),
(753, '718', '', '', '', '', '2019-10-18 16:55:33'),
(754, '719', '', '', '', '', '2019-10-18 16:56:06'),
(755, '720', '', '', '', '', '2019-10-18 16:56:36'),
(756, '721', '', '', '', '', '2019-10-18 16:59:07'),
(757, '722', '', '', '', '', '2019-10-18 16:59:53'),
(758, '723', '', '', '', '', '2019-10-18 17:00:32'),
(759, '724', '', '', '', '', '2019-10-18 17:01:00'),
(760, '725', '', '', '', '', '2019-10-18 17:01:36'),
(761, '726', '', '', '', '', '2019-10-18 17:02:09'),
(762, '727', '', '', '', '', '2019-10-18 17:02:49'),
(764, '729', '', '', '', '', '2019-10-18 17:04:03'),
(765, '730', '', '', '', '', '2019-10-18 17:04:38'),
(766, '731', '', '', '', '', '2019-10-18 17:05:12'),
(767, '732', '', '', '', '', '2019-10-18 17:05:32'),
(768, '733', '', '', '', '', '2019-10-18 17:06:17'),
(769, '734', '', '', '', '', '2019-10-21 10:35:29'),
(770, '735', '', '', '', '', '2019-10-21 10:36:10'),
(772, '660', 'Uric Acid', '3.8 -- 8.2', '2.8 -- 6.1', 'mg/dl', '2019-10-23 19:35:54'),
(773, '728', '', '', '', '', '2020-05-26 17:14:19'),
(774, '736', 'Test', '0.5', '0.19', '', '2020-05-26 17:22:25'),
(775, '737', 'Test', 'Male ', '', 'ICU', '2020-07-22 06:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(100) NOT NULL,
  `doctor` varchar(500) NOT NULL,
  `weekday` varchar(100) NOT NULL,
  `s_time` varchar(100) NOT NULL,
  `e_time` varchar(100) NOT NULL,
  `s_time_key` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_schedule`
--

INSERT INTO `time_schedule` (`id`, `doctor`, `weekday`, `s_time`, `e_time`, `s_time_key`, `duration`) VALUES
(112, '155', 'Friday', '01:45 PM', '02:45 PM', '165', '3'),
(111, '153', 'Thursday', '05:00 PM', '09:00 PM', '204', '3'),
(110, '153', 'Wednesday', '05:00 PM', '09:00 PM', '204', '3'),
(109, '153', 'Tuesday', '05:00 PM', '09:00 PM', '204', '3'),
(108, '153', 'Monday', '05:00 PM', '09:00 PM', '204', '3'),
(107, '153', 'Saturday', '05:00 PM', '09:00 PM', '204', '3'),
(106, '153', 'Friday', '05:00 PM', '09:00 PM', '204', '3');

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `s_time` varchar(100) NOT NULL,
  `e_time` varchar(100) NOT NULL,
  `weekday` varchar(100) NOT NULL,
  `s_time_key` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id`, `doctor`, `s_time`, `e_time`, `weekday`, `s_time_key`) VALUES
(2382, '153', '05:30 PM', '05:45 PM', 'Thursday', '210'),
(2381, '153', '05:15 PM', '05:30 PM', 'Thursday', '207'),
(2380, '153', '05:00 PM', '05:15 PM', 'Thursday', '204'),
(2379, '153', '08:45 PM', '09:00 PM', 'Wednesday', '249'),
(2378, '153', '08:30 PM', '08:45 PM', 'Wednesday', '246'),
(2377, '153', '08:15 PM', '08:30 PM', 'Wednesday', '243'),
(2376, '153', '08:00 PM', '08:15 PM', 'Wednesday', '240'),
(2375, '153', '07:45 PM', '08:00 PM', 'Wednesday', '237'),
(2374, '153', '07:30 PM', '07:45 PM', 'Wednesday', '234'),
(2373, '153', '07:15 PM', '07:30 PM', 'Wednesday', '231'),
(2399, '155', '02:30 PM', '02:45 PM', 'Friday', '174'),
(2398, '155', '02:15 PM', '02:30 PM', 'Friday', '171'),
(2397, '155', '02:00 PM', '02:15 PM', 'Friday', '168'),
(2396, '155', '01:45 PM', '02:00 PM', 'Friday', '165'),
(2395, '153', '08:45 PM', '09:00 PM', 'Thursday', '249'),
(2394, '153', '08:30 PM', '08:45 PM', 'Thursday', '246'),
(2393, '153', '08:15 PM', '08:30 PM', 'Thursday', '243'),
(2392, '153', '08:00 PM', '08:15 PM', 'Thursday', '240'),
(2391, '153', '07:45 PM', '08:00 PM', 'Thursday', '237'),
(2390, '153', '07:30 PM', '07:45 PM', 'Thursday', '234'),
(2389, '153', '07:15 PM', '07:30 PM', 'Thursday', '231'),
(2388, '153', '07:00 PM', '07:15 PM', 'Thursday', '228'),
(2387, '153', '06:45 PM', '07:00 PM', 'Thursday', '225'),
(2386, '153', '06:30 PM', '06:45 PM', 'Thursday', '222'),
(2385, '153', '06:15 PM', '06:30 PM', 'Thursday', '219'),
(2384, '153', '06:00 PM', '06:15 PM', 'Thursday', '216'),
(2383, '153', '05:45 PM', '06:00 PM', 'Thursday', '213'),
(2372, '153', '07:00 PM', '07:15 PM', 'Wednesday', '228'),
(2371, '153', '06:45 PM', '07:00 PM', 'Wednesday', '225'),
(2370, '153', '06:30 PM', '06:45 PM', 'Wednesday', '222'),
(2369, '153', '06:15 PM', '06:30 PM', 'Wednesday', '219'),
(2368, '153', '06:00 PM', '06:15 PM', 'Wednesday', '216'),
(2367, '153', '05:45 PM', '06:00 PM', 'Wednesday', '213'),
(2366, '153', '05:30 PM', '05:45 PM', 'Wednesday', '210'),
(2365, '153', '05:15 PM', '05:30 PM', 'Wednesday', '207'),
(2364, '153', '05:00 PM', '05:15 PM', 'Wednesday', '204'),
(2363, '153', '08:45 PM', '09:00 PM', 'Tuesday', '249'),
(2362, '153', '08:30 PM', '08:45 PM', 'Tuesday', '246'),
(2361, '153', '08:15 PM', '08:30 PM', 'Tuesday', '243'),
(2360, '153', '08:00 PM', '08:15 PM', 'Tuesday', '240'),
(2359, '153', '07:45 PM', '08:00 PM', 'Tuesday', '237'),
(2358, '153', '07:30 PM', '07:45 PM', 'Tuesday', '234'),
(2357, '153', '07:15 PM', '07:30 PM', 'Tuesday', '231'),
(2356, '153', '07:00 PM', '07:15 PM', 'Tuesday', '228'),
(2355, '153', '06:45 PM', '07:00 PM', 'Tuesday', '225'),
(2354, '153', '06:30 PM', '06:45 PM', 'Tuesday', '222'),
(2353, '153', '06:15 PM', '06:30 PM', 'Tuesday', '219'),
(2352, '153', '06:00 PM', '06:15 PM', 'Tuesday', '216'),
(2351, '153', '05:45 PM', '06:00 PM', 'Tuesday', '213'),
(2350, '153', '05:30 PM', '05:45 PM', 'Tuesday', '210'),
(2349, '153', '05:15 PM', '05:30 PM', 'Tuesday', '207'),
(2348, '153', '05:00 PM', '05:15 PM', 'Tuesday', '204'),
(2347, '153', '08:45 PM', '09:00 PM', 'Monday', '249'),
(2346, '153', '08:30 PM', '08:45 PM', 'Monday', '246'),
(2345, '153', '08:15 PM', '08:30 PM', 'Monday', '243'),
(2344, '153', '08:00 PM', '08:15 PM', 'Monday', '240'),
(2343, '153', '07:45 PM', '08:00 PM', 'Monday', '237'),
(2342, '153', '07:30 PM', '07:45 PM', 'Monday', '234'),
(2341, '153', '07:15 PM', '07:30 PM', 'Monday', '231'),
(2340, '153', '07:00 PM', '07:15 PM', 'Monday', '228'),
(2339, '153', '06:45 PM', '07:00 PM', 'Monday', '225'),
(2338, '153', '06:30 PM', '06:45 PM', 'Monday', '222'),
(2337, '153', '06:15 PM', '06:30 PM', 'Monday', '219'),
(2336, '153', '06:00 PM', '06:15 PM', 'Monday', '216'),
(2335, '153', '05:45 PM', '06:00 PM', 'Monday', '213'),
(2334, '153', '05:30 PM', '05:45 PM', 'Monday', '210'),
(2333, '153', '05:15 PM', '05:30 PM', 'Monday', '207'),
(2332, '153', '05:00 PM', '05:15 PM', 'Monday', '204'),
(2331, '153', '08:45 PM', '09:00 PM', 'Saturday', '249'),
(2330, '153', '08:30 PM', '08:45 PM', 'Saturday', '246'),
(2329, '153', '08:15 PM', '08:30 PM', 'Saturday', '243'),
(2328, '153', '08:00 PM', '08:15 PM', 'Saturday', '240'),
(2327, '153', '07:45 PM', '08:00 PM', 'Saturday', '237'),
(2326, '153', '07:30 PM', '07:45 PM', 'Saturday', '234'),
(2325, '153', '07:15 PM', '07:30 PM', 'Saturday', '231'),
(2324, '153', '07:00 PM', '07:15 PM', 'Saturday', '228'),
(2323, '153', '06:45 PM', '07:00 PM', 'Saturday', '225'),
(2322, '153', '06:30 PM', '06:45 PM', 'Saturday', '222'),
(2321, '153', '06:15 PM', '06:30 PM', 'Saturday', '219'),
(2320, '153', '06:00 PM', '06:15 PM', 'Saturday', '216'),
(2319, '153', '05:45 PM', '06:00 PM', 'Saturday', '213'),
(2318, '153', '05:30 PM', '05:45 PM', 'Saturday', '210'),
(2317, '153', '05:15 PM', '05:30 PM', 'Saturday', '207'),
(2316, '153', '05:00 PM', '05:15 PM', 'Saturday', '204'),
(2315, '153', '08:45 PM', '09:00 PM', 'Friday', '249'),
(2314, '153', '08:30 PM', '08:45 PM', 'Friday', '246'),
(2313, '153', '08:15 PM', '08:30 PM', 'Friday', '243'),
(2312, '153', '08:00 PM', '08:15 PM', 'Friday', '240'),
(2311, '153', '07:45 PM', '08:00 PM', 'Friday', '237'),
(2310, '153', '07:30 PM', '07:45 PM', 'Friday', '234'),
(2309, '153', '07:15 PM', '07:30 PM', 'Friday', '231'),
(2308, '153', '07:00 PM', '07:15 PM', 'Friday', '228'),
(2307, '153', '06:45 PM', '07:00 PM', 'Friday', '225'),
(2306, '153', '06:30 PM', '06:45 PM', 'Friday', '222'),
(2305, '153', '06:15 PM', '06:30 PM', 'Friday', '219'),
(2304, '153', '06:00 PM', '06:15 PM', 'Friday', '216'),
(2303, '153', '05:45 PM', '06:00 PM', 'Friday', '213'),
(2302, '153', '05:30 PM', '05:45 PM', 'Friday', '210'),
(2301, '153', '05:15 PM', '05:30 PM', 'Friday', '207'),
(2300, '153', '05:00 PM', '05:15 PM', 'Friday', '204');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$Vi5zNFEf3NHSlyjyYWufG.1fLHHeq6CJ/TY67s2iSErn5gXXBONJO', '', 'hospital@admin.com', '', 'duzZgD0V4UBOlz1T2NkIlub561e00d0a7349bb9d', 1571377516, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1596127102, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(109, '113.11.74.192', 'Nazia Jabeen', '$2y$08$ZRIwVTEnTyksVkgjr6HkEeFNx9WwHn.kr7qGkNPOiOPSslXty8f2G', NULL, 'nazia@hms.com', NULL, NULL, NULL, NULL, 1435082243, 1589929712, 1, NULL, NULL, NULL, NULL),
(111, '113.11.74.192', 'Zeeshan Ahmed', '$2y$08$t83Yz6PrHKQD1iCQrV6gMeOncWUzzacQHZzefhWhTE9eLmaGNtOk6', NULL, 'zeeshan@hms.com', NULL, NULL, NULL, NULL, 1435082438, 1590022346, 1, NULL, NULL, NULL, NULL),
(112, '113.11.74.192', 'Naveed Sattar', '$2y$08$8Uu0gKVEEyAbxD6kEZyLu.HAsjuR.dJaDaCCsk6/FMlQDtPw6nN.2', NULL, 'naveed@hms.com', NULL, NULL, NULL, NULL, 1435082637, 1564561281, 1, NULL, NULL, NULL, NULL),
(610, '103.231.162.58', 'sdhsjgj', '$2y$08$JBdbYvWr0BaswifulhauLOBizxRMnx1XZeuaUNJ6utt4AqH.7c/je', NULL, 'jgjjhjgjh', NULL, NULL, NULL, NULL, 1505800387, NULL, 1, NULL, NULL, NULL, NULL),
(611, '103.231.162.58', 'vsgdvfds', '$2y$08$N3qoioTmznb7./7dhrfXp.ZAp7H1Vu2rU.EWdFUx5z7ECcm.la7Ee', NULL, 'hfhgfhfhgf', NULL, NULL, NULL, NULL, 1505800659, NULL, 1, NULL, NULL, NULL, NULL),
(612, '103.231.162.58', 'vsgdvfds1', '$2y$08$rjDLi21IP2Dncaz/FgXkJ.DYoxoYigHOjgkv4MgQby.2UQ5G61qVm', NULL, 'hfhgfhfhgfefeer', NULL, NULL, NULL, NULL, 1505800739, NULL, 1, NULL, NULL, NULL, NULL),
(614, '103.231.162.58', 'Ms Nadia Imtiaz', '$2y$08$U.NOHyldM4DxJD.nPZLPYuPjbFaANqH4nydG1QENzomfk2ULE5ujm', NULL, 'nadia@hms.com', NULL, NULL, NULL, NULL, 1505800835, 1567594816, 1, NULL, NULL, NULL, NULL),
(710, '127.0.0.1', 'test', '$2y$08$ScistCKIOo0pRHMAmDY0CuRFsQ5DZMTkuepeYFRbJfFfY4.RqpXiu', NULL, 'test@email.com', NULL, NULL, NULL, NULL, 1562757608, NULL, 1, NULL, NULL, NULL, NULL),
(711, '127.0.0.1', 'dsasa', '$2y$08$24/HO6j7m3b1wu8MnePYTuwUJ5rHXkm.OmwghxdugmRrFTHmzX77O', NULL, 'asasa@gmail.com', NULL, NULL, NULL, NULL, 1562759343, NULL, 1, NULL, NULL, NULL, NULL),
(717, '127.0.0.1', 'subhani1', '$2y$08$YElynMeBBP.7KcLR9EBgH.wDImx8C2/i7n1zHdfcqYE5dQVtYC8VW', NULL, 'subhadni@gmail.com', NULL, NULL, NULL, NULL, 1564390669, NULL, 1, NULL, NULL, NULL, NULL),
(718, '127.0.0.1', 'member', '$2y$08$uvDxrxpf.ZQNgTs17CL25.ynGlriZC/Kng2jwPZ79dFJXEOiPhQuW', NULL, 'fdfed@dsd.com', NULL, NULL, NULL, NULL, 1564466619, NULL, 1, NULL, NULL, NULL, NULL),
(719, '127.0.0.1', 'arslan', '$2y$08$Gp7PVPcwKlE5HtUM8JyHZuhHXTjQ448oYlqdTknDAHuvMx2HMovOa', NULL, 'arslan@yahoo.com', NULL, NULL, NULL, NULL, 1564469503, NULL, 1, NULL, NULL, NULL, NULL),
(722, '182.186.77.83', 'saad', '$2y$08$pNmJowHN6WlGEr5q8CS6NOSUUZcbZcZS8ODsbY7DE4GmOdVs8jsF6', NULL, 'saad1@gmauil.com', NULL, NULL, NULL, NULL, 1567667110, NULL, 1, NULL, NULL, NULL, NULL),
(725, '103.255.4.97', 'Nageen Kanwal', '$2y$08$/oUZAcAeenvrrBUWL3KkT.QB.YWHE0tQu1xALkVSf0qjwx863y8jG', NULL, 'nkanwal@hms.com', NULL, NULL, NULL, NULL, 1567874367, 1590507365, 1, NULL, NULL, NULL, NULL),
(726, '119.160.103.151', 'Asif Nadeem', '$2y$08$79UYsVff3.nYLklvX.t5IOBq/bvrn6f.IhGyegDvS7ux6errLCJfy', NULL, 'asif@gmail.com', NULL, NULL, NULL, NULL, 1568884812, NULL, 1, NULL, NULL, NULL, NULL),
(729, '103.255.5.109', 'Aftab', '0', NULL, 'Aftab@test.com', NULL, NULL, NULL, NULL, 1569331701, NULL, 1, NULL, NULL, NULL, NULL),
(733, '103.116.250.254', 'hussnain', '$2y$08$7ZlhZp8fQFjjGV0EDWoZXehcJ5rOS0hWiA9uN0GUCa8Q8hHK.Xzve', NULL, 'hussnain@gmail.com', NULL, NULL, NULL, NULL, 1570038631, NULL, 1, NULL, NULL, NULL, NULL),
(748, '103.255.5.67', 'Sabeeha', '$2y$08$BxyFyww5BWxaaoZWAAA.8uGnGExlIYW02pvULpCFTcsdidAjlnn9m', NULL, 'sabeeha@hms.com', NULL, NULL, NULL, NULL, 1571451431, NULL, 1, NULL, NULL, NULL, NULL),
(749, '182.185.199.1', 'Aftab Ahmad', '$2y$08$hv3DSlnJGZxTmyWWh.iPpO5l7ohXmH0DpiAA1e4F2Z9.a1FcZGMbG', NULL, 'iffiahmed18@gmail.com', NULL, NULL, NULL, NULL, 1571656705, 1571657449, 1, NULL, NULL, NULL, NULL),
(750, '182.185.199.1', 'Dummy', '$2y$08$Hp8N338r1ekZxQaLDZz8ouykvO2cPbUAnONUGeF/0hjqxw5pSesXe', NULL, 'dummy@dumy.com', NULL, NULL, NULL, NULL, 1571656973, NULL, 1, NULL, NULL, NULL, NULL),
(751, '103.255.4.18', 'Tajamul Hussain', '$2y$08$IkCbx1VbOd21piVtCq.Q8upSlQIBYyLRZVeVtqWqdXz0OwH5UUur6', NULL, 'tajammul75@hms.com', NULL, NULL, NULL, NULL, 1571819295, NULL, 1, NULL, NULL, NULL, NULL),
(752, '103.255.4.18', 'M. Saleem', '$2y$08$Iouq/I/SxZAeMLeFN3x/nu8go7Epl6u09C9r65BOheRLDFwe15zna', NULL, 'saleem65@hms.com', NULL, NULL, NULL, NULL, 1571819295, NULL, 1, NULL, NULL, NULL, NULL),
(753, '154.160.3.82', 'ISAAC', '$2y$08$7yZMYcZREnOGD3cqp0Uph.PcyuDgbbNUARCotaiN3VD6dRRsuC.j.', NULL, 'ISAAC@ISAAC.COM', NULL, NULL, NULL, NULL, 1589928834, NULL, 1, NULL, NULL, NULL, NULL),
(754, '154.160.23.242', 'DARLINGTON', '0', NULL, 'DARLINTON@YAHOO.COM', NULL, NULL, NULL, NULL, 1590506303, NULL, 1, NULL, NULL, NULL, NULL),
(755, '110.93.226.5', 'Ahmad', '$2y$08$tObN.tl0tvN/Z6QckWLePO7yNZIVGeoUT5c2HDBpVZK.pnJtKy/O.', NULL, 'ehmad@gmail.com', NULL, NULL, NULL, NULL, 1590512748, NULL, 1, NULL, NULL, NULL, NULL),
(756, '154.160.2.252', 'JIMMY CLIFF', '$2y$08$34ah9IonNIYqmGv/W.Ottu8P8TC611SaL1JFGjI4xU4U0PcemnyiS', NULL, 'JIMMY CLIFF@test.com', NULL, NULL, NULL, NULL, 1590759996, NULL, 1, NULL, NULL, NULL, NULL),
(757, '103.116.250.254', 'one', '$2y$08$Q5V6ImkgeXnsfIbLxbG08u9fponUeesl94wWpJoEl4aGzRTo8XUVy', NULL, 'adeelshrif@gmail.com', NULL, NULL, NULL, NULL, 1595178070, NULL, 1, NULL, NULL, NULL, NULL),
(758, '202.142.186.26', 'Dr.Strange', '$2y$08$s0prW/FtIt3ASGsJC8rcjukSJO6PiGusfIxAKrc3WNtO3lWEo9iKm', NULL, 'admin@ictcore.org', NULL, NULL, NULL, NULL, 1595236002, NULL, 1, NULL, NULL, NULL, NULL),
(759, '202.142.186.26', 'Dr Anderson', '$2y$08$bCbQyQaOlCFK9jCjFGvAyujeAv45QaHjijkwOFfSh/I9eAcBjMOOO', NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, 1595236665, NULL, 1, NULL, NULL, NULL, NULL),
(760, '202.142.186.26', 'New', '$2y$08$HKMA5ic2zXHrZ9FAXNXPP.QtYi5jLIBAZNKGPq0etowszxyfjg/a2', NULL, 'new@test.com', NULL, NULL, NULL, NULL, 1595240422, NULL, 1, NULL, NULL, NULL, NULL),
(761, '202.142.186.26', 'Dummy Acc', '$2y$08$e.68g7Yk3DwK0v4axcm4muFUHgrrqabpPOz4EaVyUmv5F9wY..DFW', NULL, 'dumy@dumy2.com', NULL, NULL, NULL, NULL, 1595241494, NULL, 1, NULL, NULL, NULL, NULL),
(762, '202.142.186.26', 'Buddy', '0', NULL, 'mrbuddy@gmail.com', NULL, NULL, NULL, NULL, 1595314973, NULL, 1, NULL, NULL, NULL, NULL),
(763, '202.142.186.26', 'Thanos', '$2y$08$qDdHCAXQ6MXnqLx7ikn7x.xW3o6ktj6OqrniuRcBrLgoTs9MqkFPy', NULL, 'thonos@gmail.com', NULL, NULL, NULL, NULL, 1595325741, NULL, 1, NULL, NULL, NULL, NULL),
(764, '202.142.186.26', 'Azfar Ahmed', '$2y$08$cYFJQ6eJTp.F5c.Feli4N.jph1CKvYpdyqBVdY0wt.ux8h32ka7Gi', NULL, 'azfar_ahmed@gmail.com', NULL, NULL, NULL, NULL, 1595327745, NULL, 1, NULL, NULL, NULL, NULL),
(765, '202.142.186.26', 'Adeel Shakeel', '$2y$08$JmJZPgbmf29.AdXmDjvB4OU99622TyCrBQyryXJolB//QUC9JaVWq', NULL, 'jkl@gmail.com', NULL, NULL, NULL, NULL, 1595327949, NULL, 1, NULL, NULL, NULL, NULL),
(766, '202.142.186.26', 'Adnan Admed', '$2y$08$JhnHoL4Zw2BQKU9UN04DmeXtDq6Sb.94DkOx3lO9HZtZPJr6ZtRMS', NULL, 'adnan@gmail.com', NULL, NULL, NULL, NULL, 1595329004, NULL, 1, NULL, NULL, NULL, NULL),
(767, '202.142.186.26', 'Azfar Ahmed', '$2y$08$HP.whi08k4VrUIraig3wLe8LFsizfuNCDlXKN558g2MSXxdd6pnke', NULL, 'azfarahmed@gmail.com', NULL, NULL, NULL, NULL, 1595394325, NULL, 1, NULL, NULL, NULL, NULL),
(768, '202.142.186.26', 'Exceptionist', '$2y$08$qH7CaUd0Irg3VJSSbxlAW.QEo6yH/7mtjyxBhwpTUyNeMY2AdI2Z.', NULL, 'expetion@gmail.com', NULL, NULL, NULL, NULL, 1595395352, NULL, 1, NULL, NULL, NULL, NULL),
(769, '202.142.186.26', 'Dr.Strange', '$2y$08$uN6Gy/0uhGGO.YnXAUacpuaWCYhprIdHLgY2Ga0EvHO4d3ZSj8KYS', NULL, 'Strange@gmail.com', NULL, NULL, NULL, NULL, 1595395352, NULL, 1, NULL, NULL, NULL, NULL),
(770, '::1', 'testpateintone', '$2y$08$Dx1pTJLWl6mFVgOixbVZH.2v8JbFoXYrTbTsBIRZ/2w9aasCQgQ/y', NULL, 'patient@yopmail.com', NULL, NULL, NULL, NULL, 1596127185, 1596127265, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(111, 109, 6),
(113, 111, 8),
(114, 112, 3),
(613, 611, 10),
(614, 612, 10),
(616, 614, 10),
(712, 710, 5),
(713, 711, 5),
(719, 717, 5),
(720, 718, 5),
(721, 719, 5),
(724, 722, 5),
(727, 725, 4),
(728, 726, 5),
(731, 729, 5),
(735, 733, 5),
(750, 748, 5),
(751, 749, 3),
(752, 750, 5),
(753, 751, 5),
(754, 752, 4),
(755, 753, 5),
(756, 754, 5),
(757, 755, 5),
(758, 756, 5),
(759, 757, 5),
(760, 758, 4),
(761, 759, 4),
(762, 760, 5),
(763, 761, 5),
(764, 762, 5),
(765, 763, 5),
(766, 764, 6),
(767, 765, 6),
(768, 766, 7),
(769, 767, 8),
(770, 768, 5),
(771, 769, 4),
(772, 770, 5);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `emergency` varchar(100) NOT NULL,
  `support` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `block_1_text_under_title` varchar(500) NOT NULL,
  `service_block__text_under_title` varchar(500) NOT NULL,
  `doctor_block__text_under_title` varchar(500) NOT NULL,
  `facebook_id` varchar(100) NOT NULL,
  `twitter_id` varchar(100) NOT NULL,
  `google_id` varchar(100) NOT NULL,
  `youtube_id` varchar(100) NOT NULL,
  `skype_id` varchar(100) NOT NULL,
  `x` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `title`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `google_id`, `youtube_id`, `skype_id`, `x`) VALUES
(1, 'Alfalah Model Labs & Diagnostics', 'uploads/kisspng-american-red-cross-international-red-cross-and-red-5b00ba388b2332.6203373915267743285699_.jpg', 'Opposite D.H.Q. Hospital Road Sahiwal', '+92-111-212-222', '+92-121-456-333', '+92-111-212-222', 'admin@hms.com', 'Rs.', 'Best Hospital In The City', 'Aenean nibh ante, lacinia non tincidunt nec, lobortis ut tellus. Sed in porta diam.', 'We work with forward thinking clients to create beautiful, honest and amazing things that bring positive results.', 'https://www.facebook.com/alfalahmodellab/', 'https://www.facebook.com/', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbb`
--
ALTER TABLE `bbb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_category`
--
ALTER TABLE `bed_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_categories`
--
ALTER TABLE `lab_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_center`
--
ALTER TABLE `lab_center`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_settings`
--
ALTER TABLE `membership_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_items`
--
ALTER TABLE `test_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bbb`
--
ALTER TABLE `bbb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bed_category`
--
ALTER TABLE `bed_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1983;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lab_categories`
--
ALTER TABLE `lab_categories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `lab_center`
--
ALTER TABLE `lab_center`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2872;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `membership_settings`
--
ALTER TABLE `membership_settings`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1715;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2142;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1970;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `test_items`
--
ALTER TABLE `test_items`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2400;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=771;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
