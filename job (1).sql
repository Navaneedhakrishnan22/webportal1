-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 06:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile_number`, `email`, `user_id`, `password`) VALUES
(1, 'Sanjay Vijayan V', '6374349543', 'prince22@gmail.com', 'prince22', '22prince'),
(2, 'Navaneedhakrishnan', '8778807726', 'naveenkamal566@gmail.com', 'Naveen_09', 'Naveen2209');

-- --------------------------------------------------------

--
-- Table structure for table `aluminie_registration`
--

CREATE TABLE `aluminie_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `clgid` varchar(30) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `year_of_passed_out` varchar(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `Experience` varchar(10) NOT NULL,
  `location` varchar(25) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluminie_registration`
--

INSERT INTO `aluminie_registration` (`id`, `name`, `dob`, `mobno`, `email`, `college_name`, `clgid`, `qualification`, `year_of_passed_out`, `company_name`, `designation`, `Experience`, `location`, `user_id`, `password`) VALUES
(1, 'Navaneedha Krishnan.B', '0000-00-00', '8778807726', 'naveenkamal566@gmail', 'Annamalai University', '', 'MSc.Computer Science', '2023', 'Accenture', 'Web Developer', '1', 'Chennai', 'nvk22', '22nvk'),
(2, 'sanjay vijayan v', '2001-04-22', '6374349543', 'sanjayvijayan22@gmail.com', 'Annamalai University', '', 'M.SC Data Science', '2025', 'PRINCE INFOTECH', 'Data Scientist', '1year', 'Chennai', 'prince22', '22prince'),
(3, 'GokulaKrishnan', '22/08/1999', '9487588233', 'krishnan22@gmail.com', 'Dhanalakshmi srinivasan colloge of art and science\r\n\r\n', 'CB19S194546', 'B.sc computer science', '2021', 'Cloud Tech and Solution', 'Software Developer', '1year', 'thirichy', 'gokul22', '22gokul'),
(4, 'Dhinesh Karthik', '24/04/1997', '9876543428', 'dkarthik07@gmail.com', 'Sasthara University', 'su19878786', 'Msc.Informationn Technology', '2020', 'Accenture', 'Web developer', '2year', 'Hyderabade', 'dk123', 'dk123'),
(5, 'Dhinesh kumar', '20/03/1997', '9150279293', 'kumar@gmail.com', 'AVC colloge of Art and Science', '18767689', 'Msc.Informationn Technology', '2020', 'Accenture', 'Software developer', '2year', 'Chennai', 'Kumar33', 'Kumar33'),
(6, 'Mukesh kumar', '08/03/1995', '8665767825', 'munkumar@gmail.com', 'AVC colloge of Art and Science', '16763089', 'Msc.Informationn Technology', '2020', 'Accenture', 'Software developer', '3year', 'Chennai', 'Kumar13', 'Kumar13'),
(7, 'Dhinesh', '20/12/1997', '8664579897', 'micheledhinesh@gmail.com', 'AVC colloge of Art and Science', '18227689', 'Msc.Informationn Technology', '2020', 'Accenture', 'Software developer', '2year', 'Chennai', 'Dhinesh12', 'D94432'),
(8, 'Aakash', '11/02/2001', '6598237589', 'akkoakash@gmail.com', 'AVC colleg of Engenring', '17568932', 'MCA', '', 'infocis', 'cloud enginear', '1', '', '', ''),
(10, 'Naveen', '19999-08-05', '9547888233', 'naveen22@gmail.com', 'srinivasan colloge of art and science', 'cb19s194545', 'Bsc.computer sccience', '2021', 'Cloud Tech and Solutions', 'Software Enginear', '2', 'Coimbutere', 'Naveen_22', '22Naveen'),
(11, 'Naveen kumar', '1999-12-22', '9443288233', 'naveenKumar@gmail.com', 'srinivasan colloge of art and science', 'cb19s194546', 'Bsc.computer sccience', '2021', 'Info tech', 'Software Enginear', '2', 'Coimbutere', 'Naveen_24', '24NK');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `internship_id` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `mode` enum('offline','online') NOT NULL,
  `certificate` enum('yes','no') NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`internship_id`, `company`, `role`, `duration`, `mode`, `certificate`, `location`) VALUES
(122, 'Infosys', 'Software Engineer Intern', '3 months', 'offline', 'yes', 'Bangalore'),
(123, 'Tata Consultancy Services', 'Marketing Intern', '2 months', 'online', 'no', 'Mumbai'),
(124, 'Wipro', 'Financial Analyst Intern', '6 weeks', 'offline', 'yes', 'Bangalore'),
(125, 'HCL Technologies', 'Data Science Intern', '4 months', 'online', 'yes', 'Noida'),
(126, 'Tech Mahindra', 'Network Engineering Intern', '3 months', 'offline', 'no', 'Pune'),
(127, 'Larsen & Toubro Infotech', 'Software Developer Intern', '3 months', 'offline', 'yes', 'Mumbai'),
(128, 'Cognizant', 'Business Analyst Intern', '8 weeks', 'online', 'no', 'Chennai'),
(129, 'Mindtree', 'UI/UX Designer Intern', '2 months', 'offline', 'yes', 'Bangalore'),
(130, 'Accenture', 'Database Administrator Intern', '10 weeks', 'online', 'yes', 'Hyderabad'),
(131, 'Capgemini', 'Mobile App Developer Intern', '3 months', 'offline', 'no', 'Mumbai'),
(132, 'Persistent Systems', 'Software Tester Intern', '2 months', 'offline', 'yes', 'Pune'),
(133, 'Oracle India', 'Quality Assurance Intern', '12 weeks', 'online', 'yes', 'Bangalore'),
(134, 'Zoho Corporation', 'Full Stack Developer Intern', '3 months', 'offline', 'no', 'Chennai'),
(135, 'IBM India', 'AI/Machine Learning Intern', '8 weeks', 'online', 'yes', 'Bangalore'),
(136, 'Mphasis', 'Cybersecurity Intern', '3 months', 'offline', 'no', 'Bangalore'),
(137, 'TechGig', 'Blockchain Developer Intern', '6 weeks', 'online', 'yes', 'Noida'),
(138, 'InMobi', 'Data Scientist Intern', '3 months', 'offline', 'no', 'Bangalore'),
(139, 'Paytm', 'Product Manager Intern', '10 weeks', 'online', 'yes', 'Noida'),
(140, 'TechEagle', 'DevOps Engineer Intern', '3 months', 'offline', 'yes', 'Pune'),
(141, 'Infosys', 'Software Engineer Intern', '2 months', 'online', 'no', 'Bangalore'),
(142, 'Tata Consultancy Services', 'Marketing Intern', '4 weeks', 'offline', 'yes', 'Mumbai'),
(143, 'Wipro', 'Financial Analyst Intern', '3 months', 'online', 'yes', 'Bangalore'),
(144, 'HCL Technologies', 'Data Science Intern', '6 weeks', 'offline', 'no', 'Noida'),
(145, 'Tech Mahindra', 'Network Engineering Intern', '3 months', 'online', 'yes', 'Pune'),
(146, 'Larsen & Toubro Infotech', 'Software Developer Intern', '2 months', 'offline', 'yes', 'Mumbai'),
(147, 'Cognizant', 'Business Analyst Intern', '8 weeks', 'online', 'no', 'Chennai'),
(148, 'Mindtree', 'UI/UX Designer Intern', '3 months', 'offline', 'yes', 'Bangalore'),
(149, 'Accenture', 'Database Administrator Intern', '6 weeks', 'online', 'no', 'Hyderabad'),
(150, 'Capgemini', 'Mobile App Developer Intern', '2 months', 'offline', 'yes', 'Mumbai'),
(151, 'Persistent Systems', 'Software Tester Intern', '10 weeks', 'online', 'yes', 'Pune'),
(152, 'Oracle India', 'Quality Assurance Intern', '3 months', 'offline', 'no', 'Bangalore'),
(153, 'Zoho Corporation', 'Full Stack Developer Intern', '8 weeks', 'online', 'yes', 'Chennai'),
(154, 'IBM India', 'AI/Machine Learning Intern', '3 months', 'offline', 'yes', 'Bangalore'),
(155, 'Mphasis', 'Cybersecurity Intern', '4 weeks', 'online', 'no', 'Bangalore'),
(156, 'TechGig', 'Blockchain Developer Intern', '2 months', 'offline', 'yes', 'Noida'),
(157, 'InMobi', 'Data Scientist Intern', '10 weeks', 'online', 'no', 'Bangalore'),
(158, 'Paytm', 'Product Manager Intern', '3 months', 'offline', 'yes', 'Noida'),
(159, 'TechEagle', 'DevOps Engineer Intern', '6 weeks', 'online', 'yes', 'Pune'),
(160, 'Infosys', 'Software Engineer Intern', '3 months', 'offline', 'no', 'Bangalore'),
(161, 'Tata Consultancy Services', 'Marketing Intern', '8 weeks', 'online', 'yes', 'Mumbai'),
(162, 'Wipro', 'Financial Analyst Intern', '2 months', 'offline', 'yes', 'Bangalore'),
(163, 'HCL Technologies', 'Data Science Intern', '3 months', 'online', 'no', 'Noida'),
(164, 'Tech Mahindra', 'Network Engineering Intern', '4 weeks', 'offline', 'no', 'Pune'),
(165, 'Larsen & Toubro Infotech', 'Software Developer Intern', '10 weeks', 'online', 'yes', 'Mumbai'),
(166, 'Cognizant', 'Business Analyst Intern', '3 months', 'offline', 'yes', 'Chennai'),
(167, 'Mindtree', 'UI/UX Designer Intern', '6 weeks', 'online', 'no', 'Bangalore'),
(168, 'Accenture', 'Database Administrator Intern', '2 months', 'offline', 'yes', 'Hyderabad'),
(169, 'Capgemini', 'Mobile App Developer Intern', '3 months', 'online', 'no', 'Mumbai'),
(170, 'Persistent Systems', 'Software Tester Intern', '4 weeks', 'offline', 'yes', 'Pune'),
(171, 'Oracle India', 'Quality Assurance Intern', '8 weeks', 'online', 'yes', 'Bangalore'),
(172, 'Zoho Corporation', 'Full Stack Developer Intern', '3 months', 'offline', 'no', 'Chennai'),
(173, 'IBM India', 'AI/Machine Learning Intern', '2 months', 'online', 'yes', 'Bangalore'),
(174, 'Mphasis', 'Cybersecurity Intern', '3 months', 'offline', 'no', 'Bangalore'),
(175, 'TechGig', 'Blockchain Developer Intern', '6 weeks', 'online', 'yes', 'Noida'),
(176, 'InMobi', 'Data Scientist Intern', '10 weeks', 'offline', 'no', 'Bangalore'),
(177, 'Paytm', 'Product Manager Intern', '3 months', 'online', 'yes', 'Noida'),
(178, 'TechEagle', 'DevOps Engineer Intern', '8 weeks', 'offline', 'yes', 'Pune'),
(179, 'Infosys', 'Software Engineer Intern', '2 months', 'online', 'no', 'Bangalore'),
(180, 'Tata Consultancy Services', 'Marketing Intern', '4 weeks', 'offline', 'yes', 'Mumbai'),
(181, 'Wipro', 'Financial Analyst Intern', '8 weeks', 'online', 'yes', 'Bangalore'),
(182, 'HCL Technologies', 'Data Science Intern', '3 months', 'offline', 'no', 'Noida'),
(183, 'Tech Mahindra', 'Network Engineering Intern', '6 weeks', 'online', 'no', 'Pune'),
(184, 'Larsen & Toubro Infotech', 'Software Developer Intern', '3 months', 'offline', 'yes', 'Mumbai'),
(185, 'Cognizant', 'Business Analyst Intern', '8 weeks', 'online', 'no', 'Chennai'),
(186, 'Mindtree', 'UI/UX Designer Intern', '2 months', 'offline', 'yes', 'Bangalore'),
(187, 'Accenture', 'Database Administrator Intern', '3 months', 'online', 'yes', 'Hyderabad'),
(188, 'Capgemini', 'Mobile App Developer Intern', '4 weeks', 'offline', 'no', 'Mumbai'),
(189, 'Persistent Systems', 'Software Tester Intern', '10 weeks', 'online', 'yes', 'Pune'),
(190, 'Oracle India', 'Quality Assurance Intern', '3 months', 'offline', 'no', 'Bangalore'),
(191, 'Zoho Corporation', 'Full Stack Developer Intern', '8 weeks', 'online', 'yes', 'Chennai'),
(192, 'IBM India', 'AI/Machine Learning Intern', '3 months', 'offline', 'yes', 'Bangalore'),
(193, 'Mphasis', 'Cybersecurity Intern', '6 weeks', 'online', 'no', 'Bangalore'),
(194, 'TechGig', 'Blockchain Developer Intern', '2 months', 'offline', 'yes', 'Noida'),
(195, 'InMobi', 'Data Scientist Intern', '10 weeks', 'online', 'no', 'Bangalore'),
(196, 'Paytm', 'Product Manager Intern', '3 months', 'offline', 'yes', 'Noida'),
(197, 'TechEagle', 'DevOps Engineer Intern', '6 weeks', 'online', 'yes', 'Pune'),
(198, 'Freshworks', 'Software Engineering Intern', '3 months', 'offline', 'yes', 'Chennai'),
(199, 'Zoho Corporation', 'Product Management Intern', '2 months', 'online', 'no', 'Chennai'),
(200, 'Chargebee', 'Marketing Intern', '6 weeks', 'offline', 'yes', 'Chennai'),
(201, 'Unacademy', 'Data Science Intern', '4 months', 'online', 'yes', 'Chennai'),
(202, 'UrbanClap', 'Operations Intern', '3 months', 'offline', 'no', 'Chennai'),
(203, 'Razorpay', 'Software Development Intern', '3 months', 'offline', 'yes', 'Chennai'),
(204, 'Dunzo', 'Business Development Intern', '8 weeks', 'online', 'no', 'Chennai'),
(205, 'BYJU\'S', 'Content Creation Intern', '2 months', 'offline', 'yes', 'Chennai'),
(206, 'CRED', 'UI/UX Design Intern', '10 weeks', 'online', 'yes', 'Chennai'),
(207, 'Swiggy', 'Analytics Intern', '3 months', 'offline', 'no', 'Chennai'),
(208, 'Zomato', 'Customer Support Intern', '2 months', 'offline', 'yes', 'Chennai'),
(209, 'SaaS Labs', 'Product Marketing Intern', '6 weeks', 'online', 'no', 'Chennai'),
(210, 'DhiSigma Systems', 'Quality Assurance Intern', '3 months', 'offline', 'yes', 'Chennai'),
(211, 'Quintype', 'Frontend Developer Intern', '8 weeks', 'online', 'yes', 'Chennai'),
(212, 'GoFrugal Technologies', 'Business Analyst Intern', '3 months', 'offline', 'no', 'Chennai'),
(213, 'Freshdesk', 'Technical Support Intern', '4 weeks', 'offline', 'yes', 'Chennai'),
(214, 'Chargebee', 'Software Engineering Intern', '10 weeks', 'online', 'no', 'Chennai'),
(215, 'Perfios', 'Data Analyst Intern', '3 months', 'offline', 'yes', 'Chennai'),
(216, 'Whatfix', 'Product Management Intern', '6 weeks', 'online', 'no', 'Chennai'),
(217, 'Flintobox', 'Education Intern', '2 months', 'offline', 'yes', 'Chennai'),
(218, 'HackerRank', 'Software Development Intern', '8 weeks', 'online', 'yes', 'Chennai'),
(219, 'Mad Street Den', 'AI/ML Intern', '3 months', 'offline', 'no', 'Chennai'),
(220, 'Exotel', 'Operations Intern', '4 weeks', 'offline', 'yes', 'Chennai'),
(221, 'Scribble Data', 'Data Science Intern', '10 weeks', 'online', 'no', 'Chennai'),
(222, 'Chargebee', 'Marketing Intern', '3 months', 'offline', 'yes', 'Chennai'),
(223, 'The Learning Curve Academy', 'Business Development Intern', '2 months', 'online', 'yes', 'Chennai'),
(224, 'Unacademy', 'Content Creation Intern', '6 weeks', 'offline', 'no', 'Chennai'),
(225, 'Razorpay', 'UI/UX Design Intern', '3 months', 'offline', 'yes', 'Chennai'),
(226, 'BYJU\'S', 'Analytics Intern', '4 months', 'online', 'no', 'Chennai'),
(227, 'CRED', 'Technical Support Intern', '3 months', 'offline', 'yes', 'Chennai'),
(228, 'Swiggy', 'Software Engineering Intern', '8 weeks', 'online', 'yes', 'Chennai'),
(229, 'Zomato', 'Operations Intern', '3 months', 'offline', 'no', 'Chennai'),
(230, 'SaaS Labs', 'Data Analyst Intern', '2 months', 'online', 'yes', 'Chennai'),
(231, 'DhiSigma Systems', 'Product Management Intern', '6 weeks', 'offline', 'yes', 'Chennai'),
(232, 'Quintype', 'Technical Support Intern', '3 months', 'online', 'no', 'Chennai'),
(233, 'GoFrugal Technologies', 'Business Development Intern', '4 weeks', 'offline', 'yes', 'Chennai'),
(234, 'Freshdesk', 'UI/UX Design Intern', '10 weeks', 'online', 'no', 'Chennai'),
(235, 'Chargebee', 'Software Engineering Intern', '3 months', 'offline', 'yes', 'Chennai'),
(236, 'Perfios', 'Marketing Intern', '6 weeks', 'online', 'no', 'Chennai'),
(237, 'Whatfix', 'Data Analyst Intern', '2 months', 'offline', 'yes', 'Chennai'),
(238, 'Flintobox', 'Product Management Intern', '8 weeks', 'online', 'yes', 'Chennai'),
(239, 'HackerRank', 'Technical Support Intern', '3 months', 'offline', 'no', 'Chennai'),
(240, 'Mad Street Den', 'Software Development Intern', '4 weeks', 'offline', 'yes', 'Chennai'),
(241, 'Exotel', 'Operations Intern', '10 weeks', 'online', 'no', 'Chennai'),
(242, 'Scribble Data', 'Data Science Intern', '3 months', 'offline', 'yes', 'Chennai'),
(243, 'Cloud Tech and Solutions', 'web developer', '4monts', 'offline', 'no', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `off_campus`
--

CREATE TABLE `off_campus` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `packages` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `Discription` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `off_campus`
--

INSERT INTO `off_campus` (`id`, `companyname`, `position`, `packages`, `qualification`, `location`, `Discription`) VALUES
(1, 'ABC Corporation', 'Software Engineer', '4Lpa', 'Bachelor\'s degree in Computer Science', 'New York', NULL),
(2, 'XYZ Industries', 'Marketing Manager', 'Salary + Commission', 'Bachelor\'s degree in Marketing or related field', 'Los Angeles', NULL),
(3, '123 Enterprises', 'Financial Analyst', 'Annual Bonus', 'Bachelor\'s degree in Finance or Accounting', 'Chicago', NULL),
(4, 'Tech Solutions Ltd.', 'Data Scientist', 'Stock Options', 'Master\'s degree in Data Science or related field', 'San Francisco', NULL),
(5, 'Globe Telecom', 'Network Engineer', 'Healthcare Benefits', 'Bachelor\'s degree in Computer Engineering or related field', 'Manila', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(6, 'Sunshine Inc.', 'Human Resources Manager', '401(k) Matching', 'Bachelor\'s degree in Human Resources or related field', 'Miami', NULL),
(7, 'Global Foods Corp.', 'Supply Chain Manager', 'Paid Time Off', 'Bachelor\'s degree in Supply Chain Management or related field', 'Dallas', NULL),
(8, 'Metro Systems', 'Software Developer', '4.8lpa\r\n', 'Masters\'s degree in Computer Science or related field', 'Bengulere', 'java, Microservices, Springboot\r\n\r\nPower Programmer is an important initiative within Global Delivery to develop a team of Full Stack Developers who will be working on complex engineering projects, platforms and marketplaces for our clients using emerging technologies.,\r\n\r\n They will be ahead of the'),
(9, 'Tech Innovations', 'UX/UI Designer', 'Remote Work', 'Bachelor\'s degree in Design or related field', 'Berlin', NULL),
(10, 'Finance Connect', 'Financial Advisor', 'Performance Bonus', 'Bachelor\'s degree in Finance or Economics', 'Sydney', NULL),
(11, 'Accentur', 'Application Developer', '4.6Lpk', 'B.E/B.Tech/M.E/M.Tech, MCA, and M.Sc. (CSE, IT only)', 'Bangalor,Hydrabad,Chennai,Mumbai,Puna,Kolkata', NULL),
(12, 'Accentur', 'Cloud Engineer', '10.7Lpk', 'B.E/B.Tech/M.E/M.Tech, MCA, and M.Sc. (CSE, IT only)', 'Chennai,Banglor,Hydrabad', NULL),
(13, 'Tech Solutions India', 'Software Engineer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Bangalore', 'Back-End Development\r\nDesign, develop, and optimize back-end components using Java.\r\nLeverage Apache Spark for efficient big data processing.\r\nImplement microservices architecture to enhance scalability and maintainability.\r\nWork with Cassandra and Postgres databases for data storage and retrieval.'),
(14, 'Infosys Ltd.', 'Java Developer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Engineering or equivalent', 'Pune', NULL),
(15, 'Tata Consultancy Services', 'Data Analyst', '401(k) Matching, Performance Bonus', 'Bachelor\'s degree in Statistics or related field', 'Mumbai', NULL),
(16, 'Wipro Technologies', 'Systems Administrator', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or equivalent', 'Chennai', NULL),
(17, 'HCL Technologies', 'Network Engineer', 'Annual Bonus', 'Bachelor\'s degree in Network Engineering or related field', 'Noida', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(18, 'Tech Mahindra', 'UI/UX Designer', 'Stock Options', 'Bachelor\'s degree in Design or related field', 'Hyderabad', NULL),
(19, 'Mindtree Ltd.', 'Software Tester', 'Paid Time Off, Remote Work', 'Bachelor\'s degree in Computer Science or equivalent', 'Bengaluru', NULL),
(20, 'Capgemini India', 'Business Analyst', 'Healthcare Benefits', 'Bachelor\'s degree in Business Administration or related field', 'Gurgaon', NULL),
(21, 'Larsen & Toubro Infotech', 'Frontend Developer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Chennai', NULL),
(22, 'Accenture India', 'Cloud Solutions Architect', 'Performance Bonus', 'Bachelor\'s degree in Computer Engineering or related field', 'Bengaluru', NULL),
(23, 'Cognizant Technology Solutions', 'Database Administrator', '401(k) Matching', 'Bachelor\'s degree in Computer Science or equivalent', 'Hyderabad', NULL),
(24, 'Persistent Systems', 'Mobile App Developer', 'Flexible Work Hours', 'Bachelor\'s degree in Computer Science or related field', 'Pune', NULL),
(25, 'TechGig', 'DevOps Engineer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Information Technology or equivalent', 'Noida', NULL),
(26, 'Oracle India', 'Software Architect', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Mumbai', NULL),
(27, 'Zoho Corporation', 'Full Stack Developer', 'Stock Options', 'Bachelor\'s degree in Computer Science or equivalent', 'Chennai', NULL),
(28, 'IBM India', 'AI/Machine Learning Engineer', 'Annual Bonus', 'Bachelor\'s degree in Computer Science or related field', 'Bengaluru', NULL),
(29, 'Mphasis', 'Cybersecurity Analyst', '401(k) Matching', 'Bachelor\'s degree in Cybersecurity or related field', 'Pune', NULL),
(30, 'TechEagle', 'Blockchain Developer', 'Health Insurance', 'Bachelor\'s degree in Computer Science or related field', 'Hyderabad', NULL),
(31, 'InMobi', 'Data Scientist', 'Competitive Salary', 'Bachelor\'s degree in Data Science or related field', 'Bengaluru', NULL),
(32, 'Paytm', 'Product Manager', 'Stock Options', 'Bachelor\'s degree in Business Administration or related field', 'Noida', NULL),
(33, 'Infosys India', 'Software Engineer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Bengaluru', 'Back-End Development\r\nDesign, develop, and optimize back-end components using Java.\r\nLeverage Apache Spark for efficient big data processing.\r\nImplement microservices architecture to enhance scalability and maintainability.\r\nWork with Cassandra and Postgres databases for data storage and retrieval.'),
(34, 'Wipro Technologies', 'Java Developer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Engineering or equivalent', 'Hyderabad', NULL),
(35, 'Tata Consultancy Services', 'Data Analyst', '401(k) Matching, Performance Bonus', 'Bachelor\'s degree in Statistics or related field', 'Mumbai', NULL),
(36, 'HCL Technologies', 'Systems Administrator', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or equivalent', 'Chennai', NULL),
(37, 'Tech Mahindra', 'Network Engineer', 'Annual Bonus', 'Bachelor\'s degree in Network Engineering or related field', 'Pune', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(38, 'Larsen & Toubro Infotech', 'UI/UX Designer', 'Stock Options', 'Bachelor\'s degree in Design or related field', 'Bengaluru', NULL),
(39, 'Mindtree Ltd.', 'Software Tester', 'Paid Time Off, Remote Work', 'Bachelor\'s degree in Computer Science or equivalent', 'Chennai', NULL),
(40, 'Accenture India', 'Business Analyst', 'Healthcare Benefits', 'Bachelor\'s degree in Business Administration or related field', 'Noida', NULL),
(41, 'Capgemini India', 'Frontend Developer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Hyderabad', NULL),
(42, 'Cognizant Technology Solutions', 'Cloud Solutions Architect', 'Performance Bonus', 'Bachelor\'s degree in Computer Engineering or related field', 'Bengaluru', NULL),
(43, 'Persistent Systems', 'Database Administrator', '401(k) Matching', 'Bachelor\'s degree in Computer Science or equivalent', 'Mumbai', NULL),
(44, 'TechGig', 'Mobile App Developer', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or related field', 'Chennai', NULL),
(45, 'Oracle India', 'DevOps Engineer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Science or related field', 'Pune', NULL),
(46, 'Zoho Corporation', 'Software Architect', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Noida', NULL),
(47, 'IBM India', 'Full Stack Developer', 'Stock Options', 'Bachelor\'s degree in Computer Science or related field', 'Hyderabad', NULL),
(48, 'Mphasis', 'AI/Machine Learning Engineer', 'Annual Bonus', 'Bachelor\'s degree in Computer Science or related field', 'Bengaluru', NULL),
(49, 'TechEagle', 'Cybersecurity Analyst', '401(k) Matching', 'Bachelor\'s degree in Cybersecurity or related field', 'Mumbai', NULL),
(50, 'InMobi', 'Blockchain Developer', 'Health Insurance', 'Bachelor\'s degree in Computer Science or related field', 'Chennai', NULL),
(51, 'Paytm', 'Data Scientist', 'Competitive Salary', 'Bachelor\'s degree in Data Science or related field', 'Pune', NULL),
(52, 'Infosys India', 'Product Manager', 'Stock Options', 'Bachelor\'s degree in Business Administration or related field', 'Noida', NULL),
(53, 'Tata Consultancy Services', 'Software Engineer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Bengaluru', 'Back-End Development\r\nDesign, develop, and optimize back-end components using Java.\r\nLeverage Apache Spark for efficient big data processing.\r\nImplement microservices architecture to enhance scalability and maintainability.\r\nWork with Cassandra and Postgres databases for data storage and retrieval.'),
(54, 'HCL Technologies', 'Java Developer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Engineering or equivalent', 'Hyderabad', NULL),
(55, 'Wipro Technologies', 'Data Analyst', '401(k) Matching, Performance Bonus', 'Bachelor\'s degree in Statistics or related field', 'Mumbai', NULL),
(56, 'Tech Mahindra', 'Systems Administrator', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or equivalent', 'Chennai', NULL),
(57, 'Larsen & Toubro Infotech', 'Network Engineer', 'Annual Bonus', 'Bachelor\'s degree in Network Engineering or related field', 'Pune', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(58, 'Mindtree Ltd.', 'UI/UX Designer', 'Stock Options', 'Bachelor\'s degree in Design or related field', 'Bengaluru', NULL),
(59, 'Accenture India', 'Software Tester', 'Paid Time Off, Remote Work', 'Bachelor\'s degree in Computer Science or equivalent', 'Chennai', NULL),
(60, 'Capgemini India', 'Business Analyst', 'Healthcare Benefits', 'Bachelor\'s degree in Business Administration or related field', 'Noida', NULL),
(61, 'Cognizant Technology Solutions', 'Frontend Developer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Hyderabad', NULL),
(62, 'Persistent Systems', 'Cloud Solutions Architect', 'Performance Bonus', 'Bachelor\'s degree in Computer Engineering or related field', 'Bengaluru', NULL),
(63, 'TechGig', 'Database Administrator', '401(k) Matching', 'Bachelor\'s degree in Computer Science or equivalent', 'Mumbai', NULL),
(64, 'Oracle India', 'Mobile App Developer', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or related field', 'Chennai', NULL),
(65, 'Zoho Corporation', 'DevOps Engineer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Science or related field', 'Pune', NULL),
(66, 'IBM India', 'Software Architect', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Noida', NULL),
(67, 'Mphasis', 'Full Stack Developer', 'Stock Options', 'Bachelor\'s degree in Computer Science or related field', 'Hyderabad', NULL),
(68, 'TechEagle', 'AI/Machine Learning Engineer', 'Annual Bonus', 'Bachelor\'s degree in Computer Science or related field', 'Bengaluru', NULL),
(69, 'InMobi', 'Cybersecurity Analyst', '401(k) Matching', 'Bachelor\'s degree in Cybersecurity or related field', 'Mumbai', NULL),
(70, 'Paytm', 'Blockchain Developer', 'Health Insurance', 'Bachelor\'s degree in Computer Science or related field', 'Chennai', NULL),
(71, 'Infosys India', 'Software Engineer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Chennai', 'Back-End Development\r\nDesign, develop, and optimize back-end components using Java.\r\nLeverage Apache Spark for efficient big data processing.\r\nImplement microservices architecture to enhance scalability and maintainability.\r\nWork with Cassandra and Postgres databases for data storage and retrieval.'),
(72, 'Wipro Technologies', 'Java Developer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Engineering or equivalent', 'Coimbatore', NULL),
(73, 'HCL Technologies', 'Systems Administrator', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or equivalent', 'Madurai', NULL),
(74, 'Tata Consultancy Services', 'Data Analyst', '401(k) Matching, Performance Bonus', 'Bachelor\'s degree in Statistics or related field', 'Tiruchirappalli', NULL),
(75, 'Tech Mahindra', 'Network Engineer', 'Annual Bonus', 'Bachelor\'s degree in Network Engineering or related field', 'Salem', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(76, 'Larsen & Toubro Infotech', 'UI/UX Designer', 'Stock Options', 'Bachelor\'s degree in Design or related field', 'Tirunelveli', NULL),
(77, 'Mindtree Ltd.', 'Software Tester', 'Paid Time Off, Remote Work', 'Bachelor\'s degree in Computer Science or equivalent', 'Erode', NULL),
(78, 'Accenture India', 'Business Analyst', 'Healthcare Benefits', 'Bachelor\'s degree in Business Administration or related field', 'Vellore', NULL),
(79, 'Capgemini India', 'Frontend Developer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Thanjavur', NULL),
(80, 'Cognizant Technology Solutions', 'Cloud Solutions Architect', 'Performance Bonus', 'Bachelor\'s degree in Computer Engineering or related field', 'Tiruppur', NULL),
(81, 'Persistent Systems', 'Database Administrator', '401(k) Matching', 'Bachelor\'s degree in Computer Science or equivalent', 'Karur', NULL),
(82, 'TechGig', 'Mobile App Developer', 'Flexible Work Hours', 'Bachelor\'s degree in Information Technology or related field', 'Kancheepuram', NULL),
(83, 'Oracle India', 'DevOps Engineer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Science or related field', 'Tiruvannamalai', NULL),
(84, 'Zoho Corporation', 'Software Architect', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or equivalent', 'Krishnagiri', NULL),
(85, 'IBM India', 'Full Stack Developer', 'Stock Options', 'Bachelor\'s degree in Computer Science or related field', 'Nagercoil', NULL),
(86, 'Mphasis', 'AI/Machine Learning Engineer', 'Annual Bonus', 'Bachelor\'s degree in Computer Science or related field', 'Thoothukudi', NULL),
(87, 'TechEagle', 'Cybersecurity Analyst', '401(k) Matching', 'Bachelor\'s degree in Cybersecurity or related field', 'Karaikudi', NULL),
(88, 'InMobi', 'Blockchain Developer', 'Health Insurance', 'Bachelor\'s degree in Computer Science or related field', 'Pollachi', NULL),
(89, 'Paytm', 'Data Scientist', 'Competitive Salary', 'Bachelor\'s degree in Data Science or related field', 'Namakkal', NULL),
(90, 'Cloud Tech Solutions', 'Software Developer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Chennai, Tamil Nadu', NULL),
(91, 'Log Innovations', 'Web Developer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Information Technology or equivalent', 'Coimbatore, Tamil Nadu', NULL),
(92, 'HY Systems', 'Network Administrator', 'Annual Bonus', 'Bachelor\'s degree in Network Engineering or related field', 'Madurai, Tamil Nadu', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(93, ' Block Software Services', 'Database Analyst', 'Stock Options', 'Bachelor\'s degree in Computer Science or equivalent', 'Tiruchirappalli, Tamil Nadu', NULL),
(94, 'DXC Technologies', 'Quality Assurance Tester', 'Flexible Work Hours', 'Bachelor\'s degree in Computer Science or related field', 'Erode, Tamil Nadu', NULL),
(95, 'Techno Solutions', 'UI/UX Designer', 'Healthcare Benefits', 'Bachelor\'s degree in Design or related field', 'Salem, Tamil Nadu', NULL),
(96, 'API Ventures', 'Java Developer', 'Competitive Salary', 'Bachelor\'s degree in Computer Engineering or equivalent', 'Vellore, Tamil Nadu', NULL),
(97, 'Flash IT Solutions', 'Mobile App Developer', 'Paid Time Off, Remote Work', 'Bachelor\'s degree in Information Technology or related field', 'Kanchipuram, Tamil Nadu', NULL),
(98, 'Stark Technologies', 'Frontend Developer', 'Performance Bonus', 'Bachelor\'s degree in Computer Science or equivalent', 'Tirunelveli, Tamil Nadu', NULL),
(99, 'Jarvis Systems', 'Software Engineer', '401(k) Matching', 'Bachelor\'s degree in Computer Science or related field', 'Thanjavur, Tamil Nadu', 'Develop software solutions by studying information needs, conferring with users, studying systems flow, data usage, and work processes, investigating problem areas, following the software development lifecycle.\r\nConducts systems analysis and makes recommendations to improve the system to achieve an '),
(100, ' Digital log', 'Data Scientist', 'Stock Options', 'Bachelor\'s degree in Data Science or related field', 'Dindigul, Tamil Nadu', NULL),
(101, 'Global Lit', 'Network Engineer', 'Competitive Salary', 'Bachelor\'s degree in Network Engineering or related field', 'Karur, Tamil Nadu', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(102, 'Namakkal IT Solutions', 'Cloud Solutions Architect', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Engineering or related field', 'Namakkal, Tamil Nadu', NULL),
(103, 'Techno Innovations', 'Full Stack Developer', 'Annual Bonus', 'Bachelor\'s degree in Computer Science or related field', 'Nagercoil, Tamil Nadu', NULL),
(104, ' Wipe Systems', 'Software Tester', 'Stock Options', 'Bachelor\'s degree in Computer Science or equivalent', 'Hosur, Tamil Nadu', NULL),
(105, ' Gen Technologies', 'Business Analyst', 'Flexible Work Hours', 'Bachelor\'s degree in Business Administration or related field', 'Thoothukudi, Tamil Nadu', NULL),
(106, 'Thomson Software Services', 'AI/Machine Learning Engineer', 'Competitive Salary', 'Bachelor\'s degree in Computer Science or related field', 'Ramanathapuram, Tamil Nadu', 'Develop software solutions by studying information needs, conferring with users, studying systems flow, data usage, and work processes, investigating problem areas, following the software development lifecycle.\r\nConducts systems analysis and makes recommendations to improve the system to achieve an '),
(107, 'Earth Solutions', 'DevOps Engineer', '401(k) Matching', 'Bachelor\'s degree in Computer Science or related field', 'Sivakasi, Tamil Nadu', NULL),
(108, 'Wipro', 'Blockchain Developer', 'Health Insurance, Paid Time Off', 'Bachelor\'s degree in Computer Science or related field', 'Ooty, Tamil Nadu', NULL),
(109, 'Cell Tech', 'Cybersecurity Analyst', 'Stock Options', 'Bachelor\'s degree in Cybersecurity or related field', 'Pollachi, Tamil Nadu', NULL),
(110, 'Green Energy Solutions', 'Environmental Engineer', 'Competitive salary', 'Bachelor\'s degree in environmental engineering or related field', 'New Delhi, India', NULL),
(111, 'Tata Power', 'Electrical Engineer', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in electrical engineering or related field', 'Mumbai, India', NULL),
(112, 'Mahindra & Mahindra', 'Mechanical Engineer', '₹700,000 - ₹1,000,000 per annum', 'Bachelor\'s degree in mechanical engineering or related field', 'Mumbai, India', NULL),
(113, 'Reliance Industries Limited', 'Chemical Engineer', 'Competitive salary', 'Bachelor\'s degree in chemical engineering or related field', 'Mumbai, India', NULL),
(114, 'Adani Group', 'Civil Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in civil engineering or related field', 'Ahmedabad, India', NULL),
(115, 'HDFC Bank', 'Financial Analyst', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in finance, accounting, economics, or related field', 'Mumbai, India', NULL),
(116, 'ICICI Bank', 'Banking Officer', '₹400,000 - ₹700,000 per annum', 'Bachelor\'s degree in finance, accounting, business administration, or related field', 'Mumbai, India', NULL),
(117, 'Bharti Airtel', 'Telecom Engineer', 'Competitive salary', 'Bachelor\'s degree in telecommunications engineering or related field', 'New Delhi, India', NULL),
(118, 'Tata Motors', 'Automobile Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in mechanical engineering, automotive engineering, or related field', 'Pune, India', NULL),
(119, 'Larsen & Toubro', 'Construction Manager', '₹700,000 - ₹1,000,000 per annum', 'Bachelor\'s degree in civil engineering or related field', 'Mumbai, India', NULL),
(120, 'Aditya Birla Group', 'Production Manager', 'Competitive salary', 'Bachelor\'s degree in engineering, production management, or related field', 'Mumbai, India', NULL),
(121, 'Asian Paints', 'Chemist', '₹400,000 - ₹700,000 per annum', 'Bachelor\'s degree in chemistry, chemical engineering, or related field', 'Mumbai, India', NULL),
(122, 'Hindustan Unilever', 'Supply Chain Manager', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in supply chain management, logistics, or related field', 'Mumbai, India', NULL),
(123, 'Tata Steel', 'Metallurgical Engineer', 'Competitive salary', 'Bachelor\'s degree in metallurgical engineering or related field', 'Jamshedpur, India', NULL),
(124, 'Bajaj Auto', 'Quality Control Inspector', '₹400,000 - ₹600,000 per annum', 'Bachelor\'s degree in mechanical engineering, quality control, or related field', 'Pune, India', NULL),
(125, 'ITC Limited', 'Production Supervisor', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in engineering, production management, or related field', 'Kolkata, India', NULL),
(126, 'Amul', 'Dairy Technologist', 'Competitive salary', 'Bachelor\'s degree in dairy technology, food science, or related field', 'Anand, India', NULL),
(127, 'Hindustan Petroleum', 'Chemical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, chemistry, or related field', 'Mumbai, India', NULL),
(128, 'Indian Oil Corporation', 'Petroleum Engineer', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in petroleum engineering or related field', 'New Delhi, India', NULL),
(129, 'State Bank of India', 'Bank Manager', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in finance, accounting, business administration, or related field', 'Mumbai, India', NULL),
(130, 'Tata Chemicals', 'Laboratory Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemistry, chemical engineering, or related field', 'Mumbai, India', NULL),
(131, 'Tata Housing Development Company', 'Real Estate Developer', 'Competitive salary', 'Bachelor\'s degree in civil engineering, architecture, real estate management, or related field', 'Mumbai, India', NULL),
(132, 'Adani Ports & SEZ', 'Port Engineer', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in civil engineering, marine engineering, or related field', 'Ahmedabad, India', NULL),
(133, 'Bharat Petroleum', 'Refinery Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, mechanical engineering, or related field', 'Mumbai, India', NULL),
(134, 'Hero MotoCorp', 'Automobile Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in automotive engineering, mechanical engineering, or related field', 'Gurgaon, India', NULL),
(135, 'Grasim Industries', 'Textile Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in textile engineering, textile technology, or related field', 'Mumbai, India', NULL),
(136, 'ONGC', 'Drilling Engineer', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in petroleum engineering, mechanical engineering, or related field', 'New Delhi, India', NULL),
(137, 'Tata Chemicals', 'Chemical Plant Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, chemistry, or related field', 'Mumbai, India', NULL),
(138, 'LIC', 'Insurance Agent', 'Commission based', 'High school diploma or equivalent', 'Mumbai, India', NULL),
(139, 'Tata Teleservices', 'Network Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in computer science, information technology, or related field', 'Mumbai, India', 'As a  Network Administrator  , you will be providing technical expertise needed to support day-to-day network operations. You will lead efforts to maintain and support a complex and growing network topology that must meet the needs of a challenging set of development, operations and business require'),
(140, 'Vedanta Resources', 'Mining Engineer', '₹700,000 - ₹1,000,000 per annum', 'Bachelor\'s degree in mining engineering, geology, or related field', 'Mumbai, India', NULL),
(141, 'Tata Housing Development Company', 'Construction Worker', '₹200,000 - ₹400,000 per annum', 'None specified', 'Mumbai, India', NULL),
(142, 'Bharat Heavy Electricals Limited (BHEL)', 'Electrical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in electrical engineering or related field', 'New Delhi, India', NULL),
(143, 'NTPC Limited', 'Power Plant Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering, electrical engineering, or related field', 'New Delhi, India', NULL),
(144, 'Coal India Limited', 'Mining Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in mining engineering, geology, or related field', 'Kolkata, India', NULL),
(145, 'Indian Railways', 'Locomotive Engineer', '₹400,000 - ₹600,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering, electrical engineering, or related field', 'New Delhi, India', NULL),
(146, 'Bharat Electronics Limited (BEL)', 'Electronics Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in electronics engineering, electrical engineering, or related field', 'Bangalore, India', NULL),
(147, 'Steel Authority of India Limited (SAIL)', 'Steel Plant Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in metallurgical engineering, mechanical engineering, or related field', 'New Delhi, India', NULL),
(148, 'Oil and Natural Gas Corporation (ONGC)', 'Petroleum Geologist', '₹700,000 - ₹1,000,000 per annum', 'Bachelor\'s degree in geology, petroleum engineering, or related field', 'Mumbai, India', NULL),
(149, 'Bharat Petroleum Corporation Limited (BPCL)', 'Refinery Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in chemical engineering, mechanical engineering, or related field', 'Mumbai, India', NULL),
(150, 'Indian Space Research Organisation (ISRO)', 'Rocket Scientist', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in aerospace engineering, mechanical engineering, or related field', 'Bangalore, India', NULL),
(151, 'Indian Oil Corporation Limited (IOCL)', 'Chemical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in chemical engineering, chemistry, or related field', 'New Delhi, India', NULL),
(152, 'Bharat Heavy Electricals Limited (BHEL)', 'Mechanical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering or related field', 'New Delhi, India', NULL),
(153, 'Hindustan Petroleum Corporation Limited (HPCL)', 'Refinery Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, mechanical engineering, or related field', 'Mumbai, India', NULL),
(154, 'GAIL (India) Limited', 'Pipeline Engineer', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in mechanical engineering, civil engineering, or related field', 'New Delhi, India', NULL),
(155, 'Power Grid Corporation of India Limited (POWERGRID)', 'Electrical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in electrical engineering or related field', 'Gurgaon, India', NULL),
(156, 'Bharat Sanchar Nigam Limited (BSNL)', 'Telecom Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in telecommunications engineering, electrical engineering, or related f', 'New Delhi, India', NULL),
(157, 'Indian Railway Catering and Tourism Corporation (IRCTC)', 'Hospitality Manager', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in hospitality management, hotel administration, or related field', 'New Delhi, India', NULL),
(158, 'National Aluminium Company (NALCO)', 'Chemical Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, chemistry, or related field', 'Bhubaneswar, India', NULL),
(159, 'Container Corporation of India (CONCOR)', 'Logistics Coordinator', '₹400,000 - ₹600,000 per annum', 'Bachelor\'s degree in supply chain management, logistics, or related field', 'New Delhi, India', NULL),
(160, 'Rural Electrification Corporation (REC)', 'Electrical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in electrical engineering or related field', 'New Delhi, India', NULL),
(161, 'Steel Authority of India (SAIL)', 'Metallurgical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in metallurgical engineering, materials science, or related field', 'Rourkela, India', NULL),
(162, 'Mahanagar Telephone Nigam Limited (MTNL)', 'Telecommunications Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in telecommunications engineering, electrical engineering, or related f', 'New Delhi, India', NULL),
(163, 'Bharat Earth Movers Limited (BEML)', 'Mechanical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering or related field', 'Bangalore, India', NULL),
(164, 'Hindustan Aeronautics (HAL)', 'Aircraft Engineer', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in aerospace engineering, mechanical engineering, or related field', 'Bangalore, India', NULL),
(165, 'Indian Space Research Organization (ISRO)', 'Space Scientist', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in aerospace engineering, astrophysics, or related field', 'Bangalore, India', NULL),
(166, 'Bharat Heavy Electricals (BHEL)', 'Electrical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in electrical engineering or related field', 'Bangalore, India', NULL),
(167, 'Gas Authority of India Limited (GAIL)', 'Gas Technician', '₹400,000 - ₹600,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering, chemical engineering, or related field', 'New Delhi, India', NULL),
(168, 'Coal India Limited (CIL)', 'Coal Miner', '₹300,000 - ₹500,000 per annum', 'High school diploma or equivalent', 'Kolkata, India', NULL),
(169, 'Indian Oil Corporation (IOC)', 'Refinery Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, mechanical engineering, or related field', 'New Delhi, India', NULL),
(170, 'Bharat Petroleum Corporation Limited (BPCL)', 'Refinery Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in chemical engineering, mechanical engineering, or related field', 'Mumbai, India', NULL),
(171, 'Indian Railways (IR)', 'Locomotive Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering, electrical engineering, or related field', 'New Delhi, India', NULL),
(172, 'Steel Authority of India Limited (SAIL)', 'Steel Plant Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in metallurgical engineering, mechanical engineering, or related field', 'New Delhi, India', NULL),
(173, 'Oil and Natural Gas Corporation Limited (ONGC)', 'Drilling Technician', '₹500,000 - ₹800,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering, petroleum engineering, or related field', 'New Delhi, India', NULL),
(174, 'Bharat Heavy Electricals Limited (BHEL)', 'Mechanical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in mechanical engineering or related field', 'Bangalore, India', NULL),
(175, 'Gujarat State Electricity Corporation Limited (GSECL)', 'Electrical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in electrical engineering or related field', 'Gandhinagar, India', NULL),
(176, 'Steel Authority of India Limited (SAIL)', 'Metallurgical Engineer', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in metallurgical engineering or related field', 'Rourkela, India', NULL),
(177, 'Bharat Sanchar Nigam Limited (BSNL)', 'Telecom Engineer', '₹400,000 - ₹600,000 per annum', 'Bachelor\'s degree in telecommunications engineering, electrical engineering, or related field', 'New Delhi, India', NULL),
(178, 'National Aluminium Company (NALCO)', 'Chemical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in chemical engineering, chemistry, or related field', 'Bhubaneswar, India', NULL),
(179, 'Container Corporation of India (CONCOR)', 'Logistics Manager', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in supply chain management, logistics, or related field', 'New Delhi, India', NULL),
(180, 'Power Grid Corporation of India Limited (POWERGRID)', 'Electrical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in electrical engineering or related field', 'Gurgaon, India', NULL),
(181, 'Bharat Sanchar Nigam Limited (BSNL)', 'Telecommunications Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in telecommunications engineering, electrical engineering, or related field', 'New Delhi, India', NULL),
(182, 'Indian Railway Catering and Tourism Corporation (IRCTC)', 'Hospitality Manager', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in hospitality management, hotel administration, or related field', 'New Delhi, India', NULL),
(183, 'National Aluminium Company (NALCO)', 'Chemical Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, chemistry, or related field', 'Bhubaneswar, India', NULL),
(184, 'Container Corporation of India (CONCOR)', 'Logistics Coordinator', '₹400,000 - ₹600,000 per annum', 'Bachelor\'s degree in supply chain management, logistics, or related field', 'New Delhi, India', NULL),
(185, 'Rural Electrification Corporation (REC)', 'Electrical Engineer', '₹500,000 - ₹800,000 per annum', 'Bachelor\'s degree in electrical engineering or related field', 'New Delhi, India', NULL),
(186, 'Steel Authority of India (SAIL)', 'Metallurgical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in metallurgical engineering, materials science, or related field', 'Rourkela, India', NULL),
(187, 'Mahanagar Telephone Nigam Limited (MTNL)', 'Telecommunications Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in telecommunications engineering, electrical engineering, or related f', 'New Delhi, India', NULL),
(188, 'Bharat Earth Movers Limited (BEML)', 'Mechanical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering or related field', 'Bangalore, India', NULL),
(189, 'Hindustan Aeronautics (HAL)', 'Aircraft Engineer', '₹600,000 - ₹900,000 per annum', 'Bachelor\'s degree in aerospace engineering, mechanical engineering, or related field', 'Bangalore, India', NULL),
(190, 'Indian Space Research Organization (ISRO)', 'Space Scientist', '₹800,000 - ₹1,200,000 per annum', 'Bachelor\'s degree in aerospace engineering, astrophysics, or related field', 'Bangalore, India', NULL),
(191, 'Bharat Heavy Electricals (BHEL)', 'Electrical Technician', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in electrical engineering or related field', 'Bangalore, India', NULL),
(192, 'Gas Authority of India Limited (GAIL)', 'Gas Technician', '₹400,000 - ₹600,000 per annum', 'Diploma or Bachelor\'s degree in mechanical engineering, chemical engineering, or related field', 'New Delhi, India', NULL),
(193, 'Coal India Limited (CIL)', 'Coal Miner', '₹300,000 - ₹500,000 per annum', 'High school diploma or equivalent', 'Kolkata, India', NULL),
(194, 'Indian Oil Corporation (IOC)', 'Refinery Operator', '₹300,000 - ₹500,000 per annum', 'Diploma or Bachelor\'s degree in chemical engineering, mechanical engineering, or related field', 'New Delhi, India', NULL),
(195, 'Cloud Tech and Solutions', 'Web Developer', '4lpa', 'Master\'s in computer science and information technology ', 'Chennai', 'good with java script');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(10) NOT NULL,
  `studid` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `clg` varchar(30) NOT NULL,
  `prog` varchar(50) NOT NULL,
  `resume` varchar(1000) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `studid`, `name`, `dob`, `mobno`, `mail`, `clg`, `prog`, `resume`, `user_id`, `password`) VALUES
(1, '22300024', 'NavaneedhaKrishnan', '2001-09-22', '8778807726', 'naveenkamal566@gmail.com', 'Annamalai University', 'data scientist', '', 'Navaneedhakrishnan_0', 'Naveen@2209'),
(2, '22300008', 'Gokul', '2001-10-29', '9025875052', 'GokulgGandhi29@gmail.com', 'Annamalai University', 'Web Developer', '', 'Gokul_29', 'GokulGandhi29'),
(3, '22300021', 'Manimaran', '2001-03-09', '9952960861', 'Manimaran21@gmail.com', 'Annamalai University', 'Web Designer', '', 'Mani', 'Mani123'),
(4, '22300032', 'Raja Giri', '2001-07-05', '887099562', 'Rajagri..@gmail.com', 'Annamalai University', 'SoftWare Developer', '', 'Giri_31', 'Giri@31'),
(5, '22300049', 'Tamizh priyan', '2001-12-29', '9677335034', 'Tamizhpriyanann445@gmail.com', 'Annamalai University', 'Graphical Designer', '', 'tamizh_49', 'Tamizh@49'),
(6, '22300045', 'Shivsshankari', '2001-07-07', '9025587276', 'ShivaShankarivelu55@gmail.com', 'Annamalai University', 'web Developer', '', 'Shiva_45', 'Shiva@45'),
(7, '22300040', 'Saradhadevi', '2001-04-12', '9442619443', 'Sharashenthil12@gmail.com', 'Annamalai University', 'Software Enginer', '', 'sara_40', 'sara@40'),
(8, '22300039', 'Synjaykhan', '2001-12-03', '99600768247', 'SSanjay2khan9@gmail.com', 'Annamalai University', 'Data Analyst', '', 'Sanjay_39', 'Sanjay@39'),
(9, '22300010', 'Hariprasath', '2001-06-19', '8675812286', 'hariprasath555@gmail.com', 'Annamalai University', 'Data Administer', '', 'Hari_10', 'Hari@10'),
(10, '22300014', 'Karthik', '2001-06-04', '936069261', 'karthi07@gmail.com', 'Annamalai University', 'Tech Support', '', 'Karthi_14', 'Karthi@14'),
(11, '22300016', 'Kamalash Varma', '2000-11-05', '637905618', 'kamal30@gmail.com', 'Annamalai University', '', '', NULL, NULL),
(12, '22300047', 'Sudhersen', '2001-05-10', '9626938343', 'jeen21@gmail.com', 'Annamalai University', '', '', NULL, NULL),
(13, '22300013', 'Jeevandham', '2001-07-09', '9765475623', 'jeva2213@gmail.com', 'Annamalai University', '', '', NULL, NULL),
(14, '23302014', 'prince22', '2001-04-22', '6374349543', 'prince22@gmail.com', 'Annamalai University', 'M.SC Data Science', '', 'prince22', '22prince'),
(16, '2330014', 'sanjay', '1970-01-01', '6374349543', 'sanjay22@gmail.com', 'Annamalai University', 'M.SC Data Science', '', 'vsv22', '22vsv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `aluminie_registration`
--
ALTER TABLE `aluminie_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`internship_id`);

--
-- Indexes for table `off_campus`
--
ALTER TABLE `off_campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_email` (`mail`),
  ADD UNIQUE KEY `Student_ID` (`studid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aluminie_registration`
--
ALTER TABLE `aluminie_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
  MODIFY `internship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `off_campus`
--
ALTER TABLE `off_campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
