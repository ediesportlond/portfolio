-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2022 at 01:48 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itseddie_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applications`
--

CREATE TABLE `Applications` (
  `id` int(6) UNSIGNED NOT NULL,
  `user_id` int(50) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL,
  `status date` date NOT NULL,
  `company` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `job link` varchar(250) NOT NULL,
  `website` varchar(50) NOT NULL,
  `resume` varchar(50) NOT NULL,
  `applied` date NOT NULL,
  `appointment` date NOT NULL,
  `notes` varchar(500) NOT NULL,
  `contacts` varchar(250) NOT NULL,
  `source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Applications`
--

INSERT INTO `Applications` (`id`, `user_id`, `status`, `status date`, `company`, `position`, `salary`, `experience`, `job link`, `website`, `resume`, `applied`, `appointment`, `notes`, `contacts`, `source`) VALUES
(54, 8, 'First Contact', '2022-09-26', 'Haven Behavioral Healthcare', 'Junior Web Developer', 'undisclosed', 'Junior', 'https://www.indeed.com/viewjob?jk=2ec66c52567c17c7&amp;from=serp&amp;vjs=3', 'https://www.havenbehavioral.com', '1', '2022-09-23', '2022-10-21', 'Posting is over 30 days old.', '', 'Indeed'),
(55, 8, 'Applied', '2022-09-26', 'IBI Group', 'Software Developer', '70,000 - 79,999', '', 'https://www.indeed.com/viewjob?jk=ef6343240ca4060e&amp;from=serp&amp;vjs=3', 'https://www.ibigroup.com/locations/', '2', '2022-09-26', '0000-00-00', '', '', 'Indeed'),
(56, 8, 'Rejected', '2022-09-26', 'NEWSMAX', 'Software Developer', 'undisclosed', '', 'https://recruiting.ultipro.com/NEW1027/JobBoard/3d5ae180-49c4-20f7-d7b4-adfe940978a7/OpportunityDetail?opportunityId=1eb79303-6848-49e2-bdcd-f45191c29879&amp;utm_source=LINKEDIN&amp;utm_medium=referrer', '', '1', '2022-09-21', '0000-00-00', 'Found on LinkedIn, but can only apply on career page.', '', 'Career Page'),
(57, 8, 'Interview Scheduled', '2022-09-26', 'Software Guidance &amp; Assitance', 'Software Engineer', 'undisclosed', 'Mid-Level', 'https://www.dice.com/jobs/detail/4087bebd3249ee3b8c4b3fde44e2671a?searchlink=search%2F%3Fq%3DSoftware%2520Engineer%26location%3DLake%2520Worth%2C%2520FL%2C%2520USA%26latitude%3D26.6167555%26longitude%3D-80.0684479%26countryCode%3DUS%26locationPrecisi', 'https://sgainc.com', '1', '2022-09-22', '2022-10-31', 'Located in Boca Raton', '', 'Dice'),
(58, 8, 'Applied', '2022-09-26', 'Orangetheory', 'Technical Lead Software Engineer', 'undisclosed', 'Mid-Level', 'https://www.dice.com/jobs/detail/4007d9eef20e84efc7ac49cc17a06f5b?searchlink=search%2F%3Fq%3DSoftware%2520Engineer%26location%3DLake%2520Worth%2C%2520FL%2C%2520USA%26latitude%3D26.6167555%26longitude%3D-80.0684479%26countryCode%3DUS%26locationPrecisi', '', '2', '2022-09-25', '2022-10-17', 'Boca Raton', '', 'Dice'),
(59, 8, 'Offer Received', '2022-09-26', 'AWS', 'Technical Trainer', '80,000 - 89,999', 'Junior', '', '', '1', '2022-09-01', '0000-00-00', '', '', 'Career Page'),
(60, 2, 'Applied', '2022-09-27', 'Zurich North America', 'Training Specialist', 'undisclosed', '', 'https://www.linkedin.com/jobs/search/?currentJobId=3281922707&amp;f_TPR=r604800&amp;f_WT=2&amp;geoId=103644278&amp;keywords=learning%20and%20development&amp;location=United%20States&amp;refresh=true', '', '1', '2022-09-26', '0000-00-00', '', '', 'LinkedIn'),
(185, 2, 'Rejected', '2022-09-06', 'UKG Careers', 'Senior Technical Training Specialist', '', '', '', '', '', '2022-08-21', '0000-00-00', '', '', 'LinkedIn'),
(186, 2, 'Applied', '0000-00-00', 'KW Reserve Palm Beach', 'Tech Trainer', '', '', '', '', '', '2022-08-26', '0000-00-00', 'Viewed', '', 'LinkedIn'),
(187, 2, 'Rejected', '2022-09-07', 'Zoc Doc', 'Sales Trainer', '', '', '', '', '', '2022-09-02', '0000-00-00', '', '', 'LinkedIn'),
(188, 2, 'Rejected', '2022-09-08', 'Allstate', 'Sales Coach', '', '', '', '', '2', '2022-09-03', '0000-00-00', '', '', 'LinkedIn'),
(189, 2, 'Applied', '0000-00-00', 'Net App ', 'Sales Trainer', '', '', '', '', '', '2022-09-03', '0000-00-00', '', '', 'LinkedIn'),
(190, 2, 'Applied', '0000-00-00', 'Pacific Like', 'Sales Trainer', '', '', '', '', '', '2022-09-03', '0000-00-00', '', '', 'LinkedIn'),
(191, 2, 'Applied', '0000-00-00', 'Renaissance', 'Sales Trainer ll', '', '', '', '', '', '2022-09-04', '0000-00-00', '', '', 'LinkedIn'),
(192, 2, 'Applied', '0000-00-00', 'Quickbase', 'Sales Trainer', '', '', '', '', '', '2022-09-05', '0000-00-00', '', '', 'LinkedIn'),
(193, 2, 'Rejected', '2022-09-09', 'Crush Base', 'Sales Trainer', '', '', '', '', '', '2022-09-07', '0000-00-00', '', '', 'LinkedIn'),
(194, 2, 'Applied', '0000-00-00', 'Bullhorn ', 'Senior Sales Trainer', '', '', '', '', '', '2022-09-07', '0000-00-00', '', '', 'LinkedIn'),
(195, 2, 'Rejected', '2022-09-28', 'Kibo', 'Learning and Development Specialist', '', '', '', '', '', '2022-09-07', '0000-00-00', '', '', 'LinkedIn'),
(196, 2, 'Rejected', '2022-09-20', 'Spectrio LLC', 'Corporate Trainer Sales', '', '', '', '', '', '2022-09-08', '0000-00-00', '', '', 'LinkedIn'),
(197, 2, 'Rejected', '2022-10-05', 'eLocal', 'Corporate Sales Trainer', '', '', '', '', '', '2022-09-09', '0000-00-00', '', '', 'LinkedIn'),
(198, 2, 'Applied', '0000-00-00', 'Webster Bank', 'Corporate Trainer', '', '', '', '', '', '2022-09-09', '0000-00-00', '', '', 'LinkedIn'),
(199, 2, 'Applied', '0000-00-00', 'Paro.ai', 'Sales Trainer', '', '', '', '', '', '2022-09-09', '0000-00-00', '', '', 'LinkedIn'),
(200, 2, 'Applied', '0000-00-00', 'Investcloud', 'Sr. Client Training Specialist', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(201, 2, 'Applied', '0000-00-00', 'AbacusNext', 'Senior Sales Training & Development Specialist', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(202, 2, 'Applied', '0000-00-00', 'Devoted', 'QA Analyst, Member Experience Training & QA Team', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(203, 2, 'Applied', '2022-09-13', 'Cynet Health', 'Recuritment Trainer/Coach', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(204, 2, 'Applied', '0000-00-00', 'The Jonus Group', 'Remote Training Manager', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(205, 2, 'Applied', '0000-00-00', 'Q2', 'Sales Training Specialist', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(206, 2, 'Applied', '0000-00-00', 'The Judge Group', 'Training Specialist 2', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(207, 2, 'Applied', '0000-00-00', 'Greystar', 'Manager of Learning & Development', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(208, 2, 'Applied', '0000-00-00', 'Cherry Bekaert', 'Digital Platforms & Analytics Training Specialist', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(209, 2, 'Rejected', '2022-09-13', 'Lytx', 'Senior Sales Training & Enablement Specialist', '', '', '', '', '', '2022-09-12', '0000-00-00', '', '', 'LinkedIn'),
(210, 2, 'Applied', '0000-00-00', 'Auto Nation', 'Leadership Development Training Manager', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(211, 2, 'Applied', '0000-00-00', 'FIS', 'Digital Sales & New Hire Onboarding Sales Coach', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(212, 2, 'Applied', '0000-00-00', 'Deltek', 'Sales Training Instructor', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(213, 2, 'Applied', '0000-00-00', 'Slack', 'Learning Consultant', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(214, 2, 'Applied', '0000-00-00', 'NTT', 'Remote Call Center Trainer', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(215, 2, 'Rejected', '2022-09-26', 'Modis', 'Training Manager', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(216, 2, 'Applied', '0000-00-00', 'Luxottica', 'Manager - Sales Training & Development ', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(217, 2, 'Applied', '0000-00-00', 'Discover', 'Principal Sales Training Program Manager', '', '', '', '', '', '2022-09-13', '0000-00-00', '', '', 'LinkedIn'),
(218, 2, 'Applied', '0000-00-00', 'Volt', 'Training & Development Specialist', '', '', '', '', '', '2022-09-14', '0000-00-00', '', '', 'LinkedIn'),
(219, 2, 'Applied', '0000-00-00', 'Breezeline', 'Learning Specialist', '', '', '', '', '', '2022-09-14', '0000-00-00', '', '', 'LinkedIn'),
(220, 2, 'Ghosted', '2022-10-09', 'QAD', 'Senior Sales Trainer', '', '', '', '', '', '2022-09-16', '0000-00-00', '', '', 'LinkedIn'),
(221, 2, 'Applied', '0000-00-00', 'Oportun', 'Training Director ', '', '', '', '', '', '2022-09-16', '0000-00-00', '', '', 'LinkedIn'),
(222, 2, 'Applied', '0000-00-00', 'PandaDoc', 'Training Program Coordinator', '', '', '', '', '', '2022-09-16', '0000-00-00', '', '', 'LinkedIn'),
(223, 2, 'Applied', '0000-00-00', 'Arise Virtual Solutions Inc.', 'Learning Delivery Manager', '', '', '', '', '', '2022-09-16', '0000-00-00', '', '', 'LinkedIn'),
(224, 2, 'Rejected', '2022-09-20', 'Springer Nature Group', 'CRM Support & Training Specialist', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(225, 2, 'Applied', '0000-00-00', 'Insight', 'Learning Specialist, L&D', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(226, 2, 'Rejected', '2022-09-22', 'Constellation Software', 'Technical Trainer', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(227, 2, 'Applied', '0000-00-00', 'Adobe', 'Sales Operations Manager', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(228, 2, 'Rejected', '2022-09-26', 'Greenway Health', 'Manager,Sales Enablement', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(229, 2, 'Applied', '0000-00-00', 'Executive Talent Solutions ', 'Sales Operations Manager/Fintech/Remote', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(230, 2, 'Applied', '0000-00-00', 'ADP', 'Sales Tool Engagement Manager', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(231, 2, 'Applied', '0000-00-00', 'Salesforce', 'Slack Senior Manager, Sales & Success Excellence (', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(232, 2, 'Applied', '0000-00-00', 'Brex', 'Manager of Client Sales Productivity', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(233, 2, 'Applied', '0000-00-00', 'Deltek', 'Sales Enablement Specialist', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(234, 2, 'Rejected', '2022-09-20', 'FreshBooks', 'Sales Enablement Specialist', '', '', '', '', '', '2022-09-19', '0000-00-00', '', '', 'LinkedIn'),
(235, 2, 'Applied', '0000-00-00', 'FTD', 'Sales Trainer', '', '', '', '', '', '2022-09-20', '0000-00-00', '', '', 'LinkedIn'),
(236, 2, 'Rejected', '2022-09-22', 'Mercury', 'Learning & Development Lead', '', '', '', '', '', '2022-09-20', '0000-00-00', '', '', 'LinkedIn'),
(237, 2, 'Rejected', '2022-09-30', 'Alliant Insurance Services', 'Training Specialist', '', '', '', '', '', '2022-09-20', '0000-00-00', '', '', 'LinkedIn'),
(238, 2, 'Rejected', '2022-10-28', 'Cloud Academy', 'Sales Enablement Manager', '', '', '', '', '', '2022-09-20', '0000-00-00', '', '', 'LinkedIn'),
(239, 2, 'Applied', '0000-00-00', 'Source Advisors', 'Sales Operation Specialist', '', '', '', '', '', '2022-09-21', '0000-00-00', '', '', 'LinkedIn'),
(240, 2, 'Applied', '0000-00-00', 'Compucom', 'Sr.Consultant, Sales Training & Enablement ', '', '', '', '', '', '2022-09-21', '0000-00-00', '', '', 'LinkedIn'),
(241, 2, 'Rejected', '2022-09-28', 'World Fuel Services', 'Sr. Specialist, Global Land Sales Operation', '', '', '', '', '', '2022-09-21', '0000-00-00', '', '', 'LinkedIn'),
(242, 2, 'Applied', '0000-00-00', 'Reach Financial ', 'Sales Operation Specialist', '', '', '', '', '', '2022-09-22', '0000-00-00', '', '', 'LinkedIn'),
(243, 2, 'Rejected', '2022-09-26', 'Zelis', 'Manager, Training and Quality Assurance', '', '', '', '', '', '2022-09-22', '0000-00-00', '', '', 'LinkedIn'),
(244, 2, 'Applied', '0000-00-00', 'EAB', 'Director, Sales Training', '', '', '', '', '', '2022-09-25', '0000-00-00', '', '', 'LinkedIn'),
(245, 2, 'Applied', '0000-00-00', 'Lovesac', 'Sales & Service Training Coordinator', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(246, 2, 'Rejected', '2022-10-28', 'Mercer Advisor', 'Learning &amp; Development Spcialist', '', '', '', '', '1', '2022-09-25', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(247, 2, 'Applied', '0000-00-00', 'Boston Scientific', 'US Sales Skills & Methodology', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(248, 2, 'Applied', '0000-00-00', 'Jack Henry', 'Trainer, Advisory', '', '', '', '', '1', '2022-09-25', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(249, 2, 'Applied', '0000-00-00', 'Morgan', 'Sales Trainer', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(250, 2, 'Applied', '0000-00-00', 'QAD', 'Senior Sales Trainer, GA', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(251, 2, 'Applied', '0000-00-00', 'QAD', 'Senior Sales Trainer, TX', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(252, 2, 'Rejected', '2022-09-26', 'Sidetrade', 'Sales Enablement Manager', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(253, 2, 'Applied', '0000-00-00', 'Cube', 'Sales Enablement Manager', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(254, 2, 'Applied', '0000-00-00', 'Philips', 'Sales Enablement Manager', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(255, 2, 'Rejected', '2022-09-28', 'Packsize', 'Sales Enablement Manager', '', '', '', '', '2', '2022-09-25', '0000-00-00', 'Sales', '', 'LinkedIn'),
(256, 2, 'Applied', '0000-00-00', 'Zillow', 'L & D Trainer', '', '', '', '', '1', '2022-09-25', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(258, 2, 'Rejected', '2022-10-31', 'Placer.ai', 'Senior Sales Enablement', '', '', '', '', '2', '2022-09-26', '0000-00-00', 'Sales', '', 'LinkedIn'),
(259, 2, 'Hired', '2022-10-25', 'Vroom', 'National Sales Trainer', '80,000 - 89,999', '', '', '', '2', '2022-09-28', '2022-10-14', '82,000 Offer\r\n\r\n-65-81  \r\n-Bring an internal training for the first time. \r\n-8 weeks for, working \r\n-Learning and Senior National director of sales. \r\n-5 interview national sales, panel , senior VP, HR business \r\n-Paul Nevel 2 p.m. EST \r\n-Uniform system indepth experience and a full. Train a class for 8 weeks 30 individual. Content curriculum development and importance. Ensure our leaders are culture.  2 hour notice\r\n-Lack of training for sales force. Beginning to end. training,\r\n', '', 'LinkedIn'),
(260, 2, 'Applied', '0000-00-00', 'Worktango', 'Sales Coach', '', '', '', '', '2', '2022-09-28', '0000-00-00', 'Sales', '', 'LinkedIn'),
(261, 2, 'Applied', '0000-00-00', 'Educated Solutions Corp ', 'Learning Consultant', '', '', '', '', '1', '2022-09-28', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(262, 2, 'Rejected', '2022-10-07', 'Vertex', 'Sales Enablement Specialist', '', '', '', '', '2', '2022-09-28', '0000-00-00', 'Sales', '', 'LinkedIn'),
(263, 2, 'Rejected', '2022-09-30', 'AlertMedia', 'Sales Enablement Manager, SDR & Expand', '', '', '', '', '2', '2022-09-28', '0000-00-00', 'Sales', '', 'LinkedIn'),
(264, 2, 'Rejected', '0000-00-00', 'Q2', 'Enterprise Training & Development', '', '', '', '', '1', '2022-10-02', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(265, 2, 'Applied', '2022-10-05', 'Bullhorn ', 'Senior Sales Trainer', '', '', '', '', '2', '2022-10-02', '0000-00-00', 'Sales', '', 'LinkedIn'),
(266, 2, 'Applied', '0000-00-00', 'Combined Insurance', 'Sales Development Program Manager', '', '', '', '', '2', '2022-10-02', '0000-00-00', 'Sales', '', 'LinkedIn'),
(267, 2, 'Applied', '0000-00-00', 'ETQ', 'Sr.Sales Enablement Sepcialist', '', '', '', '', '2', '2022-10-03', '0000-00-00', 'Sales', '', 'LinkedIn'),
(268, 2, 'Rejected', '2022-10-31', 'Element Fleet Management', 'Training &amp; Quality Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(269, 2, 'Applied', '0000-00-00', 'Amherst', 'Construction Training Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(270, 2, 'Applied', '0000-00-00', 'Cornerstone OnDemand', 'Sales Enablement Consultant', '', '', '', '', '2', '2022-10-03', '0000-00-00', 'Sales', '', 'LinkedIn'),
(271, 2, 'Rejected', '2022-10-21', 'Minitab', 'Sales Enablement Manager', '', '', '', '', '2', '2022-10-03', '0000-00-00', 'Sales', '', 'LinkedIn'),
(272, 2, 'Applied', '0000-00-00', 'Kelly Mitchell Group Inc.', 'Workday Corporate Trainer', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(273, 2, 'Applied', '0000-00-00', 'Corpay', 'Corporate Trainer', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(274, 2, 'Applied', '0000-00-00', 'Compucom', 'Sr.Consultant, Sales Training & Enablement ', '', '', '', '', '2', '2022-10-03', '0000-00-00', 'Sales', '', 'LinkedIn'),
(275, 2, 'Applied', '0000-00-00', 'Wiley', 'Sales Enablement Senior Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(276, 2, 'Applied', '0000-00-00', 'MaSotech Recruitment', 'Trainer 2', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(277, 2, 'Applied', '0000-00-00', 'Optum', 'Trainer National Remote', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(278, 2, 'Applied', '0000-00-00', 'Infor', 'Sales Enablement Manager', '', '', '', '', '2', '2022-10-03', '0000-00-00', 'Sales', '', 'LinkedIn'),
(279, 2, 'Applied', '0000-00-00', 'Cypress HCM', 'Support Learning & Enablement Content Developer', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(280, 2, 'Rejected', '2022-10-05', 'Go Daddy', 'Learning Program Manager', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(281, 2, 'Rejected', '2022-10-07', 'Amerisource Bergen', 'Specialist Training and Continual Education', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(282, 2, 'Applied', '0000-00-00', 'Altice USA', 'Senior Learning Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(283, 2, 'Rejected', '2022-10-04', 'Asurint', 'Senior Learning and Development Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(284, 2, 'Rejected', '2022-10-20', 'Above Lending', 'Training Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(285, 2, 'Applied', '0000-00-00', 'Meta', 'Learning and Development Specialist', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(286, 2, 'Rejected', '2022-10-31', 'MarshMcLenna', 'Senior Training Analyst', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(287, 2, 'Applied', '0000-00-00', 'Community Brands', 'Training & Development Specialist', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(288, 2, 'Applied', '0000-00-00', 'Sedgwick', 'Sr.Training Specialist', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(289, 2, 'Rejected', '2022-11-13', 'Frontiers', 'Learning and Development Specialist', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(290, 2, 'Applied', '0000-00-00', 'Avid', 'Sales Training & Change Management Specialist', '', '', '', '', '2', '2022-10-05', '0000-00-00', 'Sales', '', 'LinkedIn'),
(291, 2, 'Applied', '0000-00-00', 'Hired by Matrix', 'Trainer', '', '', '', '', '2', '2022-10-05', '0000-00-00', 'Sales', '', 'LinkedIn'),
(292, 2, 'Applied', '0000-00-00', 'Rivery', 'Sales Development Manager', '', '', '', '', '2', '2022-10-05', '0000-00-00', 'Sales', '', 'LinkedIn'),
(293, 2, 'Applied', '0000-00-00', 'Zywave', 'Product Trainer', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(294, 2, 'Rejected', '2022-10-28', 'Mutual of Omaha', 'Sr.Training Specialist/ Anaylst', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(295, 2, 'Applied', '0000-00-00', 'Cartiga', 'Senior Learning and Development Specialist', '', '', '', '', '1', '2022-10-05', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(296, 2, 'Applied', '0000-00-00', 'Dice', 'Training and Development Specialist', '', '', '', '', '1', '2022-10-06', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(297, 2, 'Rejected', '2022-10-28', 'Catalyst Inc.', 'Learning and Development Coordinator', '', '', '', '', '1', '2022-10-06', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(298, 2, 'Applied', '0000-00-00', 'SkyHive', 'Training and Enablement Sepecialist', '', '', '', '', '1', '2022-10-06', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(299, 2, 'Applied', '0000-00-00', 'Cleerly', 'Sales Training/ Enablement Manager', '', '', '', '', '2', '2022-10-06', '0000-00-00', 'Sales', '', 'LinkedIn'),
(300, 2, 'Applied', '0000-00-00', 'Software Technology Inc.', 'Sales Operations Specialist', '', '', '', '', '2', '2022-10-06', '0000-00-00', 'Sales', '', 'LinkedIn'),
(301, 2, 'Applied', '0000-00-00', 'Hone', 'Sales Enablement Manager', '', '', '', '', '2', '2022-10-06', '0000-00-00', 'Sales', '', 'LinkedIn'),
(302, 2, 'Applied', '0000-00-00', 'Quadient', 'Sales Enablement Manager', '', '', '', '', '2', '2022-10-06', '0000-00-00', 'Sales', '', 'LinkedIn'),
(303, 2, 'Applied', '0000-00-00', 'Greenshades Software', 'Sales Enablement Manager', '', '', '', '', '2', '2022-10-06', '0000-00-00', 'Sales', '', 'LinkedIn'),
(304, 2, 'Rejected', '2022-10-24', 'Zywave', 'Learning and Development Coordinator', '', '', '', '', '1', '2022-10-09', '0000-00-00', 'Corporate', '', 'LinkedIn'),
(305, 2, 'Applied', '0000-00-00', 'Unfi', 'Learning & Development Partner- Sales', '', '', '', '', '2', '2022-10-09', '0000-00-00', 'Sales', '', ''),
(306, 2, 'Applied', '0000-00-00', 'Workday', 'Learning & Development Specialist', '', '', '', '', '1', '2022-10-09', '0000-00-00', 'Corporate', '', ''),
(307, 2, 'Rejected', '2022-10-08', 'United Health', 'Trainer-National Remote', '', '', '', '', '1', '2022-10-03', '0000-00-00', 'Corporate', '', ''),
(308, 2, 'Applied', '2022-10-09', 'Prometric', 'Sales Enablement Specialist', 'undisclosed', '', '', '', '2', '2022-10-09', '0000-00-00', '', '', 'LinkedIn'),
(309, 2, 'Ghosted', '2022-10-31', 'Service Up', 'Sales Enablement Specialist', '', '', '', '', '2', '2022-10-09', '2022-10-14', '', '', 'LinkedIn'),
(310, 2, 'Applied', '2022-10-09', 'Infor', 'Senior Sales Coach', '', '', '', '', '2', '2022-10-09', '0000-00-00', '', '', 'LinkedIn'),
(311, 2, 'Applied', '2022-10-09', 'Transaction Network Services', 'Sales Operation Manager', '', '', '', '', '2', '2022-10-09', '0000-00-00', '', '', 'LinkedIn'),
(313, 2, 'Applied', '2022-10-10', 'Confie', 'Sales Operation Manager', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(314, 2, 'Rejected', '2022-10-24', 'Deltek', 'Sales Enablement Program Manager - Partner/Solutio', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(315, 2, 'Rejected', '2022-10-10', 'Allstate ', 'Sales Coach', '', '', '', '', '2', '2022-08-21', '0000-00-00', '', '', 'Career Page'),
(316, 2, 'Rejected', '2022-10-10', 'Allstate ', 'Process Support Senior Consultant', '', '', '', '', '2', '2022-08-21', '0000-00-00', '', '', 'Career Page'),
(317, 2, 'Rejected', '2022-10-10', 'Slack', 'Sr. Learning Consultant', '', '', '', '', '2', '2022-08-21', '0000-00-00', '', '', 'Career Page'),
(318, 2, 'Rejected', '2022-10-10', 'Paylocity', 'Trainer V', '', '', '', '', '2', '2022-08-22', '0000-00-00', '', '', 'LinkedIn'),
(319, 2, 'Rejected', '2022-10-10', 'Transunion', 'Contact Center Trainer', '45,000 - 59,999', '', '', '', '1', '2022-08-30', '0000-00-00', 'Recruiter said she will get back to me on the pay and she never did.', '', 'Career Page'),
(320, 2, 'Applied', '2022-10-10', 'HH Global', 'Sales Enablement Specialist', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(321, 2, 'Applied', '2022-10-10', 'LeadVenture', 'Senior Sales Training and Enablement Manager', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(322, 2, 'Applied', '2022-10-10', 'Ascend.io', 'Sales and Marketing Ops', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(323, 2, 'Rejected', '2022-10-24', 'Amwell', 'Operations Team Trainer', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(324, 2, 'Applied', '2022-10-10', 'QAD', 'Senior Sales Trainer', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(325, 2, 'Applied', '2022-10-10', 'Compucom', 'Sr. Consultant, Sales Training & Enablement', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(326, 2, 'Applied', '2022-10-10', 'KLDiscover', 'Product Trainer', '', '', '', '', '1', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(327, 2, 'Applied', '2022-10-10', 'Talascend', 'Technical Trainer', '', '', '', '', '1', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(328, 2, 'Applied', '2022-10-10', 'NFP', 'Technical Trainer', '', '', '', '', '1', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(329, 2, 'Rejected', '2022-10-20', 'Sinclair Broadcasting Group', 'CRM Training and Field Support', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(330, 2, 'Applied', '2022-10-11', 'Freedonomics', 'Manager, Guided Training', '', '', '', '', '2', '2022-10-10', '0000-00-00', '', '', 'LinkedIn'),
(331, 2, 'Applied', '2022-10-11', 'Progressive Leasing', 'Sales Trainer', '', '', '', '', '2', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(332, 2, 'Applied', '2022-10-11', 'Meta', 'Learning and Development Specialist', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(333, 2, 'First Contact', '2022-10-17', 'Dodge Construction Network', 'Sales Training', '', '', '', '', '2', '2022-10-11', '0000-00-00', '10/24- FU via email\r\n-85-95k \r\n-Start training material but needs update due to company merger. Just more corporate and there more outside vendors.\r\n-Internet leads & phone demos. \r\n-New business, restarting relationships from merger, upsales, cross sales, and renewals.\r\n-No concerns from me as a candidate\r\n-Highlight ability to be a do\'ers\r\n-No previous SaSS sales might be a concern. They have not found sales agent from commericial sales, SaSS experience.\r\n-FU next steps with Monday Christi \r\n', '', 'LinkedIn'),
(334, 2, 'Applied', '2022-10-11', 'Masterschool', 'Onboarding Manager', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(335, 2, 'Applied', '2022-10-11', 'Intellishift', 'Customer Training Manager', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(336, 2, 'Rejected', '2022-11-01', 'Centene Corporation', 'Manager, Training', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(337, 2, 'Applied', '2022-10-11', 'Centene Corporation', 'Learning Consultant', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(338, 2, 'Applied', '2022-10-11', 'Outdoorsy', 'Corporate Learning and Development Specialist', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(339, 2, 'Applied', '2022-10-11', 'Forward Platform', 'Onboarding & Training Manager', '', '', '', '', '1', '2022-10-11', '0000-00-00', '', '', 'LinkedIn'),
(340, 2, 'Applied', '2022-10-13', 'Dice', 'Learning and Development', '', '', '', '', '1', '2022-10-13', '0000-00-00', '', '', 'LinkedIn'),
(341, 2, 'Rejected', '2022-10-31', 'Korber', 'E-Learning Development Specialist', '', '', '', '', '1', '2022-10-13', '0000-00-00', '', '', 'LinkedIn'),
(343, 2, 'Applied', '2022-10-16', 'Varnois', 'Learning and Development Trainer', '', '', '', '', '1', '2022-10-16', '0000-00-00', '', '', 'LinkedIn'),
(344, 2, 'Applied', '2022-10-16', 'Phreesia', 'Sales Training Lead', '', '', '', '', '2', '2022-10-16', '0000-00-00', '', '', 'LinkedIn'),
(345, 2, 'Rejected', '2022-10-17', 'Powur', 'Training Enablement', '', '', '', '', '1', '2022-10-16', '0000-00-00', '', '', 'LinkedIn'),
(346, 2, 'Applied', '2022-10-16', 'AppFolio', 'Learning & Development Program Manager', '', '', '', '', '1', '2022-10-16', '0000-00-00', '', '', 'LinkedIn'),
(347, 2, 'Applied', '2022-10-17', 'Corium', 'Learning and Development Training Manager', '', '', '', '', '1', '2022-10-17', '0000-00-00', '', '', 'LinkedIn'),
(348, 2, 'Applied', '2022-10-18', 'Edgio', 'Learning and Development Specialist', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(349, 2, 'Applied', '2022-10-18', 'Franklin Madison', 'Training &amp; Development', '', '', '', '', '', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(350, 2, 'Applied', '2022-10-18', 'Franklin', 'Training and Development Coordinator', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(351, 2, 'Rejected', '2022-11-03', 'Regional Finance', 'Training and Development Coordinator', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(352, 2, 'Applied', '2022-10-18', 'Esellas', 'Sales coach', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(353, 2, 'Applied', '2022-10-18', 'Unfi', 'Learning and Development Partner', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(354, 2, 'Rejected', '2022-11-13', 'Evolve', 'Senior Sales Trainer', '', '', '', '', '2', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(356, 2, 'Applied', '2022-10-18', 'Amherst', 'Construction Training Specialist', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(357, 2, 'Applied', '2022-10-18', 'Eliassen Group ', 'Training Specialist', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(358, 2, 'Rejected', '2022-10-20', 'US Xpress', 'Operations Training Manager', '', '', '', '', '1', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(359, 2, 'Applied', '2022-10-18', 'Hearth', 'Sales Training Manager', '', '', '', '', '2', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(360, 2, 'Applied', '2022-10-18', 'Montrose Environmental Group', 'Senior Training & Development Specialist', '', '', '', '', '1', '2022-10-19', '0000-00-00', '', '', ''),
(361, 2, 'Rejected', '2022-10-25', 'Oxford Global Resources', 'Sales Enablement Training Manager', '', '', '', '', '2', '2022-10-19', '0000-00-00', '', '', 'LinkedIn'),
(362, 2, 'Applied', '2022-10-19', 'Packsize', 'Sales Enablement Manager', '', '', '', '', '2', '2022-10-18', '0000-00-00', '', '', 'LinkedIn'),
(364, 2, 'Rejected', '2022-10-21', 'Dovenmuehle Mortgage Inc.', 'Corporate Trainer', '45,000 - 59,999', '', '', '', '1', '2022-10-19', '0000-00-00', 'I rejected only $50k', '', 'LinkedIn'),
(365, 2, 'Rejected', '2022-10-28', 'Charlie Health', 'Training, Onboarding, and Development Manager', '', '', '', '', '1', '2022-10-19', '0000-00-00', '9-12 hours of therapy\r\nFounded in 2020 \r\n400 and 200 part time\r\n12 state and 20 day the end of the year\r\nBuilding relations ships with hospital and various facilities \r\nHave curriculum\r\nManager is on maternity leave would like to cover.\r\n65-85k\r\n$85k bonus 10% and equity\r\n\r\n-No concerns as candidatates \r\n-Hiring manager and case studies (gross strategies), 15 minute training\r\n', '', ''),
(366, 2, 'Rejected', '2022-11-01', 'DLH Corporation', 'Training Manager', '', '', '', '', '1', '2022-10-19', '0000-00-00', '', '', 'LinkedIn'),
(367, 2, 'Rejected', '2022-10-25', 'Packsize', 'Sales Enablement Manager', '', '', '', '', '1', '2022-10-19', '0000-00-00', '', '', 'LinkedIn'),
(368, 2, 'Applied', '2022-10-19', 'Peyton Resource Group', 'Corporate Trainer/Instructor', '', '', '', '', '1', '2022-10-19', '0000-00-00', '', '', 'LinkedIn'),
(369, 1, 'Applied', '2022-10-23', 'Norwegian Cruise Lines', 'Web Application Developer', '', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3312942539/?eBP=JOB_SEARCH_ORGANIC&amp;recommendedFlavor=PRE_SCREENING_QUESTIONS&amp;refId=RwFXMrpxJWzFOfQ5NEHcmg%3D%3D&amp;trackingId=k6sG9WdCM7BHay%2BLTCFlig%3D%3D&amp;trk=flagship3_search_srp_jobs&amp;lipi=urn%3A', 'www.ncl.com', '1', '2022-10-23', '0000-00-00', 'No contact info on posting', '', 'LinkedIn'),
(370, 1, 'Rejected', '2022-10-24', 'Copilot', 'Salesforce Solution Architect', '', '', 'https://www.linkedin.com/jobs/view/3315755931/?eBP=CwEAAAGEB1Epf7KYbz5UFRq68FEAQGa3Qq7dGBUBA-rEyBUK7cUZYKhR9qehld212bELVra3Qp2OpyfGFRUhBQBscV66fT_esSE5lD4gWHtAVOAwMHgrn804GE4r_KdX2EbdkCkNC68rHOIHJW5jsfHnjFuFfqkql0lRMkWWjRfptIPkGxNpw2rOi6WtuyXdFwqHvTS', '', '1', '2022-10-23', '0000-00-00', 'I was very excited when I came across this job posting as I believe my experience and skillset would make me a great fit for this role. \r\nI spent 7 years in mortgage lending, 2 of those years were as a Senior Trainer. I taught Salesforce as part of my curriculum and was subject matter expert for my team. \r\nI also have extensive experience working with clients through different length lifecycles. As well as a technical background to help communicate with the development team effectively.', '', 'LinkedIn'),
(371, 1, 'Rejected', '2022-10-30', 'Energi Core Limited', 'Backend Web Developer', '', 'Mid-Level', 'https://boards.greenhouse.io/energicorelimited/jobs/4652799004?utm_source=trueup&amp;ref=trueup', '', '1', '2022-10-23', '0000-00-00', 'trueup.io', '', 'Other'),
(372, 1, 'Rejected', '2022-11-04', 'Softnice Inc', 'Junior Software Developer', '70,000 - 79,999', 'Junior', 'https://www.indeed.com/company/Softnice-Inc/jobs/Junior-Software-Developer-832f3fa9b14d23a1?fccid=ca42bdfbe29c97c0&amp;vjs=3', '', '1', '2022-10-23', '0000-00-00', '70-90k', '', 'Indeed'),
(373, 1, 'Applied', '2022-10-23', 'MortgageHippo Inc', 'Junior Software Engineer', '70,000 - 79,999', 'Junior', 'https://www.indeed.com/rc/clk?jk=b49897d532ffbb11&fccid=3c2f115e0eafa5c0&vjs=3', '', '1', '2022-10-23', '0000-00-00', '', '', 'Indeed'),
(374, 1, 'Applied', '2022-10-24', 'Insight Global', 'Junior Full Stack Developer', '80,000 - 89,999', 'Junior', 'https://www.linkedin.com/jobs/view/3324617881/?eBP=CwEAAAGEDJAASYupzdKaRWoYLlZsgxbDAKdtmY7tZRFb4kvlEF236v-wX7jylwN3vHw0wj5rky9uQscfDMhLCMwF65OVrWx5iSpvWArZbmB5sXv-y26FHp-ZQ42peSjqBGfVgyjpN_vQdv4eP8gb7lxDBsMl-rzSkNev1FzjHWRnpW001iTe1L0DDlTww5qqxExfgRk', '', '2', '2022-10-24', '0000-00-00', 'Staffing Agency', '', 'LinkedIn'),
(375, 1, 'Applied', '2022-10-24', 'LoadSpring', 'Software Engineer', 'undisclosed', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3318235470/?eBP=CwEAAAGEDJCZ8dD5Ud1dlqosSev2yxAAGRo9m-CL5vXbvDJRYkLxtARfr63zSUHgEp0hekTygWxx_7rt95h9TdxUYUPs8Q0N7FQ7h5BC3zZUsLWkz7RYXW5eV1y2GTrdBwpQayZ_p0ALcm_UnNJs4SjHo9ceU9ytaThg5yIOU8-a899D82uLP_orkZdScqGrhbsdi9r', 'https://loadspring.com', '2', '2022-10-24', '0000-00-00', 'I\'m excited to apply for the role with LoadSpring. The opportunity to work with a global company that services multiple industries is one of the many things that excites me about working in tech.\r\n\r\nMy experience building my own full stack applications and my current education in Boca Code will make me a great asset to the team. \r\n\r\nI look forward to discussing my qualifications further and joining the team if all goes well.', '', 'LinkedIn'),
(376, 1, 'Applied', '2022-10-24', 'Keller Williams', 'Software Engineer', '80,000 - 89,999', '', 'https://www.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0CD_jUR8jtLKLZ6z7CkJTLaCT-uGus8X5A02V2EByuXt0dhjnF6dDkDRkoRah2ZuL3wP9M_Jw6a_IuTNxDN9woptyc_s5TsTUvWzjn9xN7TJ-OV_y3pDn6UuSJfPamJaFe3_CLGnZPpzj59KIFZVtsEThb08eakXHjMHeYRr7UBlAKIQd8Dps9frEklnseCiYAokrfe', '', '2', '2022-10-24', '0000-00-00', '', '', 'Indeed'),
(377, 1, 'Rejected', '2022-10-26', 'Smoothstack', 'Entry Level Software Developer', '60,000 - 69,999', 'Entry Level', 'https://www.indeed.com/pagead/clk?mo=r&amp;ad=-6NYlbfkN0ChdE_-3s9UeG5xYsqO3th9AddXeBq2OieSfAM8evhI-HUZpuQaiuzQc33v7SXoh9w90QUb9uJhqqfTrjHEugHM3zv9Kxd3TUFh7KSThBl6F2WZaAj_oBQUUnFvyQXriTpLg1SiAFrhiG9zcrReb7EOJRMHWmyO6_eS6WRPG_Wr3COn5VcMKnQMObAQisdkBhqT', 'https://jobs.smoothstack.com/jobs/7xjpg0/1?utm_sou', '2', '2022-10-24', '0000-00-00', '60k. Ask about contracts or owing money.', '', 'Indeed'),
(378, 1, 'Applied', '2022-10-24', 'Peter Glenn Ski & Sports', 'PHP Developer', '60,000 - 69,999', 'Mid-Level', 'https://www.indeed.com/viewjob?jk=e0ed4b905f891c92&utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic', '', '2', '2022-10-24', '0000-00-00', '60-80k', '', ''),
(379, 1, 'Applied', '2022-10-25', 'Emonics, LLC', 'Junior Software Developer', '70,000 - 79,999', 'Junior', 'https://www.dice.com/jobs/detail/6b499c8c1c9ea9020c546149b87a7204?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D3%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '2', '2022-10-25', '0000-00-00', '60-80k', '', 'Dice'),
(380, 1, 'Applied', '2022-10-25', 'RedRiver Systems', 'Junior PHP Developer', 'undisclosed', 'Junior', 'https://www.dice.com/jobs/detail/9b4d29518de0b7f86b97ff884b3e90c8?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D3%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '2', '2022-10-25', '0000-00-00', '', '', 'Dice'),
(381, 1, 'Applied', '2022-10-25', 'Aquinas Consulting', 'Junior Javascript Developer', '70,000 - 79,999', 'Junior', 'https://www.dice.com/jobs/detail/d38392152decce164664b2ff369102ed?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D2%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '2', '2022-10-25', '0000-00-00', '', '', 'Dice'),
(382, 1, 'Applied', '2022-10-25', 'Zeektek', 'Junior Node.js/AWS/Lambda', '70,000 - 79,999', 'Junior', 'https://www.dice.com/jobs/detail/6de9a26979c8f0062a4a5be157152a98?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D3%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '2', '2022-10-25', '0000-00-00', '', '', 'Dice'),
(383, 1, 'Applied', '2022-10-25', 'John Deere', 'Junior Software Engineer', '80,000 - 89,999', 'Junior', 'https://www.indeed.com/rc/clk?jk=d9fb0307828e87e3&fccid=38eb72d608d80c79&vjs=3', '', '2', '2022-10-25', '0000-00-00', '', '', 'Indeed'),
(384, 10, 'Applied', '2022-10-26', 'Ascendo Resources', 'Mortgage Sales Manager', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-10-26', '0000-00-00', 'On Site Miami accidental apply', '', 'LinkedIn'),
(385, 10, 'Rejected', '2022-10-31', 'Better Up', 'Account Manager', '', 'Mid-Level', '', '', '1', '2022-10-26', '2022-10-29', '', '', 'LinkedIn'),
(386, 10, 'Applied', '2022-10-26', 'Daugherty Business Solutions', 'Senior Sales Executive', '', 'Mid-Level', '', '', '1', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(387, 10, 'Rejected', '2022-10-31', 'CommScope', 'Sales Development Program', '', 'Entry Level', '', '', '1', '2022-10-26', '2022-10-29', 'Messaged Recruiter', '', 'LinkedIn'),
(388, 10, 'Applied', '2022-10-26', '8x8', 'Inside Sales Account Manager', '', '', '', '', '1', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(389, 10, 'Applied', '2022-10-26', 'Particle', 'Business Development Representative', '', 'Entry Level', '', '', '1', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(390, 10, 'Rejected', '2022-10-27', 'Staffing Lab LLC', 'Business Development Representative', '', 'Junior', '', '', '1', '2022-10-26', '2022-10-27', '', '', 'LinkedIn'),
(391, 10, 'Applied', '2022-10-26', 'OneSignal', 'Outbound Business Development Representative', '', '', '', '', '1', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(392, 10, 'Applied', '2022-10-26', 'Avetta', 'Inside Sales Representative', '', '', '', '', '1', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(393, 1, 'Applied', '2022-10-26', 'Coachable', 'Software Engineer', '70,000 - 79,999', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3300928438/?eBP=CwEAAAGEFyQxzBE7Ukizws2NfbX0_SgzJAwemUqOncZW9RYTK1ILlJRl3yVkIYS2d2B9B4i40EmxeYuPRWKtJ-U7aJa00H5i6Pkhc4VHRe1-7sXjFrqC1yefMEgJwBvmnFaJNgIwTigAIRf8kF0bzPVfhoVpRbx-_FGVlhl7BwAKwXRX-rYP0nMRlemFGhr-xBus8hN', '', '2', '2022-10-26', '0000-00-00', 'I like what coachable is doing to help engineers land dream jobs at the FAANG companies. I myself have a background in coaching. That experience along with my tech abilities make me a great asset for your team.\r\n\r\nI built a Python application using AWS (Lambda, Aurora, S3 and API Gateway) and I\'m currently mastering Node.js/Express and React at the bootcamp I\'m attending. \r\n\r\nI look forward to speaking with you to go over my experience in depth.', '', 'LinkedIn'),
(394, 1, 'Rejected', '2022-10-30', 'Digital Room', 'Software Engineer', '', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3321810180/?eBP=JOB_SEARCH_ORGANIC&amp;recommendedFlavor=SKILL_ASSESSMENTS&amp;refId=hrFFSvfC2CEKDxaiPTltQg%3D%3D&amp;trackingId=4nEfQDMIazaiQFJONkDXcQ%3D%3D&amp;trk=flagship3_search_srp_jobs&amp;lipi=urn%3Ali%3Apag', '', '2', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(395, 10, 'Applied', '2022-10-26', 'Wolters Kluwer', 'Advance Inside Sales Representative', '', 'Entry Level', '', '', '1', '2022-10-26', '0000-00-00', '', '', 'LinkedIn'),
(396, 1, 'Rejected', '2022-10-27', 'LaunchDarkly', 'Backend Engineer', 'undisclosed', 'Mid-Level', 'https://boards.greenhouse.io/launchdarkly/jobs/4189019003?utm_source=trueup&amp;ref=trueup', '', '2', '2022-10-26', '0000-00-00', 'true up', '', 'Other'),
(397, 10, 'Applied', '2022-10-27', 'SLM Solutions', 'Sales Development Specialist', '', 'Mid-Level', '', '', '1', '2022-10-27', '0000-00-00', '', '', 'LinkedIn'),
(398, 10, 'Interview Scheduled', '2022-11-03', 'Tenna', 'Inbound Sales Development Specialist', '', '', '', '', '1', '2022-10-27', '0000-00-00', '', '', 'LinkedIn'),
(399, 10, 'Rejected', '2022-11-03', 'Zoom', 'Sales Specialist - Zoom IQ', '', '', '', '', '1', '2022-10-27', '0000-00-00', '', '', 'LinkedIn'),
(400, 10, 'Applied', '2022-10-30', 'Inuit', 'Digital Sales Consultant, Inbound', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(401, 10, 'Applied', '2022-10-30', 'J.Galt Finance Suite', 'Sales Manager', '', '', '', '', '1', '2022-10-30', '0000-00-00', 'Messaged Recruiter', '', 'LinkedIn'),
(405, 10, 'Applied', '2022-10-30', 'Abacus Next', 'Product Trainer', '', '', '', '', '1', '2022-10-30', '0000-00-00', 'Messaged Recruiter', '', 'LinkedIn'),
(406, 10, 'Applied', '2022-10-30', 'Zoom ', 'Zoom Contact Center Specialist', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(407, 10, 'Applied', '2022-10-30', 'ICONMA', 'Bank Trainer', '', '', '', '', '1', '2022-10-30', '0000-00-00', 'Messaged Recruiter', '', 'LinkedIn'),
(408, 10, 'Applied', '2022-10-30', 'Juris Digital', 'Jr. Account Manager', '', '', '', '', '1', '2022-10-30', '0000-00-00', 'Messaged Recruiter', '', 'LinkedIn'),
(409, 10, 'Applied', '2022-10-30', 'Affinity Soluntions', 'Account Manager', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(410, 10, 'Applied', '2022-10-30', 'Money Dolley', 'Account Manager', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(411, 10, 'Applied', '2022-10-30', 'Anunta', 'Inside Sales Specialist', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(412, 10, 'Rejected', '2022-11-07', 'Mercury', 'Sales Development Lead', '', '', '', '', '1', '2022-10-30', '2022-11-07', '', '', 'LinkedIn'),
(413, 10, 'Applied', '2022-10-30', 'Suzy', 'Sales Development Representative', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(414, 10, 'Applied', '2022-10-30', 'Marchon Eyewear', 'Sales Technology Specialist', '', '', '', '', '1', '2022-10-30', '0000-00-00', 'Asked if you can work nights and weekends during application', '', 'LinkedIn'),
(415, 10, 'Applied', '2022-10-30', 'NerdWallet', 'SMB Account Executive', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(416, 10, 'Apply Later', '2022-10-30', 'Subsplash', 'Inside Sales Representative', '60,000 - 69,999', 'Entry Level', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(417, 10, 'Applied', '2022-10-30', 'Annuta', 'Inside Sales Manager', '', '', '', '', '1', '2022-10-30', '0000-00-00', '', '', 'LinkedIn'),
(418, 1, 'Applied', '2022-10-31', 'Visting Media', 'Back End Developer', 'undisclosed', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3332162419/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=%2Bm9r8ojF9t7M3c4WEbGqGQ%3D%3D&trackingId=t46%2FFDKYrNPLcWRENpyqqg%3D%3D&trk=flagship3_search_srp_jobs&lipi=urn%3Ali%3Apage%3Ad_flag', 'https://visitingmedia.com/our-company/', '3', '2022-10-31', '0000-00-00', '3+ years of experience with programming languages like Javascript, Ruby, PHP or Python\r\nHighly Proficient with Node.js\r\nHighly Proficient with Firebase, Firestore, and Cloud Functions\r\nHighly Proficient with Rest APIs, and websockets\r\nHighly proficient with database and storage best practices\r\nFamiliarity with front-end languages such as HTML, JavaScript and CSS', '', 'LinkedIn'),
(419, 1, 'Ghosted', '2022-11-09', 'Brooksource', 'Software Engineer', '100,000 - 119,999', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3318282631/?eBP=JOB_SEARCH_ORGANIC&amp;recommendedFlavor=IN_NETWORK&amp;refId=BNzJXiLI7HiUnwqaVXpqYg%3D%3D&amp;trackingId=z73FEWqWuC%2B%2BRiEo3ptSyQ%3D%3D&amp;trk=flagship3_search_srp_jobs&amp;lipi=urn%3Ali%3Apage%3', '', '3', '2022-10-31', '0000-00-00', '5:15 pm with Chris.', '', 'LinkedIn'),
(421, 10, 'Applied', '2022-10-31', 'B2B ', 'Sales Manager', '120,000 - 149,999', '', '', '', '1', '2022-10-31', '0000-00-00', '', '', ''),
(422, 10, 'Applied', '2022-10-31', '3Q/DEPT', 'Digital Marketing Account Manager', 'undisclosed', '', '', '', '1', '2022-10-31', '0000-00-00', '', '', ''),
(426, 10, 'Applied', '2022-10-31', 'GovSpend ', 'Sales Executive', 'undisclosed', 'Mid-Level', '', '', '1', '2022-10-31', '0000-00-00', '', '', ''),
(427, 10, 'Applied', '2022-10-31', 'Vitally.io', 'senior account manager', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-10-22', '0000-00-00', '', '', ''),
(429, 10, 'Applied', '2022-10-31', 'Digital Resource', 'Senior Account manager', 'undisclosed', 'Mid-Level', '', '', '1', '2022-10-31', '0000-00-00', '', '', ''),
(430, 10, 'Applied', '2022-10-31', 'Digital Resource', 'Account Manager ', 'undisclosed', 'Mid-Level', '', '', '1', '2022-10-31', '0000-00-00', '', '', ''),
(431, 10, 'Rejected', '2022-11-07', 'Yes Hearing', 'Sales Trainer ', 'undisclosed', 'Mid-Level', '', '', '1', '2022-10-31', '2022-11-07', '', '', ''),
(432, 10, 'Applied', '2022-10-31', 'ARTECH INFOSYSTEMS PRIVATE LIMITED', 'Regional Sales Manager', 'undisclosed', 'Mid-Level', '', '', '1', '2022-10-31', '0000-00-00', '', '', ''),
(433, 10, 'Applied', '2022-11-01', 'Nordhealth', 'Account Executive, North America', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(434, 10, 'Applied', '2022-11-01', 'Zoom', 'Account Executive - Majors - TX, OK, LA, or AR', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(435, 10, 'Rejected', '2022-11-04', 'Workday', 'Account Executive, Non Profit - Customer Base', '', '', '', '', '1', '2022-11-01', '2022-11-04', '', '', 'LinkedIn'),
(436, 10, 'Applied', '2022-11-01', 'LoadSpring Solutions', 'Sales Account Executive', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(437, 10, 'Applied', '2022-11-01', 'Insight Global', 'Sales Manager', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(438, 10, 'Applied', '2022-11-01', 'Imperva', 'Sales Manager- Inside Sales', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(439, 10, 'Applied', '2022-11-01', 'Core Group Resources', 'Inside Sales Manager- Remote', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(440, 10, 'Rejected', '2022-11-04', 'Aon', 'Sales Account Manager', '', '', '', '', '1', '2022-11-01', '2022-11-04', '', '', 'LinkedIn'),
(441, 10, 'Applied', '2022-11-01', 'Veeam Software', 'Inside Sales Manager, Channel', '', '', '', '', '1', '2022-11-01', '0000-00-00', 'Messaged Recruiter', '', 'LinkedIn'),
(442, 1, 'Offer Received', '2022-11-07', 'Basilisk SEM', 'Junior Web Developer P/T', '10,000 - 34,999', 'Entry Level', 'https://www.linkedin.com/jobs/view/3340087035/?eBP=JOB_SEARCH_ORGANIC&amp;refId=Zd7M2Xv995hE%2FPwP6CnEcg%3D%3D&amp;trackingId=DSgPNBlJ1PHfot4mu%2BKnFQ%3D%3D&amp;trk=flagship3_search_srp_jobs&amp;lipi=urn%3Ali%3Apage%3Ad_flagship3_search_srp_jobs%3Bkd', '', '4', '2022-11-01', '0000-00-00', '22.50', '', 'LinkedIn'),
(443, 1, 'Applied', '2022-11-01', 'TecthTree', 'Full Stack Engineer', '', '', 'https://talentpool.techtree.dev/apply-to-entire-portfolio?branch=recJXFiMhDJqSsS4s&single_role_id=reccP6u83MxPM43Wy', '', '4', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(444, 10, 'Interview Scheduled', '2022-11-03', 'Zelis', 'Inside Sales Representative', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(445, 1, 'Applied', '2022-11-01', 'Emonics LLC', 'Engineer Entry Level', '60,000 - 69,999', 'Entry Level', 'https://www.dice.com/jobs/detail/dc68cf2cddcc79f2011141b92c66b90e?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D4%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '4', '2022-11-01', '0000-00-00', '', '', 'Dice'),
(446, 1, 'Applied', '2022-11-01', 'RedRiver Systems LLC', 'Junior PHP Developer', '', 'Junior', 'https://www.dice.com/jobs/detail/9b4d29518de0b7f86b97ff884b3e90c8?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D4%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '4', '2022-11-01', '0000-00-00', '', '', 'Dice'),
(447, 1, 'Applied', '2022-11-01', 'Standield Systems', 'Junior Full Stack Developer', 'undisclosed', 'Junior', 'https://www.dice.com/jobs/detail/8a371e74f8b62d546911fec4ea80dff2?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D3%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '4', '2022-11-01', '0000-00-00', '', '', 'Dice'),
(448, 1, 'Applied', '2022-11-01', 'Zeetek', 'Junior Developer', '70,000 - 79,999', 'Junior', 'https://www.dice.com/jobs/detail/6de9a26979c8f0062a4a5be157152a98?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D4%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '4', '2022-11-01', '0000-00-00', '', '', 'Dice'),
(449, 10, 'Applied', '2022-11-01', 'Hotwire', 'Remote Sales Engagement Specialist', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn');
INSERT INTO `Applications` (`id`, `user_id`, `status`, `status date`, `company`, `position`, `salary`, `experience`, `job link`, `website`, `resume`, `applied`, `appointment`, `notes`, `contacts`, `source`) VALUES
(450, 10, 'Applied', '2022-11-01', 'Transunion', 'Account Manager', '', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(451, 10, 'Interview Scheduled', '2022-11-03', 'Newfold Digital', 'Outbound Sales Consultant, Base Pay', '', '', '', '', '', '2022-11-01', '0000-00-00', '', '', 'LinkedIn'),
(452, 10, 'Applied', '2022-11-01', 'Smarter Logistics', ' Logistics Account Executive', '90,000 - 99,999', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', ''),
(453, 10, 'Applied', '2022-11-01', 'Smarter Logistics', 'Logistics Sales Manager', '80,000 - 89,999', '', '', '', '1', '2022-11-01', '0000-00-00', '', '', ''),
(454, 10, 'Applied', '2022-11-01', 'Agency 970', 'Account Executive', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-01', '0000-00-00', '', '', ''),
(455, 10, 'Applied', '2022-11-01', '1st Class medical', 'Medical sales representative', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-01', '0000-00-00', '', '', ''),
(456, 10, 'Interview Scheduled', '2022-11-03', 'Agency 970', 'Sales Manager', '90,000 - 99,999', 'Mid-Level', '', '', '1', '2022-11-01', '0000-00-00', '', '', ''),
(457, 10, 'Applied', '2022-11-03', 'Inuit', 'Digital Sales Consultant, Inbound', '', '', '', '', '1', '2022-11-03', '0000-00-00', '', '', 'LinkedIn'),
(458, 10, 'Applied', '2022-11-03', 'IsoPlexis', '', '', '', '', '', '1', '2022-11-03', '0000-00-00', '', '', 'LinkedIn'),
(459, 10, 'Applied', '2022-11-03', 'System Pavers', 'Sales Trainer- Remote', '', '', '', '', '1', '2022-11-03', '0000-00-00', '', '', 'LinkedIn'),
(460, 10, 'Rejected', '2022-11-04', 'Aon', 'Sales Account Manager (Virtual)', '', '', '', '', '1', '2022-11-03', '2022-11-04', '', '', 'LinkedIn'),
(461, 10, 'Applied', '2022-11-04', 'Hopkins Manufacturing Corporation', 'Sales Manager', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(462, 10, 'Applied', '2022-11-04', 'Frontier Communication', 'Sr. Business Account Manager', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(463, 10, 'Interview Scheduled', '2022-11-08', 'Lumen', 'Account Manager ', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(464, 10, 'Applied', '2022-11-04', 'Fora Financial LLC', 'Sr. Statistical Modeler – Credit Risk', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(465, 10, 'Applied', '2022-11-04', 'Mercury Insurance Services, LLC', 'Underwriting Supervisor- Mechanical Protection', 'undisclosed', 'Management', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(466, 10, 'Applied', '2022-11-04', 'Liberty Mutual Insurance', 'Senior Model Risk Management Analyst', '90,000 - 99,999', 'Senior', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(467, 10, 'Applied', '2022-11-04', 'UnitedHealth Group', 'Surest Underwriter - Remote', '70,000 - 79,999', '', '', '', '1', '2022-11-04', '0000-00-00', '', '', ''),
(468, 10, 'Applied', '2022-11-06', 'Informatica', 'Sales Offerings Specialist', '', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(469, 10, 'Applied', '2022-11-06', 'D&H Distributing', 'Google Sales Specialist', '', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(470, 10, 'Applied', '2022-11-06', 'NDS, Inc. ', 'District Sales Manager, North Washington State', 'undisclosed', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', ''),
(471, 10, 'Applied', '2022-11-06', 'Koombea', 'Sales Specialist', '', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(472, 10, 'Applied', '2022-11-06', 'Every Man Jack', 'Sales Manager', 'undisclosed', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', ''),
(473, 10, 'Applied', '2022-11-06', 'Broadlume', 'Sales Development Representative', '', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(474, 10, 'Applied', '2022-11-06', 'Klaviyo', 'Sales Manager', '100,000 - 119,999', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', ''),
(475, 1, 'Applied', '2022-11-06', 'Bayes Invest', 'Software Engineer', 'undisclosed', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3346079067/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=JOB_SEEKER_QUALIFIED&refId=XtoCDN84uyospD3LwaJq%2FQ%3D%3D&trackingId=iWzL2nz7sP9qXrx3pRGL3Q%3D%3D&trk=flagship3_search_srp_jobs&lipi=urn%3Ali%3Apage%3Ad_flagship3', '', '5', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(476, 10, 'Applied', '2022-11-06', 'Bullard ', 'Regional Sales Manager', '80,000 - 89,999', '', '', '', '', '2022-11-06', '0000-00-00', '', '', ''),
(477, 10, 'Applied', '2022-11-06', 'Ataway', 'Sales Account Executive ', '', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(478, 10, 'Applied', '2022-11-06', 'Egnyte ', 'Sales Manager - East', 'undisclosed', '', '', '', '', '2022-11-06', '0000-00-00', '', '', ''),
(479, 1, 'Applied', '2022-11-06', 'RightWorks', 'Full Stack Developer', '', 'Mid-Level', 'https://www1.jobdiva.com/portal/?a=82jdnw94whq118mkgll6loc5arjm93082baxkc7pysvpyjx9mbvx37x3rn7desjf/#/jobs/18606154', '', '5', '2022-11-06', '0000-00-00', 'FinTech start up in Real Estate.', '', 'LinkedIn'),
(480, 10, 'Applied', '2022-11-06', 'Americas Preferred Home Warranty', 'Area Sales Manager', '70,000 - 79,999', 'Mid-Level', '', '', '', '2022-11-06', '0000-00-00', '', '', ''),
(481, 1, 'Applied', '2022-11-06', 'RFS', 'Fullstack Software Engineer', '120,000 - 149,999', 'Mid-Level', 'https://recruiterflow.com/recruitingfromscratch/jobs/1452', '', '5', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(482, 10, 'Applied', '2022-11-06', 'NAN - Nationwide Appraisal Network', 'Sales Manager', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-06', '0000-00-00', '', '', ''),
(483, 1, 'Applied', '2022-11-06', 'Kani Solutions', 'Fullstack Developer', '80,000 - 89,999', 'Entry Level', 'https://www.dice.com/jobs/detail/a2c8c8894e32567d68cd7fd90d38427c?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D1%26pageSize%3D20%26filters.postedDate%3DSEVEN%26filters.employmentType%3DFULLTIME%257CCON', '', '5', '2022-11-06', '0000-00-00', 'Phone number on job listing. Call', '', 'Dice'),
(484, 10, 'Applied', '2022-11-06', 'WizeHire', 'Sales Manager', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-06', '0000-00-00', '', '', ''),
(485, 10, 'Applied', '2022-11-06', 'Zippy ', 'Sales Manager', 'undisclosed', 'Mid-Level', '', '', '', '2022-11-06', '0000-00-00', '', '', ''),
(486, 10, 'Applied', '2022-11-06', 'Cable One', 'Inbound Sales Rep', '', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', 'LinkedIn'),
(487, 1, 'Applied', '2022-11-06', 'Cloud Info Global', 'Programmer', '', 'Entry Level', 'https://www.dice.com/jobs/detail/2ce99bb4ee582d50776c8c373ba16ae0?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D4%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '5', '2022-11-06', '0000-00-00', '', '', 'Dice'),
(488, 1, 'Applied', '2022-11-06', 'Skyrocket Ventures', 'Junior Front End Engineer', '', 'Junior', 'https://www.dice.com/jobs/detail/b549d96ca609e73016691c1ec07bc7c4?searchlink=search%2F%3Fq%3Djunior%26countryCode%3DUS%26radius%3D30%26radiusUnit%3Dmi%26page%3D5%26pageSize%3D20%26filters.employmentType%3DFULLTIME%257CCONTRACTS%257CTHIRD_PARTY%26filt', '', '5', '2022-11-06', '0000-00-00', '', '', 'Dice'),
(489, 10, 'Applied', '2022-11-06', 'Caron Products', 'Regional Sales Manager', 'undisclosed', '', '', '', '1', '2022-11-06', '0000-00-00', '', '', ''),
(490, 10, 'Rejected', '2022-11-07', 'Samsara ', 'Manager, Inside Sales- East', 'undisclosed', 'Mid-Level', '', '', '', '2022-11-06', '2022-11-07', '', '', ''),
(491, 10, 'Applied', '2022-11-07', 'Victory Lap', 'Sales Fellowship', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(492, 10, 'Applied', '2022-11-07', 'Leica Biosystems', 'Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '', '2022-11-07', '0000-00-00', '', '', ''),
(493, 10, 'Applied', '2022-11-07', 'Vroom', 'Inside Sales Specialist ', '60,000 - 69,999', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(494, 10, 'Applied', '2022-11-07', 'Siemens Healthineers', 'Sales Executive', 'undisclosed', '', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(495, 10, 'Applied', '2022-11-07', 'Provenir ', 'Business Development Representative', 'undisclosed', '', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(496, 10, 'Applied', '2022-11-07', 'STEMscopes by Accelerate Learning, Inc.', 'Inside Sales, East', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(497, 10, 'Applied', '2022-11-07', 'Pursuit  Dallas-Fort Worth Metroplex Remote', 'Inside Sales Specialist', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(498, 10, 'Applied', '2022-11-07', 'Barrington James', 'Inside Sales Specialist', 'undisclosed', '', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(499, 10, 'Applied', '2022-11-07', 'CSG Talent', 'Inside Sales/Support Specialist - Life Sciences', 'undisclosed', '', '', '', '', '2022-11-07', '0000-00-00', '', '', ''),
(500, 10, 'Applied', '2022-11-07', 'CSG Talent', 'Inside Sales/Support Specialist - Life Sciences', 'undisclosed', '', '', '', '', '2022-11-07', '0000-00-00', '', '', ''),
(501, 10, 'Applied', '2022-11-07', 'Insight Global ', 'Sales Development Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(502, 10, 'Applied', '2022-11-07', 'wowJobs ', 'Sales Leadership role', '120,000 - 149,999', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(503, 10, 'Applied', '2022-11-07', 'Emtec Inc', 'Inside Sales Representative', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(504, 10, 'Applied', '2022-11-07', 'Xometry', 'Business Development Representative, Supplier Sale', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(505, 10, 'Applied', '2022-11-07', 'Cutting Edge Recruiting Solutions ', 'Director of Service and Sales', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(506, 10, 'Applied', '2022-11-07', 'Gannett | USA TODAY NETWORK', 'Inside Sales Representative (remote)', 'undisclosed', '', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(507, 1, 'Applied', '2022-11-07', 'Career Group', 'Software Developer', '90,000 - 99,999', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3341833836/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=mfFj7woAZpKxXRYgBMZj3A%3D%3D&trackingId=0bRtXPhHp%2Blfd9fHBDrMuA%3D%3D&trk=flagship3_search_srp_jobs', '', '5', '2022-11-07', '0000-00-00', '', '', 'LinkedIn'),
(508, 10, 'Applied', '2022-11-07', 'RxSalesPros', 'Neuroscience Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(509, 1, 'Applied', '2022-11-07', 'Tiggee, LLC', 'Frontend Developer', '', 'Mid-Level', 'http://jobs.tiggee.com/apply/38045a1e555258525462040e5606657a025614037f12301e6007281f5e2406223d3a34/Frontend-Developer?sid=Rk8AgbjceR69d7PM7bKMFPuG75dYhhSaduy&source=LILI', '', '5', '2022-11-07', '0000-00-00', '', '', 'LinkedIn'),
(510, 10, 'Applied', '2022-11-07', 'A.W. Chesterton Company', 'Sales Specialist - Sealing Devices', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(511, 10, 'Applied', '2022-11-07', 'Graco ', 'Sales Development Specialist - West Region', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-07', '0000-00-00', '', '', ''),
(512, 1, 'Applied', '2022-11-07', 'KForce', 'Backend Engineer', '', 'Mid-Level', 'https://www.kforce.com/Jobs/2478~EQG~2043960P1~99/ApplyOnline/?event=candidate.apply&Industry=BBARRETT@KFORCE.COM&utm_source=InternetPost&utm_medium=LinkedIn&utm_campaign=LinkedInJobPost', '', '5', '2022-11-07', '0000-00-00', '', '', 'LinkedIn'),
(513, 10, 'Applied', '2022-11-08', 'Vroom', 'Sales Manager', '60,000 - 69,999', '', '', '', '1', '2022-11-08', '0000-00-00', '', '', 'LinkedIn'),
(514, 1, 'Applied', '2022-11-09', 'Eliassen Group', 'Software Engineer', '', 'Mid-Level', 'https://www.linkedin.com/jobs/view/3344876427/?eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=PRE_SCREENING_QUESTIONS&refId=9iYzy3ejTEiMf7wjpUJ7rw%3D%3D&trackingId=1AjQWBnmkcjulfu%2FDA2zDA%3D%3D&trk=flagship3_search_srp_jobs', '', '6', '2022-11-09', '0000-00-00', 'Pacific, 6 month contract.', '', 'LinkedIn'),
(515, 1, 'Applied', '2022-11-09', 'Greenhouse', 'Full Stack JavaScript Developer', '', 'Mid-Level', 'https://boards.greenhouse.io/thelearningexperience/jobs/5263108002', '', '6', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(516, 1, 'Rejected', '2022-11-11', 'FOUND', 'Full-Stack Software Engineer', '', 'Entry Level', 'https://jobs.ashbyhq.com/found/ac350ba2-018b-4d8a-8649-3d49f3e419ec/application', '', '6', '2022-11-09', '0000-00-00', 'Posting states all levels', '', 'LinkedIn'),
(518, 1, 'Applied', '2022-11-09', 'Glidian', 'Software Engineer', '', 'Mid-Level', 'https://jobs.lever.co/glidian/98c473f4-cf7a-407e-84da-918c2ec67ac5/apply?lever-source=LinkedIn', '', '6', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(519, 1, 'Applied', '2022-11-09', 'SEP', 'Full Stack Software Engineer', '', 'Mid-Level', 'https://jobs.crelate.com/portal/strategicemployment/job/apply/9e1syf1e1arb9bmdr9orumi3ty', '', '6', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(520, 1, 'Coding Challenge', '2022-11-12', 'PALEO', 'Software Engineer', '', '', 'https://coda.io/form/Applicant-sign-up_dRY1XT--CHr', '', '6', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(521, 10, 'Applied', '2022-11-09', 'American Income Life: AO ', 'Entry Level Sales Manager ', 'undisclosed', '', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(522, 10, 'Applied', '2022-11-09', 'Pursuit ', 'Sales person', '90,000 - 99,999', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(523, 10, 'Applied', '2022-11-09', 'Yunex Traffic', 'Sales Manager', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(524, 10, 'Applied', '2022-11-09', 'Barton Healthcare Staffing ', 'Account Executive (Entry Level)', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(525, 10, 'Applied', '2022-11-09', 'Global Recruiters Network of Smyrna (GRN)', 'Presales Specialist', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', ''),
(526, 10, 'Applied', '2022-11-09', 'CyberCoders ', 'Remote: SaaS Sales Manager', '70,000 - 79,999', '', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(527, 10, 'Applied', '2022-11-09', 'Ascendo Resources', 'Staff Accountant', '60,000 - 69,999', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(528, 10, 'Applied', '2022-11-09', 'Digital Resource', 'Business Development Representative - Sales', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(529, 10, 'Applied', '2022-11-09', 'The Mullings Group ', 'Executive Assistant', 'undisclosed', '', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(530, 10, 'Applied', '2022-11-09', 'Leeds Professional Resources', 'Financial Analyst', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-11-09', '0000-00-00', '', '', 'LinkedIn'),
(531, 1, 'Applied', '2022-11-11', 'Web Assets', 'Web Developer', '60,000 - 69,999', 'Junior', 'https://giraffemediagroup.bamboohr.com/jobs/view.php?id=33', '', '7', '2022-11-11', '0000-00-00', '65,000. On site', '', 'LinkedIn'),
(532, 1, 'Applied', '2022-11-13', 'Blueprint Test Prep', 'Junior Software Engineer, DevOps', '90,000 - 99,999', 'Junior', 'https://www.linkedin.com/jobs/view/3351404109/?eBP=JYMBII_JOBS_HOME_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=MwJZKBDqH4mW6VAefkajpg%3D%3D&trackingId=a06z76OS3CmMUEIqPG4U1Q%3D%3D&trk=flagship3_jobs_discovery_jymbii', '', '8', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(533, 1, 'Applied', '2022-11-13', 'AdvanceSoft', 'Developer', 'undisclosed', '', 'https://www.linkedin.com/jobs/view/3358333153/?eBP=JYMBII_JOBS_HOME_ORGANIC&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=MwJZKBDqH4mW6VAefkajpg%3D%3D&trackingId=%2BXhU%2BoVu0yWXBpYBO%2BEn7Q%3D%3D&trk=flagship3_jobs_discovery_jymbii', '', '8', '2022-11-13', '0000-00-00', 'Contract. Node and React', '', 'LinkedIn'),
(535, 1, 'Applied', '2022-11-13', 'SEP', 'Full Stack Software Engineer', '120,000 - 149,999', 'Mid-Level', 'https://jobs.crelate.com/portal/strategicemployment/job/8muatsiubpmwgm478bk6jeuxyh', '', '8', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(536, 10, 'Applied', '2022-11-13', 'SoftwareONE', 'VMware Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(537, 1, 'Rejected', '2022-11-14', 'Maze', 'Staff Engineer', '', '', 'https://jobs.ashbyhq.com/mazedesign/d0388582-9115-4b27-9cc4-dfe711601864/application', '', '8', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(538, 10, 'Applied', '2022-11-13', 'SoftServe', 'Partner Sales / Field Alliance Executive (the WEST', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(539, 10, 'Applied', '2022-11-13', 'LEVITRONIX', 'Bioprocess Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(540, 1, 'Applied', '2022-11-13', 'KForce', 'AWS JavaScript Developer', '', '', 'https://www.kforce.com/Jobs/2478~EQG~2036113T1~99/ApplyOnline/?event=candidate.apply&Industry=RBOYMAN@KFORCE.COM&utm_source=InternetPost&utm_medium=LinkedIn&utm_campaign=LinkedInJobPost', '', '8', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(541, 10, 'Applied', '2022-11-13', 'Ally Inc', 'Software Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', ''),
(542, 10, 'Applied', '2022-11-13', 'BVS Performance Solutions', 'B2B Training Sales', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(543, 10, 'Applied', '2022-11-13', 'Unchained Labs ', 'Inside Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(544, 10, 'Applied', '2022-11-13', 'The Lappin Agency', 'Remote Sales', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(545, 10, 'Applied', '2022-11-13', 'The Giglione Ackerman Agency', 'Remote Sales Specialist', 'undisclosed', '', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(546, 10, 'Applied', '2022-11-13', 'Shulex ', 'Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(547, 10, 'Applied', '2022-11-13', 'S-S Bendure & Hartwig', 'Sales Specialist', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(548, 10, 'Applied', '2022-11-13', 'Acima', 'Area Sales Representative', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(549, 10, 'Applied', '2022-11-13', 'Proximo Spirits ', 'On-Premise Sales Specialist', 'undisclosed', '', '', '', '', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(550, 10, 'Applied', '2022-11-13', 'HONCHO ', 'Account Supervisor', '90,000 - 99,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(551, 10, 'Applied', '2022-11-13', 'Mondel?z International', 'Sales Specialist', 'undisclosed', '', '', '', '', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(552, 10, 'Applied', '2022-11-13', 'Total Lab Solutions', 'Infectious Disease Sales Specialist', '90,000 - 99,999', '', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(553, 1, 'Applied', '2022-11-13', 'Gordian Software', 'Backend Engineer', '', 'Junior', 'https://angel.co/company/gordian-software/jobs/963939-backend-engineer', '', '8', '2022-11-13', '0000-00-00', '', '', 'Angel.co'),
(554, 10, 'Applied', '2022-11-13', 'The Sales Connection ', 'Sales Specialist', '80,000 - 89,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(555, 10, 'Applied', '2022-11-13', 'Gerard Mortgage LLC', 'Inside Sales Representative', 'undisclosed', '', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(556, 1, 'Applied', '2022-11-13', 'Evidence', 'Full Stack Engineer', '100,000 - 119,999', 'Junior', 'https://angel.co/company/evidence-3/jobs/2461195-full-stack-engineer', '', '8', '2022-11-13', '0000-00-00', '', '', 'Angel.co'),
(557, 1, 'Applied', '2022-11-13', 'Used Pallet Recycling', 'Software Developer', '100,000 - 119,999', 'Mid-Level', 'https://angel.co/company/used-pallet-recycling-1/jobs/2467050-software-developer', '', '8', '2022-11-13', '0000-00-00', '', '', 'Angel.co'),
(558, 10, 'Applied', '2022-11-13', 'DEXIS ', 'Account Executive', 'undisclosed', '', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(559, 10, 'Applied', '2022-11-13', 'WizeHire ', 'Inside Sales Specialist', '', '', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(560, 10, 'Applied', '2022-11-13', 'BTS', 'Inside Sales Representative', '', '', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(561, 10, 'Applied', '2022-11-13', 'The Phoenix Group', 'Technical Sales Representative', '60,000 - 69,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(562, 10, 'Applied', '2022-11-13', 'Husk Talent ', 'Account Executive - K-12 SaaS Sales (Education Tec', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(563, 10, 'Applied', '2022-11-13', 'V-Soft Consulting Group, Inc. ', 'B2B Sales specialist/ customer support', '', 'Mid-Level', '', '', '1', '2022-11-13', '0000-00-00', '', '', 'LinkedIn'),
(564, 10, 'Applied', '2022-11-14', 'Techaxis, Inc ', 'BPS Sales Lead - BFSI', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-14', '0000-00-00', '', '', ''),
(565, 10, 'Applied', '2022-11-14', 'L.A. Head Hunter', ' Inside Sales Account', 'undisclosed', '', '', '', '1', '2022-11-14', '0000-00-00', '', '', 'LinkedIn'),
(566, 10, 'Applied', '2022-11-14', 'zillow', 'Email Development Specialist', '80,000 - 89,999', '', '', '', '1', '2022-11-14', '0000-00-00', '', '', 'LinkedIn'),
(567, 10, 'Applied', '2022-11-14', 'PC Matic ', 'Federal Sales Manager', 'undisclosed', '', '', '', '1', '2022-11-14', '0000-00-00', '', '', 'LinkedIn'),
(568, 10, 'Applied', '2022-11-14', 'Jf Kilfoil Company', '', '', '', '', '', '1', '2022-11-14', '0000-00-00', '', '', 'LinkedIn'),
(569, 10, 'Applied', '2022-11-14', 'MFGWORX', 'Sales Account Executive', 'undisclosed', '', '', '', '1', '2022-11-14', '0000-00-00', '', '', 'LinkedIn'),
(570, 10, 'Applied', '2022-11-14', 'Tehama', 'Pre sale manager ', 'undisclosed', '', '', '', '1', '2022-11-14', '0000-00-00', '', '', 'LinkedIn'),
(571, 10, 'Applied', '2022-11-14', 'Consultative Search Group ', 'Regional Sales Manager', '80,000 - 89,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(572, 10, 'Applied', '2022-11-14', 'TownSq', 'Inside Sales Manager', 'undisclosed', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(573, 10, 'Applied', '2022-11-14', 'The Intersect Group', 'Sales Manager', 'undisclosed', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(574, 10, 'Applied', '2022-11-14', 'Fisher Agencies', 'Remote Sales Management Specialist', '90,000 - 99,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(575, 10, 'Applied', '2022-11-14', 'ProActivate', 'Sales Specialist', 'undisclosed', '', '', '', '', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(576, 10, 'Applied', '2022-11-14', 'Connection ', 'Sales Manager', 'undisclosed', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(577, 10, 'Applied', '2022-11-14', 'Clarion Events Inc', 'Sponsorship Sales Manager', '70,000 - 79,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(578, 10, 'Applied', '2022-11-14', 'VaxCare', 'Inside Sales Representative', 'undisclosed', '', '', '', '', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(579, 10, 'Applied', '2022-11-15', 'Apex Systems', 'Portfolio Specialist', '60,000 - 69,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(580, 10, 'Applied', '2022-11-15', 'Bravado', 'Account Executive', '100,000 - 119,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(581, 10, 'Applied', '2022-11-15', 'Pinpoint Talent', 'Asset Manager', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(582, 10, 'Applied', '2022-11-15', 'Roth Staffing', 'Software Sales Representative', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(583, 10, 'Applied', '2022-11-15', 'FileWave', 'Channel Partner Account Executive', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(584, 10, 'Applied', '2022-11-15', 'Closers.io', 'Account Executive', '', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(585, 10, 'Applied', '2022-11-15', 'zillow', 'Principal Product Manager, Finance Shared Services', 'undisclosed', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(586, 10, 'Applied', '2022-11-15', 'International Achievers Group ', 'Director Strategic Account Sales', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(587, 10, 'Applied', '2022-11-15', 'Kelly', 'Senior Manager of Finance', '90,000 - 99,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(588, 10, 'Applied', '2022-11-15', 'The RowAllen Group ', 'Manager Strategic Finance', '100,000 - 119,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(589, 10, 'Applied', '2022-11-15', 'The RowAllen Group ', 'Manager Strategic Finance', '100,000 - 119,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(590, 10, 'Applied', '2022-11-15', 'JCW ', 'SBA Portfolio/Relationship Manager', '80,000 - 89,999', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(591, 10, 'Applied', '2022-11-15', 'CloserIQ ', 'Account Manager ', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(592, 10, 'Applied', '2022-11-15', 'CloserIQ ', 'Account Manager ', '100,000 - 119,999', 'Mid-Level', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(593, 10, 'Applied', '2022-11-15', 'AMN Healthcare ', 'Client Account Manager', 'undisclosed', '', '', '', '1', '2022-11-15', '0000-00-00', '', '', 'LinkedIn'),
(594, 10, 'Applied', '2022-11-16', 'Litmus', 'Account Executive, Commercial - Remote', 'undisclosed', '', '', '', '', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(595, 10, 'Applied', '2022-11-16', 'Vendr ', 'Mid-Market Sales Manager ', 'undisclosed', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(596, 10, 'Applied', '2022-11-16', 'CEPRES ', 'Sales Manager, Private Markets Software', 'undisclosed', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(597, 10, 'Applied', '2022-11-16', 'ASRC Federal ', 'TWEEDS Program - Multiple positions available', 'undisclosed', '', '', '', '', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(598, 10, 'Applied', '2022-11-16', 'MRI Software', 'Account Manager, Occupier Solutions', 'undisclosed', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(599, 10, 'Applied', '2022-11-16', 'MRI Software', 'Account Manager, Occupier Solutions', 'undisclosed', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(600, 10, 'Applied', '2022-11-16', 'Advanced Sterilization Products (ASP', 'Account Manager - Palm Beach', 'undisclosed', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(601, 10, 'Applied', '2022-11-16', 'Dandy ', 'Account Manager ', '90,000 - 99,999', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(602, 10, 'Applied', '2022-11-16', 'LexisNexis Risk Solutions Group ', 'Account Manager ', '90,000 - 99,999', '', '', '', '1', '2022-11-16', '0000-00-00', '', '', 'LinkedIn'),
(603, 10, 'Applied', '2022-11-17', 'Vroom', 'Inside Sales Specialist (Remote FL)', '60,000 - 69,999', 'Senior', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(604, 10, 'Applied', '2022-11-17', 'Vroom', 'Inside Sales Specialist (Remote FL)', '60,000 - 69,999', 'Senior', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(605, 10, 'Applied', '2022-11-17', 'Huntington', 'Private Banking Relationship Mgr II', 'undisclosed', 'Mid-Level', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(606, 10, 'Applied', '2022-11-17', '3P Partners ', 'Treasury Manager', '100,000 - 119,999', '', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(607, 10, 'Applied', '2022-11-17', 'CUNA Mutual Group ', 'Retirement Financial Operations Manager I', '100,000 - 119,999', '', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(608, 10, 'Applied', '2022-11-17', 'Service First Processing', 'Account Manager', '45,000 - 59,999', 'Mid-Level', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(609, 10, 'Applied', '2022-11-17', 'iRoofing ', 'Sales Account Executive', 'undisclosed', '', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(610, 10, 'Applied', '2022-11-17', 'Mondo', 'Account Manager ', 'undisclosed', 'Mid-Level', '', '', '', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(611, 10, 'Applied', '2022-11-17', 'Jobot', 'Remote Sales Manager (East Coast)', '100,000 - 119,999', '', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(612, 10, 'Applied', '2022-11-17', 'Ascendo Resources', 'Operations Associate', '70,000 - 79,999', 'Mid-Level', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(613, 10, 'Applied', '2022-11-17', 'Mako Professionals', 'Sales Account Executive', 'undisclosed', '', '', '', '1', '2022-11-17', '0000-00-00', '', '', 'LinkedIn'),
(614, 10, 'Applied', '2022-11-17', 'Mondo', 'Account Manager', 'undisclosed', '', '', '', '', '2022-11-17', '0000-00-00', '', '', 'LinkedIn');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(6) UNSIGNED NOT NULL,
  `user_id` int(50) UNSIGNED NOT NULL,
  `company` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `office` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `notes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `company`, `title`, `name`, `phone`, `office`, `email`, `notes`) VALUES
(75, 8, 'Orangetheory', 'Recruiter', 'Amanta Hireme', '1 (800) 555-0100', '', 'email@email.com', 'Not a real contact'),
(76, 8, 'IBI Group', 'Hiring Manager', 'Mai Employer', '888-555-0150', '', 'Mai@IBI.com', 'Also not a real contact.'),
(77, 8, 'Haven Behavioral Healthcare', 'HR', 'Joe Somebody', '', '(305) 786-1234', 'sombodyhire@me.com', 'Unreal'),
(78, 8, 'NEWSMAX', 'Recruiter', 'Recruiter Max', '', '1-786-305-4321', 'Max@NewsMax.com', 'Imaginary'),
(79, 1, 'Rezult Group, Inc.', 'Recruiter', 'Justin Wallace', '561-288-9588', '', 'jwallace@rezultgroup.com', 'Jonathan Ashkenazy\'s friend. We met a boomers.'),
(80, 1, 'Royal Caribbean Group', 'Manager', 'Rene Ferretti Jr.', '305-776-6975', '', 'rferrettijr@rccl.com', ''),
(81, 1, 'Compass', 'Software Engineer', 'Tzook Bar Noy', '619-417-9254', '', 'tzookb@gmail.com', ''),
(82, 1, 'BodyLogic MD', 'Software Engineer', 'Guillermo Lopez', '', '', 'dalsier.work@gmail.com', ''),
(83, 1, 'Level Access', 'Associate Project Manager', 'Katelyn Eisenber', '', '', '', ''),
(84, 1, '', 'Robert Staab', '', '', '', '', ''),
(85, 1, 'Digital Resource', 'Manager of Web Development', 'Dan Martinez', '', '', '', 'Met at halloween networking event.');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(25) UNSIGNED NOT NULL,
  `user id` int(25) UNSIGNED NOT NULL,
  `version id` int(25) UNSIGNED NOT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `user id`, `version id`, `notes`, `location`) VALUES
(56, 2, 1, 'Corporate', 'resume/56_2_1_Corporate Trainer Resume 3.0.pdf'),
(57, 2, 2, 'Sales', 'resume/57_2_2_Sales Trainer Resume 3.0.pdf'),
(58, 8, 1, 'Sample', 'resume/58_8_1_functionalsample.pdf'),
(59, 8, 2, 'Same', 'resume/59_8_2_functionalsample.pdf'),
(60, 1, 1, '', 'resume/60_1_1_espinosa_resume_2022.pdf'),
(61, 1, 2, 'Single Column', 'resume/61_1_2_espinosa_resume_2022.pdf'),
(62, 10, 1, 'Sales Resume', 'resume/62_10_1_Michael Lopez Resume Sales.pdf'),
(63, 1, 3, 'Added Sudoku Article', 'resume/63_1_3_espinosa_resume_2022.pdf'),
(65, 1, 4, 'Added React + Album App', 'resume/65_1_4_espinosa_resume_2022.pdf'),
(66, 1, 5, 'Fixed Typo', 'resume/66_1_5_espinosa_resume_2022.pdf'),
(67, 1, 6, 'Added Basilisk and voting app', 'resume/67_1_6_espinosa_resume_2022.pdf'),
(68, 1, 7, 'Removed part-time wording', 'resume/68_1_7_espinosa_resume_2022.pdf'),
(69, 1, 8, 'Fixed Medium Link', 'resume/69_1_8_espinosa_resume_2022.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `first name` varchar(30) NOT NULL,
  `last name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` bigint(50) DEFAULT NULL,
  `expiration` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first name`, `last name`, `email`, `password`, `otp`, `expiration`) VALUES
(1, 'Eddie', 'Espinosa', 'ediesportlond@hotmail.com', '$2y$10$Sq3GwPh/tYF9ofBlQj6b1.xVSBIV7isa9JBNeM1w4OyvgWR00dCPy', NULL, NULL),
(2, 'Yaslin', 'Carmona', 'yaslin123@gmail.com', '$2y$10$FnNY95.lB7seMvK4jN3BYO9Nw5EUxsmxB5c4fn/V1LMeX3kTfzj4m', 0, '0000-00-00 00:00:00'),
(8, 'Demo', 'User', 'demo@itseddies.com', '$2y$10$E8Zu01hdFvP65EjKZo5dJuMKQHCop2asaEx53KNXUswzi6CW7AMFm', 0, '0000-00-00 00:00:00'),
(9, 'Some', 'User', 'e@mail.com', '$2y$10$eDZjAVxlccXHkRw6c5m9h.PJM.bGd3X4UVnJad7TxsFmQY1wXi1Ua', NULL, NULL),
(10, 'Michael', 'Lopez', '94michaellopez@gmail.com', '$2y$10$JV.SxL..zDzztTuZXgaFR.CfkjdbmHZRqE8bhI0Ggy2QaICcxbiTC', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Applications`
--
ALTER TABLE `Applications`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
