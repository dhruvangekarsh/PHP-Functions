-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2016 at 05:25 PM
-- Server version: 5.5.50-cll
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ekarshpr_quiz_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'Computer'),
(39, 'Engineering'),
(58, 'gh'),
(56, 'Media'),
(16, 'Science'),
(36, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `ans_right` text NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `question_title` (`question_title`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_title`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans_right`, `category`, `subcategory`) VALUES
(3, 'Question 1', 'Full Name of HTML', 'HTML', 'HTTP', 'JS', 'PHP', '3', 1, 1),
(4, 'Question 2', 'What is php', 'Web Programming Language', 'Scriptdfdsfdsf', 'Design', 'Style ', '1', 1, 14),
(5, 'HTML Q1', 'What does HTML stand for?', 'Home Tool Markup Language', 'Hyperlinks and Text Markup Language', 'Hyper Text Markup Language', 'hiper text mark Low', '3', 1, 30),
(6, 'HTML Q2', 'Who is making the Web standards?', 'Mozilla', 'The World Wide Web Consortium', 'Microsoft', 'Google', '2', 1, 30),
(7, 'HTML Q3', 'Choose the correct HTML element for the largest heading:', '<h1>', '<h6>', '<heading>', '<head>', '1', 1, 30),
(8, 'HTML Q4', ' What is the correct HTML element for inserting a line break?', '<lb>', '<br>', '<break>', '</n>', '2', 1, 30),
(9, 'HTML Q5', 'What is the correct HTML for adding a background color?', '<body bg="yellow">', '<background>yellow</background>', '<body style="background-color:yellow;">', 'bg-color="red"', '3', 1, 30),
(10, 'HTML Q6', 'Choose the correct HTML element to define important text', '<important>', '<strong>', '<b>', '<i>', '2', 1, 30),
(11, 'HTML Q7', 'Which character is used to indicate an end tag?', '<', '>', '/', '?', '3', 1, 30),
(14, 'HTML Q9', 'How can you make a numbered list?', '<ol>', '<list>', '<ul>', '<dl>', '1', 1, 30),
(15, 'HTML Q10', 'What is the correct HTML for making a checkbox?', '<check>', '<checkbox>', '<input type="checkbox">', '<input type="check">', '3', 1, 30),
(16, 'HTML Q8', 'What is the correct HTML for making a text input field?', '<input type="text">', '<input type="textfield">', '<textfield>', '<textinput type="text">', '1', 1, 30),
(17, '', '', '', '', '', '', '', 0, 0),
(18, 'CSS Q1', 'fvgnbfakjbgfkdsghg', 'gfgfdsgdfsg', '345235', 'dfgdfgdfgdf', 'fdgdfgfdgfd', '1', 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(50) NOT NULL,
  `quiz_des` varchar(200) NOT NULL,
  `quiz_cat` int(11) NOT NULL,
  `quiz_sub_cat` int(11) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_name`, `quiz_des`, `quiz_cat`, `quiz_sub_cat`) VALUES
(1, 'HTML', 'HTML Test', 1, 1),
(2, 'HTML5', 'Latest HTML Updates and Structure', 1, 1),
(3, 'CSS', 'Basic Cascading Style sheets', 1, 3),
(4, 'Abcd', 'Acbd TEst', 15, 16),
(5, 'fbdf', 'fdsfs', 17, 17);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  PRIMARY KEY (`sub_cat_id`),
  UNIQUE KEY `subcategory` (`subcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`sub_cat_id`, `category_id`, `subcategory`) VALUES
(14, 53, '3wedr'),
(30, 1, 'HTML5'),
(31, 36, 'Radar'),
(32, 36, 'MobileDevices'),
(33, 16, 'Biology'),
(34, 16, 'Physics'),
(35, 16, 'Chemistry'),
(36, 36, 'Digital Technologyâ€Ž'),
(37, 36, 'Media technologyâ€Ž '),
(43, 38, ''),
(47, 38, '2ws'),
(48, 1, 'CSS'),
(49, 53, 'fgbd'),
(50, 1, 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `result`) VALUES
(1, 'Dhruvang Gajjar', 'dhruvang.gajjar@ekarsh.com', '10'),
(2, 'Jay Agrwal', 'jay.agrawal@ekarsh.com', '4'),
(3, 'abcd', 'abcd@gmail.com', '3'),
(4, 'Dhruvang ', 'abcd@gmail.com', '5'),
(6, 'monika', 'monika.gajera@ekarsh.com', '8'),
(7, 'rushita', 'rushita.savaliya@ekarsh.com', '8'),
(8, 'rushita', 'rushita.savaliya@ekarsh.com', '10'),
(12, 'nikul', 'nikul.patel@ekarsh.ocm', '5'),
(13, 'pras', 'prashant.patel@ekarsh.com', '3'),
(14, 'pras', 'prashant.patel@ekarsh.com', '3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
