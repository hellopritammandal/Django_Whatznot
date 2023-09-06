-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 03:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whatznotdjango`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add faq category', 7, 'add_faqcategory'),
(26, 'Can change faq category', 7, 'change_faqcategory'),
(27, 'Can delete faq category', 7, 'delete_faqcategory'),
(28, 'Can view faq category', 7, 'view_faqcategory'),
(29, 'Can add faq', 8, 'add_faq'),
(30, 'Can change faq', 8, 'change_faq'),
(31, 'Can delete faq', 8, 'delete_faq'),
(32, 'Can view faq', 8, 'view_faq'),
(33, 'Can add review', 9, 'add_review'),
(34, 'Can change review', 9, 'change_review'),
(35, 'Can delete review', 9, 'delete_review'),
(36, 'Can view review', 9, 'view_review'),
(37, 'Can add portfolio category', 10, 'add_portfoliocategory'),
(38, 'Can change portfolio category', 10, 'change_portfoliocategory'),
(39, 'Can delete portfolio category', 10, 'delete_portfoliocategory'),
(40, 'Can view portfolio category', 10, 'view_portfoliocategory'),
(41, 'Can add portfolio', 11, 'add_portfolio'),
(42, 'Can change portfolio', 11, 'change_portfolio'),
(43, 'Can delete portfolio', 11, 'delete_portfolio'),
(44, 'Can view portfolio', 11, 'view_portfolio'),
(45, 'Can add service location', 12, 'add_servicelocation'),
(46, 'Can change service location', 12, 'change_servicelocation'),
(47, 'Can delete service location', 12, 'delete_servicelocation'),
(48, 'Can view service location', 12, 'view_servicelocation'),
(49, 'Can add blog', 13, 'add_blog'),
(50, 'Can change blog', 13, 'change_blog'),
(51, 'Can delete blog', 13, 'delete_blog'),
(52, 'Can view blog', 13, 'view_blog'),
(53, 'Can add blog category', 14, 'add_blogcategory'),
(54, 'Can change blog category', 14, 'change_blogcategory'),
(55, 'Can delete blog category', 14, 'delete_blogcategory'),
(56, 'Can view blog category', 14, 'view_blogcategory'),
(57, 'Can add blog tag', 15, 'add_blogtag'),
(58, 'Can change blog tag', 15, 'change_blogtag'),
(59, 'Can delete blog tag', 15, 'delete_blogtag'),
(60, 'Can view blog tag', 15, 'view_blogtag'),
(61, 'Can add comment', 16, 'add_comment'),
(62, 'Can change comment', 16, 'change_comment'),
(63, 'Can delete comment', 16, 'delete_comment'),
(64, 'Can view comment', 16, 'view_comment'),
(65, 'Can add contact form submission', 17, 'add_contactformsubmission'),
(66, 'Can change contact form submission', 17, 'change_contactformsubmission'),
(67, 'Can delete contact form submission', 17, 'delete_contactformsubmission'),
(68, 'Can view contact form submission', 17, 'view_contactformsubmission'),
(69, 'Can add partner', 18, 'add_partner'),
(70, 'Can change partner', 18, 'change_partner'),
(71, 'Can delete partner', 18, 'delete_partner'),
(72, 'Can view partner', 18, 'view_partner'),
(73, 'Can add client', 19, 'add_client'),
(74, 'Can change client', 19, 'change_client'),
(75, 'Can delete client', 19, 'delete_client'),
(76, 'Can view client', 19, 'view_client'),
(77, 'Can add team member', 20, 'add_teammember'),
(78, 'Can change team member', 20, 'change_teammember'),
(79, 'Can delete team member', 20, 'delete_teammember'),
(80, 'Can view team member', 20, 'view_teammember');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$216a3Tv90aasfYdOmNdO4Q$rSBkGX5wghA0BBBqTEi2ZB6XYoWKfhUdQpDWzhE5Bqo=', '2023-09-03 10:50:07.588945', 1, 'pritam', '', '', '', 1, 1, '2023-09-02 23:50:25.938493');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_client`
--

CREATE TABLE `backend_client` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_faq`
--

CREATE TABLE `backend_faq` (
  `id` bigint(20) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_faq`
--

INSERT INTO `backend_faq` (`id`, `question`, `answer`, `category_id`) VALUES
(2, 'what is your name', 'my name is pritam mandal', 2),
(3, 'where do you live ?', 'i live west bengal INDIA', 2),
(4, 'your mobile number ?', 'my mobile number is 9735151074', 3);

-- --------------------------------------------------------

--
-- Table structure for table `backend_faqcategory`
--

CREATE TABLE `backend_faqcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_faqcategory`
--

INSERT INTO `backend_faqcategory` (`id`, `name`) VALUES
(2, 'know'),
(3, 'more');

-- --------------------------------------------------------

--
-- Table structure for table `backend_portfolio`
--

CREATE TABLE `backend_portfolio` (
  `id` bigint(20) NOT NULL,
  `portfolio_name` varchar(100) NOT NULL,
  `portfolio_feature_image` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `cover_image` varchar(100) NOT NULL,
  `overview` longtext NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `reviews_id` bigint(20) NOT NULL,
  `solution` longtext NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_portfolio`
--

INSERT INTO `backend_portfolio` (`id`, `portfolio_name`, `portfolio_feature_image`, `client_name`, `team`, `service_name`, `date`, `cover_image`, `overview`, `image1`, `image2`, `image3`, `slug`, `reviews_id`, `solution`, `is_featured`) VALUES
(4, 'sdcsd', 'portfolio/images/369190541_1559926034837783_3962908685908137224_n_sARmweu.jpg', 'fdsafasd', 'asdasd', 'asdasdsa', '2023-09-03', 'portfolio/cover_images/Pritam_Mandal.jpeg', 'dasdasdas', 'portfolio/images/whatznot_technology_Ohpq5TA.png', 'portfolio/images/whatznot.png', 'portfolio/images/advine.png', 'sdcsd', 2, 'dasdasdasd', 1),
(5, 'dadasdasdasdasd', 'portfolio/images/368219886_303588658891546_8560416203125596915_n_8ToDi6a.jpg', 'adasdas', 'dasdas', 'dasdas', '2023-09-03', 'portfolio/cover_images/spotlight.png', 'asdasdas', 'portfolio/images/teamwork_Z5LiCzZ.png', 'portfolio/images/Paper_printing_mobile_320x550.png', 'portfolio/images/whatznot_Wz4KERO.png', 'das', 2, 'dasdas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_portfoliocategory`
--

CREATE TABLE `backend_portfoliocategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_portfoliocategory`
--

INSERT INTO `backend_portfoliocategory` (`id`, `name`) VALUES
(4, 'Website Design'),
(5, 'Website Development'),
(6, 'Andorid'),
(7, 'IOS'),
(8, 'UI & UX'),
(9, 'Wordpress');

-- --------------------------------------------------------

--
-- Table structure for table `backend_portfolio_category`
--

CREATE TABLE `backend_portfolio_category` (
  `id` bigint(20) NOT NULL,
  `portfolio_id` bigint(20) NOT NULL,
  `portfoliocategory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_portfolio_category`
--

INSERT INTO `backend_portfolio_category` (`id`, `portfolio_id`, `portfoliocategory_id`) VALUES
(3, 4, 4),
(7, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `backend_review`
--

CREATE TABLE `backend_review` (
  `id` bigint(20) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_image` varchar(100) DEFAULT NULL,
  `review_date` date NOT NULL,
  `review_details` longtext NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `platform_name` varchar(100) DEFAULT NULL,
  `has_features` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_review`
--

INSERT INTO `backend_review` (`id`, `author_name`, `author_image`, `review_date`, `review_details`, `project_name`, `platform_name`, `has_features`) VALUES
(2, 'adasdasd', 'review_images/366934587_627445672933432_2346618277635999268_n.jpg', '2023-09-03', 'asdasdas', 'asdsadas', 'google', 1),
(3, 'fsdfdsfds', 'review_images/membrane.png', '2023-09-03', 'fdsfds', 'fdsfsd', 'fsdfds', 1),
(4, 'anamika', 'review_images/Pritam_Mandal.jpeg', '2023-09-04', 'dasdasd', 'asdasd', 'dasdas', 1),
(5, 'Avi', 'review_images/teamwork.png', '2023-09-04', 'dasdasd', 'asdas', 'dasdas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_servicelocation`
--

CREATE TABLE `backend_servicelocation` (
  `id` bigint(20) NOT NULL,
  `areaname` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `pin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_teammember`
--

CREATE TABLE `backend_teammember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backend_teammember`
--

INSERT INTO `backend_teammember` (`id`, `name`, `designation`, `image`) VALUES
(1, 'pritam', 'CEO', 'team_members/369190541_1559926034837783_3962908685908137224_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog`
--

CREATE TABLE `blog_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `blog_feature_image` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `published_date` datetime(6) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blog`
--

INSERT INTO `blog_blog` (`id`, `title`, `blog_feature_image`, `content`, `slug`, `published_date`, `is_published`, `author_id`, `category_id`, `views`) VALUES
(1, 'gfgfsd', 'portfolio/images/Pritam_Mandal.jpeg', 'sgsdfgsdg', 'gsdgsd', '2023-09-03 16:04:38.325791', 1, 1, 1, 65),
(2, 'sdasdasdas', 'portfolio/images/spotlight.png', 'dasdasd', 'dasdas', '2023-09-03 19:13:25.875290', 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcategory`
--

CREATE TABLE `blog_blogcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogcategory`
--

INSERT INTO `blog_blogcategory` (`id`, `name`) VALUES
(1, 'a'),
(2, 'c'),
(3, 'fs'),
(4, 'sfs');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogtag`
--

CREATE TABLE `blog_blogtag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogtag`
--

INSERT INTO `blog_blogtag` (`id`, `name`) VALUES
(1, 'cx'),
(2, 'xv'),
(3, 'fg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_tags`
--

CREATE TABLE `blog_blog_tags` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `blogtag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blog_tags`
--

INSERT INTO `blog_blog_tags` (`id`, `blog_id`, `blogtag_id`) VALUES
(1, 1, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` bigint(20) NOT NULL,
  `user` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `blog_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `user`, `content`, `created_date`, `is_approved`, `blog_id`) VALUES
(1, 'anamika', 'good', '2023-09-03 18:49:04.247922', 1, 1),
(2, 'avi', 'fasoifhdiao', '2023-09-03 18:49:14.550153', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_contactformsubmission`
--

CREATE TABLE `contact_contactformsubmission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `project_summary` longtext NOT NULL,
  `budget` varchar(20) NOT NULL,
  `submission_date` datetime(6) NOT NULL,
  `newsletter_subscription` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_contactformsubmission`
--

INSERT INTO `contact_contactformsubmission` (`id`, `name`, `email`, `phone_number`, `project_summary`, `budget`, `submission_date`, `newsletter_subscription`) VALUES
(11, 'pritam', 'man@dal.com', '9784125', 'iohoopihaohsoa', '100-200', '2023-09-03 22:36:44.857238', 0),
(12, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:02:58.028114', 0),
(13, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:04:05.302046', 0),
(14, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:04:21.964927', 0),
(15, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:04:52.086197', 0),
(16, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:05:17.207219', 0),
(17, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:05:46.587531', 0),
(18, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:06:16.478010', 0),
(19, 'dsdsds', 'sa@adas.com', '665468864', 'sadasdasdas', 'NoIdea', '2023-09-03 23:06:40.582564', 0),
(20, 'sasa', 'adohaigd@a.com', 'sasa', 'asa', '100-200', '2023-09-03 23:08:15.771021', 0),
(21, 'sa', 'a@as.com', 'asa', 'asa', '100-200', '2023-09-03 23:09:42.608325', 0),
(22, 'sa', 'a@as.com', 'asa', 'asa', '100-200', '2023-09-03 23:09:58.740876', 0),
(23, 'sa', 'aa@as.com', 'asaa', 'asaas', '200-500', '2023-09-03 23:10:24.780453', 0),
(24, 'iuygi', 'oijh@gmail.com', '4', 'uoih', '100-200', '2023-09-03 23:11:52.070780', 0),
(25, 'iuygi', 'oijh@gmail.com', '4', 'uoihsad', '200-500', '2023-09-03 23:12:24.117838', 0),
(26, 'asdasd', 'sadas@fdasfd.com', 'adasdsa', 'dasdsad', '100-200', '2023-09-03 23:17:58.397172', 0),
(27, 'asdasd', 'sadas@fdasfd.com', 'adasdsa', 'dasdsadsadas', '100-200', '2023-09-03 23:29:55.588913', 0),
(28, 'asdasd', 'sadas@fdasfd.com', 'adasdsa', 'dasdsadsadas', '100-200', '2023-09-03 23:30:00.352443', 0),
(29, 'dasdasd', 'as@safsd.com', 'asdasdasd', 'dasdasd', '100-200', '2023-09-03 23:33:56.732598', 0),
(30, 'pritam', 'pmihub@gmail.com', '5454154', 'iugi', '500-1000', '2023-09-04 00:40:27.737555', 0),
(31, 'pritam', 'pmihub@gmail.com', '5454154', 'iugi', '500-1000', '2023-09-04 00:41:10.463311', 0),
(32, 'asdsa', 'dasdas@gmail.com', 'dsadasd', 'sadsa', '100-200', '2023-09-04 09:08:04.819094', 0),
(33, 's', 's@s.comas', 'as', 'as', '200-500', '2023-09-04 09:10:42.139120', 0),
(34, 'q', 'q@dfs.com', 'dasd', 'dasdsad', '100-200', '2023-09-04 09:16:59.302552', 0),
(35, 'dd', 'f@d.com', 'd', 'd', '100-200', '2023-09-04 09:17:33.306357', 0),
(36, 'rr', 'rr@rr.in', 'rr', 'rr', '100-200', '2023-09-04 09:18:03.684599', 0),
(37, 'fa', 'fa@f.com', 'f', 'f', '100-200', '2023-09-04 09:19:04.283403', 0),
(38, 'dasda', 'dasda@fdfsd.io', 'adasdada', 'dasd', '100-200', '2023-09-04 09:36:19.701716', 0),
(39, 'ewqd', 'dasd@sdff.co', 'fdsfdsfdfd', 'fsdfsd', '100-200', '2023-09-04 09:38:48.185607', 0),
(40, 'adsadas', 'dasdas@g.com', 'dsadasdsa', 'dsadas', '100-200', '2023-09-04 09:39:13.167385', 0),
(41, 'as', 'asdasd@sdfds.in', 'fdsfsdf', 'dsfsdfds', '100-200', '2023-09-04 09:39:40.247432', 0),
(42, 'aaaaaadascfsd', 'scsdc@fgsdlkn.com', 'csdc', 'saas', '100-200', '2023-09-04 09:42:13.561646', 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-02 23:51:19.742018', '1', 'a', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-09-02 23:51:25.337988', '1', 'sa', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-09-02 23:51:42.534462', '1', 'Review by mahua - sadasd', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-09-02 23:52:13.427364', '1', 'Review by mahua - sadasd', 3, '', 9, 1),
(5, '2023-09-02 23:52:21.213971', '1', 'sa', 3, '', 8, 1),
(6, '2023-09-02 23:52:26.311057', '1', 'a', 3, '', 7, 1),
(7, '2023-09-03 00:26:47.438910', '1', 'a', 1, '[{\"added\": {}}]', 18, 1),
(8, '2023-09-03 00:27:03.493186', '1', 'a', 3, '', 18, 1),
(9, '2023-09-03 00:27:38.833147', '2', 'asa', 1, '[{\"added\": {}}]', 18, 1),
(10, '2023-09-03 00:27:43.471699', '2', 'asa', 3, '', 18, 1),
(11, '2023-09-03 00:28:56.967763', '3', 'sfgd', 1, '[{\"added\": {}}]', 18, 1),
(12, '2023-09-03 00:29:05.520957', '3', 'sfgd', 3, '', 18, 1),
(13, '2023-09-03 11:13:36.909458', '1', 'all', 1, '[{\"added\": {}}]', 10, 1),
(14, '2023-09-03 11:13:41.413790', '2', 'php', 1, '[{\"added\": {}}]', 10, 1),
(15, '2023-09-03 11:15:19.203642', '2', 'Review by adasdasd - asdsadas', 1, '[{\"added\": {}}]', 9, 1),
(16, '2023-09-03 11:16:07.740590', '2', 'a', 1, '[{\"added\": {}}]', 11, 1),
(17, '2023-09-03 12:17:42.069795', '3', 'sa', 1, '[{\"added\": {}}]', 10, 1),
(18, '2023-09-03 13:19:28.114106', '3', 'pritam', 1, '[{\"added\": {}}]', 11, 1),
(19, '2023-09-03 13:32:24.742571', '1', 'all', 3, '', 10, 1),
(20, '2023-09-03 13:32:39.388962', '3', 'sa', 3, '', 10, 1),
(21, '2023-09-03 13:32:45.397352', '2', 'php', 3, '', 10, 1),
(22, '2023-09-03 13:32:53.547101', '4', 'Website Design', 1, '[{\"added\": {}}]', 10, 1),
(23, '2023-09-03 13:32:59.473558', '5', 'Website Development', 1, '[{\"added\": {}}]', 10, 1),
(24, '2023-09-03 13:33:06.977725', '6', 'Andorid', 1, '[{\"added\": {}}]', 10, 1),
(25, '2023-09-03 13:33:09.865791', '7', 'IOS', 1, '[{\"added\": {}}]', 10, 1),
(26, '2023-09-03 13:33:18.466754', '8', 'UI & UX', 1, '[{\"added\": {}}]', 10, 1),
(27, '2023-09-03 13:33:30.466402', '9', 'Wordpress', 1, '[{\"added\": {}}]', 10, 1),
(28, '2023-09-03 13:34:37.729707', '1', 'a', 1, '[{\"added\": {}}]', 14, 1),
(29, '2023-09-03 13:34:39.274009', '2', 'c', 1, '[{\"added\": {}}]', 14, 1),
(30, '2023-09-03 14:06:51.504905', '4', 'sdcsd', 1, '[{\"added\": {}}]', 11, 1),
(31, '2023-09-03 14:07:18.513061', '5', 'dadasdasdasdasd', 1, '[{\"added\": {}}]', 11, 1),
(32, '2023-09-03 14:07:26.144790', '4', 'sdcsd', 2, '[]', 11, 1),
(33, '2023-09-03 14:44:00.349187', '5', 'dadasdasdasdasd', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(34, '2023-09-03 14:44:06.048580', '4', 'sdcsd', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(35, '2023-09-03 14:44:56.632709', '4', 'sdcsd', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(36, '2023-09-03 14:45:01.568574', '5', 'dadasdasdasdasd', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(37, '2023-09-03 14:51:47.747661', '3', 'Review by fsdfdsfds - fdsfsd', 1, '[{\"added\": {}}]', 9, 1),
(38, '2023-09-03 16:04:17.930680', '1', 'cx', 1, '[{\"added\": {}}]', 15, 1),
(39, '2023-09-03 16:04:19.214058', '2', 'xv', 1, '[{\"added\": {}}]', 15, 1),
(40, '2023-09-03 16:04:20.147640', '3', 'fg', 1, '[{\"added\": {}}]', 15, 1),
(41, '2023-09-03 16:04:38.329788', '1', 'gfgfsd', 1, '[{\"added\": {}}]', 13, 1),
(42, '2023-09-03 17:40:16.475667', '2', 'c', 2, '[]', 14, 1),
(43, '2023-09-03 17:41:50.532538', '3', 'fs', 1, '[{\"added\": {}}]', 14, 1),
(44, '2023-09-03 17:41:52.728896', '4', 'sfs', 1, '[{\"added\": {}}]', 14, 1),
(45, '2023-09-03 18:41:03.298929', '1', 'gfgfsd', 2, '[]', 13, 1),
(46, '2023-09-03 18:41:41.514072', '1', 'gfgfsd', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 13, 1),
(47, '2023-09-03 18:49:04.248921', '1', 'Comment by anamika on gfgfsd', 1, '[{\"added\": {}}]', 16, 1),
(48, '2023-09-03 18:49:14.551464', '2', 'Comment by avi on gfgfsd', 1, '[{\"added\": {}}]', 16, 1),
(49, '2023-09-03 19:13:25.883856', '2', 'sdasdasdas', 1, '[{\"added\": {}}]', 13, 1),
(50, '2023-09-03 22:36:11.461132', '10', 'aaaaaasdasd', 3, '', 17, 1),
(51, '2023-09-03 22:36:11.464901', '9', 'asdasd', 3, '', 17, 1),
(52, '2023-09-03 22:36:11.469817', '8', 'asdasd', 3, '', 17, 1),
(53, '2023-09-03 22:36:11.471894', '7', 'dasd', 3, '', 17, 1),
(54, '2023-09-03 22:36:11.474894', '6', 'dasd', 3, '', 17, 1),
(55, '2023-09-03 22:36:11.476894', '5', 'asdasd', 3, '', 17, 1),
(56, '2023-09-03 22:36:11.478894', '4', 'a', 3, '', 17, 1),
(57, '2023-09-03 22:36:11.481951', '3', 'a', 3, '', 17, 1),
(58, '2023-09-03 22:36:11.487991', '2', 'a', 3, '', 17, 1),
(59, '2023-09-03 22:36:11.489966', '1', 'dsfsdfdsf', 3, '', 17, 1),
(60, '2023-09-03 22:51:15.315239', '4', 'sdcsd', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 11, 1),
(61, '2023-09-03 22:55:36.426357', '2', 'know', 1, '[{\"added\": {}}]', 7, 1),
(62, '2023-09-03 22:55:40.434111', '3', 'more', 1, '[{\"added\": {}}]', 7, 1),
(63, '2023-09-03 22:55:59.591788', '2', 'what is your name', 1, '[{\"added\": {}}]', 8, 1),
(64, '2023-09-03 22:56:29.913933', '3', 'where do you live ?', 1, '[{\"added\": {}}]', 8, 1),
(65, '2023-09-03 22:57:00.679094', '4', 'your mobile number ?', 1, '[{\"added\": {}}]', 8, 1),
(66, '2023-09-04 09:54:13.902607', '1', 'pritam', 1, '[{\"added\": {}}]', 20, 1),
(67, '2023-09-04 10:09:26.830060', '4', 'Review by anamika - asdasd', 1, '[{\"added\": {}}]', 9, 1),
(68, '2023-09-04 10:09:36.240349', '5', 'Review by Avi - asdas', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(19, 'backend', 'client'),
(8, 'backend', 'faq'),
(7, 'backend', 'faqcategory'),
(18, 'backend', 'partner'),
(11, 'backend', 'portfolio'),
(10, 'backend', 'portfoliocategory'),
(9, 'backend', 'review'),
(12, 'backend', 'servicelocation'),
(20, 'backend', 'teammember'),
(13, 'blog', 'blog'),
(14, 'blog', 'blogcategory'),
(15, 'blog', 'blogtag'),
(16, 'blog', 'comment'),
(17, 'contact', 'contactformsubmission'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-02 23:49:20.109587'),
(2, 'auth', '0001_initial', '2023-09-02 23:49:20.690709'),
(3, 'admin', '0001_initial', '2023-09-02 23:49:20.815644'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-02 23:49:20.831260'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-02 23:49:20.831260'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-02 23:49:20.893791'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-02 23:49:20.940662'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-02 23:49:20.956259'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-02 23:49:20.971885'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-02 23:49:21.006193'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-02 23:49:21.006193'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-02 23:49:21.006193'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-02 23:49:21.037439'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-02 23:49:21.053035'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-02 23:49:21.068692'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-02 23:49:21.068692'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-02 23:49:21.099910'),
(18, 'backend', '0001_initial', '2023-09-02 23:49:21.162442'),
(19, 'backend', '0002_review', '2023-09-02 23:49:21.178037'),
(20, 'backend', '0003_remove_review_platform_icon_review_platform_image', '2023-09-02 23:49:21.209316'),
(21, 'backend', '0004_remove_review_platform_image_review_platform_name', '2023-09-02 23:49:21.224944'),
(22, 'backend', '0005_review_has_features', '2023-09-02 23:49:21.256189'),
(23, 'backend', '0006_multipleimage_portfolio', '2023-09-02 23:49:21.642609'),
(24, 'backend', '0007_contactsubmission_remove_portfolio_multiple_images_and_more', '2023-09-02 23:49:21.845737'),
(25, 'backend', '0008_delete_contactsubmission', '2023-09-02 23:49:21.861332'),
(26, 'backend', '0009_contactformsubmission', '2023-09-02 23:49:21.876957'),
(27, 'backend', '0010_rename_timestamp_contactformsubmission_submission_date_and_more', '2023-09-02 23:49:22.036358'),
(28, 'backend', '0011_portfoliocategory_alter_contactformsubmission_email_and_more', '2023-09-02 23:49:22.192598'),
(29, 'backend', '0012_blog_blogcategory_blogtag_comment_blog_category_and_more', '2023-09-02 23:49:22.788885'),
(30, 'backend', '0013_alter_comment_user', '2023-09-02 23:49:23.057191'),
(31, 'backend', '0014_area', '2023-09-02 23:49:23.088431'),
(32, 'backend', '0015_rename_area_servicelocation', '2023-09-02 23:49:23.119683'),
(33, 'backend', '0016_remove_comment_blog_delete_blog_delete_blogcategory_and_more', '2023-09-02 23:49:23.338407'),
(34, 'backend', '0017_delete_contactformsubmission', '2023-09-02 23:49:23.338407'),
(35, 'blog', '0001_initial', '2023-09-02 23:49:23.700432'),
(36, 'contact', '0001_initial', '2023-09-02 23:49:23.716082'),
(37, 'sessions', '0001_initial', '2023-09-02 23:49:23.856680'),
(38, 'backend', '0018_partner', '2023-09-03 00:26:22.924989'),
(39, 'backend', '0019_remove_portfolio_category_portfolio_category', '2023-09-03 11:16:00.701253'),
(40, 'backend', '0020_portfolio_solution', '2023-09-03 14:06:15.696515'),
(41, 'blog', '0002_blog_views', '2023-09-03 18:33:23.791340'),
(42, 'contact', '0002_alter_contactformsubmission_budget_and_more', '2023-09-03 20:33:44.168233'),
(43, 'contact', '0003_alter_contactformsubmission_options_and_more', '2023-09-03 21:56:37.922367'),
(44, 'backend', '0021_client_delete_partner', '2023-09-03 22:34:17.947659'),
(45, 'contact', '0004_alter_contactformsubmission_budget', '2023-09-03 22:34:17.947659'),
(46, 'backend', '0022_portfolio_is_featured', '2023-09-03 22:49:51.187482'),
(47, 'backend', '0023_teammember', '2023-09-04 09:53:55.766720');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ko3wu249buoieg6t7mmrjjkclgapaq3w', '.eJxVjEEOwiAQRe_C2pABCoJL9z0DYZipVA0kpV0Z765NutDtf-_9l4hpW0vcOi9xJnERSpx-N0z5wXUHdE_11mRudV1mlLsiD9rl2Iif18P9Oyipl29tPE8mGGCy2hkHxmvCAN4NHvzZZgZlM6HlARlgQkpgNeoclEdWaMT7A8XMN5E:1qcjkg:73dIWSxJpzg3sYwqVAiCCRkQ8tjriNEckcD-XF-9GTM', '2023-09-17 09:50:42.946191'),
('odf6htcjgz8qf8aeh6gv6pd4ko6jtkfx', '.eJxVjEEOwiAQRe_C2pABCoJL9z0DYZipVA0kpV0Z765NutDtf-_9l4hpW0vcOi9xJnERSpx-N0z5wXUHdE_11mRudV1mlLsiD9rl2Iif18P9Oyipl29tPE8mGGCy2hkHxmvCAN4NHvzZZgZlM6HlARlgQkpgNeoclEdWaMT7A8XMN5E:1qcaNz:cpp0FFDi54DiCati5p-hWWxKlwejPIb47LN2gteVp4s', '2023-09-16 23:50:39.758696'),
('wy1b9ndnnivafeoy14esd7ozf0orqamw', '.eJxVjEEOwiAQRe_C2pABCoJL9z0DYZipVA0kpV0Z765NutDtf-_9l4hpW0vcOi9xJnERSpx-N0z5wXUHdE_11mRudV1mlLsiD9rl2Iif18P9Oyipl29tPE8mGGCy2hkHxmvCAN4NHvzZZgZlM6HlARlgQkpgNeoclEdWaMT7A8XMN5E:1qckgB:NKMNyv7eeibMn3A632IX41I-41ugiR1Tmufk9Uw0weE', '2023-09-17 10:50:07.592444');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `backend_client`
--
ALTER TABLE `backend_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_faq`
--
ALTER TABLE `backend_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_faq_category_id_9f345e8e_fk_backend_faqcategory_id` (`category_id`);

--
-- Indexes for table `backend_faqcategory`
--
ALTER TABLE `backend_faqcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_portfolio`
--
ALTER TABLE `backend_portfolio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `backend_portfolio_reviews_id_d85b6191_fk_backend_review_id` (`reviews_id`);

--
-- Indexes for table `backend_portfoliocategory`
--
ALTER TABLE `backend_portfoliocategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_portfolio_category`
--
ALTER TABLE `backend_portfolio_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backend_portfolio_catego_portfolio_id_portfolioca_63275174_uniq` (`portfolio_id`,`portfoliocategory_id`),
  ADD KEY `backend_portfolio_ca_portfoliocategory_id_70cddf7d_fk_backend_p` (`portfoliocategory_id`);

--
-- Indexes for table `backend_review`
--
ALTER TABLE `backend_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_servicelocation`
--
ALTER TABLE `backend_servicelocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_teammember`
--
ALTER TABLE `backend_teammember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blog`
--
ALTER TABLE `blog_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blog_blog_category_id_c34d5f94_fk_blog_blogcategory_id` (`category_id`),
  ADD KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blogtag`
--
ALTER TABLE `blog_blogtag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_blog_tags_blog_id_blogtag_id_4d8728be_uniq` (`blog_id`,`blogtag_id`),
  ADD KEY `blog_blog_tags_blogtag_id_caf07060_fk_blog_blogtag_id` (`blogtag_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comment_blog_id_c664fb0d_fk_blog_blog_id` (`blog_id`);

--
-- Indexes for table `contact_contactformsubmission`
--
ALTER TABLE `contact_contactformsubmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_client`
--
ALTER TABLE `backend_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_faq`
--
ALTER TABLE `backend_faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `backend_faqcategory`
--
ALTER TABLE `backend_faqcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backend_portfolio`
--
ALTER TABLE `backend_portfolio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `backend_portfoliocategory`
--
ALTER TABLE `backend_portfoliocategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `backend_portfolio_category`
--
ALTER TABLE `backend_portfolio_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `backend_review`
--
ALTER TABLE `backend_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `backend_servicelocation`
--
ALTER TABLE `backend_servicelocation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_teammember`
--
ALTER TABLE `backend_teammember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_blog`
--
ALTER TABLE `blog_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_blogtag`
--
ALTER TABLE `blog_blogtag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_contactformsubmission`
--
ALTER TABLE `contact_contactformsubmission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `backend_faq`
--
ALTER TABLE `backend_faq`
  ADD CONSTRAINT `backend_faq_category_id_9f345e8e_fk_backend_faqcategory_id` FOREIGN KEY (`category_id`) REFERENCES `backend_faqcategory` (`id`);

--
-- Constraints for table `backend_portfolio`
--
ALTER TABLE `backend_portfolio`
  ADD CONSTRAINT `backend_portfolio_reviews_id_d85b6191_fk_backend_review_id` FOREIGN KEY (`reviews_id`) REFERENCES `backend_review` (`id`);

--
-- Constraints for table `backend_portfolio_category`
--
ALTER TABLE `backend_portfolio_category`
  ADD CONSTRAINT `backend_portfolio_ca_portfolio_id_8b770c84_fk_backend_p` FOREIGN KEY (`portfolio_id`) REFERENCES `backend_portfolio` (`id`),
  ADD CONSTRAINT `backend_portfolio_ca_portfoliocategory_id_70cddf7d_fk_backend_p` FOREIGN KEY (`portfoliocategory_id`) REFERENCES `backend_portfoliocategory` (`id`);

--
-- Constraints for table `blog_blog`
--
ALTER TABLE `blog_blog`
  ADD CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `blog_blog_category_id_c34d5f94_fk_blog_blogcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_blogcategory` (`id`);

--
-- Constraints for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  ADD CONSTRAINT `blog_blog_tags_blog_id_e4cd5f6a_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`),
  ADD CONSTRAINT `blog_blog_tags_blogtag_id_caf07060_fk_blog_blogtag_id` FOREIGN KEY (`blogtag_id`) REFERENCES `blog_blogtag` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_blog_id_c664fb0d_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
