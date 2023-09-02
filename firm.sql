-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 12:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firm`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descrive` text NOT NULL,
  `year` int(11) NOT NULL,
  `total_age` varchar(255) DEFAULT NULL,
  `a_image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `descrive`, `year`, `total_age`, `a_image`, `status`) VALUES
(10, 'RAHMAN FARM', 'Our pastures echo with the soothing melodies of gentle cattle, creating a serene haven. Join us in embracing the essence of rural life, where cows and the land intertwine in a harmonious dance. Experience sustainable agriculture, nurturing every glass of fresh milk with dedication and care. Let\'s embark on a journey where verdant landscapes and bovine companionship shape an authentic farm narrative.', 2023, '5 years', '953823_about-thumb-01.jpg', 1),
(12, 'JOURNEY WAS STARTED', 'Holstein Friesian cows now dominate the global dairy industry. The Holstein Friesian has the highest milk production of all in 1 breeds worldwide.', 2018, '5 years', '82352_portfolio-single-img-1-1.jpg', 0),
(13, '1ST REWARDS GOT', 'Holstein Friesian cows now dominate the global dairy industry. The Holstein Friesian has the highest milk production of all in 1 breeds worldwide.', 2019, '5 years', '989445_portfolio-single-img-2-1.jpg', 0),
(14, 'BEST FARM IN BANGLADESH', 'Holstein Friesian cows now dominate the global dairy industry. The Holstein Friesian has the highest milk production of all in 1 breeds worldwide.', 2020, '5 years', '82352_portfolio-single-img-1-1.jpg', 0),
(15, 'DESIGN REWARD 2021', 'Holstein Friesian cows now dominate the global dairy industry. The Holstein Friesian has the highest milk production of all in 1 breeds worldwide.', 2021, '5 years', '285717_portfolio-single-img-2-1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_desc` text NOT NULL,
  `is_parent` int(11) NOT NULL DEFAULT 1 COMMENT '1=Parent',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive',
  `cat_image` text DEFAULT NULL,
  `join_date` date NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`, `is_parent`, `status`, `cat_image`, `join_date`, `price`) VALUES
(20, 'Dairy Products', 'We are the largest meat producer in the country', 1, 1, '225657_food-cheese-milk-tomatoes-wallpaper-preview.jpg', '2023-08-11', 0),
(21, 'ghgh', '', 19, 1, '', '2023-08-14', 0),
(22, 'Pure Meat', 'We are the largest meat producer in the country', 1, 1, '326689_eiliv-aceron-YlAmh_X_SsE-unsplash.jpg', '2023-08-16', 0),
(23, 'Fresh Milk', 'We are the largest meat producer in the country', 1, 1, '879385_elizabeth-dunne-ccV4kUrSYIM-unsplash.jpg', '2023-08-16', 0),
(24, 'The Whole Cow Deal', 'We are the largest meat producer in the country', 1, 1, '635331_gilles-detot-gUebCivJHjc-unsplash.jpg', '2023-08-16', 0),
(25, 'gghg', 'hgh', 1, 0, '488110_discount_icon.png', '2023-08-17', 100),
(26, 'Goyal (বনগরু)', '', 22, 1, '318039_m1Wf3wROOs6Dt9F9XAZM69cynvWj0IbACfLJOGfH.jpg', '2023-08-19', 1200),
(27, 'Tomahawk', '', 22, 1, '609446_iKrhxDJfTtvBL8Df55Xxa8Sq2dmFYieNWzk3na4K.jpg', '2023-08-19', 1600),
(28, 'Rib Eye Steak', '', 22, 1, '674749_0kIqpykjHkZgTBq1jIIn3aCcoqdEZd0cgCFGFNKb.jpg', '2023-08-19', 800),
(29, 'Sirlion Steak', '', 22, 1, '107809_vhQrcQsZrbYmLHalKPDCBQvsVpbwEIsLASZhsd3y.jpg', '2023-08-19', 2000),
(30, 'T-bone-steak', '', 22, 1, '825558_CacdEvB6ViKUpiq3qOvZNIARS14rVr8boTXJAhbF.jpg', '2023-08-19', 1000),
(31, 'ghgh', 'ghjgh', 23, 0, '279333_Screenshot (9).png', '2023-08-30', 10),
(32, 'Shahi Chom Chom', '', 20, 1, '486172_kaouther-djouada-vGIOB4_a5RE-unsplash.jpg', '2023-09-02', 1500),
(33, 'Vanilla Cake', '', 20, 1, '13812_caitlyn-de-wild-jyeJVxCTUgI-unsplash.jpg', '2023-09-02', 2000),
(34, 'Sweets Cake', '', 20, 1, '486760_mia-cambriello-o3TP2wb0aTc-unsplash.jpg', '2023-09-02', 500),
(35, 'Candy Candy', '', 20, 1, '375827_yes-and-studio-XVYz_QeiEBw-unsplash.jpg', '2023-09-02', 500),
(36, 'Shondesh (কেক সন্দেশ)', '', 20, 1, '706365_wojtek-mich-ZGj0_IjgXdo-unsplash.jpg', '2023-09-02', 1500),
(37, 'Milk With Nuts Flavour', '', 23, 1, '137315_austin-wilcox-lAueE1Zf9tY-unsplash.jpg', '2023-09-02', 700),
(38, 'Fresh Organic Milk', '', 23, 1, '623512_jack-cole-4PhVsBICtJQ-unsplash.jpg', '2023-09-02', 80),
(39, 'Milk Shake', '', 23, 1, '716762_nikolai-chernichenko-S1HuosAnX-Y-unsplash.jpg', '2023-09-02', 600),
(40, 'Whole Cow', '', 24, 1, '288559_screenroad-FquDp5N1Gw0-unsplash.jpg', '2023-09-02', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_number` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive',
  `cmt_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_number`, `subject`, `comments`, `status`, `cmt_date`) VALUES
(1, 'shakil@gmail.com', '01731578788', 'Hello Brotheer', 'asasa', 1, '2023-09-02'),
(3, 'parvej@gmail.com', '014545458878', 'sdsd', 'as', 1, '2023-09-02'),
(4, 'shakil@gmail.com', '01731578788', 'sd', 'sd', 1, '2023-09-02'),
(5, 'shakil@gmail.com', '01731578788', 'sd', 'sd', 1, '2023-09-02'),
(6, 'shakil@gmail.com', '01731578788', 'yt', 't', 1, '2023-09-02'),
(7, 'shakil@gmail.com', '01731578788', 'we', 'we', 1, '2023-09-02'),
(8, 'sd@dsa', '02521', 'ewre', 'dfd', 1, '2023-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `farm_id` int(11) NOT NULL,
  `farm_name` varchar(255) NOT NULL,
  `farm_phone` varchar(255) NOT NULL,
  `farm_email` varchar(255) NOT NULL,
  `farm_address` text NOT NULL,
  `farm_about` text NOT NULL,
  `farm_image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive',
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`farm_id`, `farm_name`, `farm_phone`, `farm_email`, `farm_address`, `farm_about`, `farm_image`, `status`, `join_date`) VALUES
(2, 'Koiyo Miya', 'asas', 'teremiya@gmail.com', 'Uganda', 'Farmer re Respect koro Farmer re Respect koro Farmer re Respect koro Farmer re Respect koro', '910602_food-cheese-milk-tomatoes-wallpaper-preview.jpg', 0, '2023-08-11'),
(3, 'M.B. Khan', '0175454545', 'mb@gmail.com', 'Mirpur, Dhaka', 'As the steward of our cherished cow farm, I take immense pride in curating a haven where cows thrive and the land flourishes. Our dedication to sustainable practices and ethical care ensures that each bovine companion receives the utmost respect. Through every sunrise and sunset, I am committed to nurturing a bond between humans, cows, and the environment. Join me in celebrating the authenticity of farm life, where the heart of the land beats in harmony with the gentle lowing of our cherished herd.', '907876_89457841_2578202372501684_5228642823363887104_n.jpg', 1, '2023-08-17'),
(4, 'Ramjan Miya', '0121212125121', 'ramjan@gmail.com', 'Kurigram', 'As the steward of our cherished cow farm, I take immense pride in curating a haven where cows thrive and the land flourishes. Our dedication to sustainable practices and ethical care ensures that each bovine companion receives the utmost respect. Through every sunrise and sunset, I am committed to nurturing a bond between humans, cows, and the environment. Join me in celebrating the authenticity of farm life, where the heart of the land beats in harmony with the gentle lowing of our cherished herd.', '273553_ARMY-VET-MARVIN-FRINK62-e926ecdb9c50418484812a805cedac6b.webp', 1, '2023-08-17'),
(5, 'Parvej Hossain', '0175454545', 'parvej@gmail.com', 'Dhaka', 'As the steward of our cherished cow farm, I take immense pride in curating a haven where cows thrive and the land flourishes. Our dedication to sustainable practices and ethical care ensures that each bovine companion receives the utmost respect. Through every sunrise and sunset, I am committed to nurturing a bond between humans, cows, and the environment. Join me in celebrating the authenticity of farm life, where the heart of the land beats in harmony with the gentle lowing of our cherished herd.', '382962_Piet_feature.jpg.webp', 1, '2023-08-17'),
(6, 'Kamran Khan', '02121212121', 'kamran@gmail.com', 'Sylhet', 'As the steward of our cherished cow farm, I take immense pride in curating a haven where cows thrive and the land flourishes. Our dedication to sustainable practices and ethical care ensures that each bovine companion receives the utmost respect. Through every sunrise and sunset, I am committed to nurturing a bond between humans, cows, and the environment. Join me in celebrating the authenticity of farm life, where the heart of the land beats in harmony with the gentle lowing of our cherished herd.', '373080_cow-7339759_1920.jpg', 1, '2023-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `farm_overview`
--

CREATE TABLE `farm_overview` (
  `ov_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descrive` text NOT NULL,
  `ov_category` int(11) NOT NULL DEFAULT 1 COMMENT '1=Parent',
  `ov_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm_overview`
--

INSERT INTO `farm_overview` (`ov_id`, `title`, `descrive`, `ov_category`, `ov_image`, `status`) VALUES
(6, 'Shohan', 'as', 1, '958557_NM5X9A.webp', 0),
(8, 'Hello', 'asa', 1, '', 0),
(9, 'gelo', '', 8, '272625_food-cheese-milk-tomatoes-wallpaper-preview.jpg', 1),
(10, 'farm house look', 'A content farm is a company that employs large numbers.', 1, '302121_gallery-02.jpg', 1),
(11, 'farm house look', 'A content farm is a company that employs large numbers.', 1, '796863_gallery-01.jpg', 1),
(12, 'farm house look', 'A content farm is a company that employs large numbers.', 1, '758760_gallery-03.jpg', 1),
(13, 'farm house look', 'A content farm is a company that employs large numbers.', 1, '47029_gallery-04 (1).jpg', 1),
(14, 'farm house look', 'asasas', 10, '652046_sayan-ghosh-xU__XDCjnhQ-unsplash.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE `marketing` (
  `m_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descrive` text NOT NULL,
  `m_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive',
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marketing`
--

INSERT INTO `marketing` (`m_id`, `title`, `descrive`, `m_image`, `status`, `join_date`) VALUES
(2, 'Natural & Organic Products', 'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing.', '884695_image-8.jpg', 1, '2023-08-17'),
(3, 'Featured Recipe', 'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing.', '10039_image-9.jpg', 1, '2023-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `or_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `or_name` varchar(255) NOT NULL,
  `or_category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `or_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2 COMMENT '1=Active, 0=InActive, 2=Pending',
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`or_id`, `user_id`, `user_phone`, `or_name`, `or_category`, `price`, `or_image`, `status`, `join_date`) VALUES
(97, 'shakil@gmail.com', '01731578788', 'ghgh', '23', 10, '279333_Screenshot (9).png', 2, '2023-09-02'),
(98, 'shakil@gmail.com', '01731578788', 'Rib Eye Steak', '22', 800, '674749_0kIqpykjHkZgTBq1jIIn3aCcoqdEZd0cgCFGFNKb.jpg', 2, '2023-09-02'),
(101, 'shakil@gmail.com', '01731578788', 'Rib Eye Steak', '22', 800, '674749_0kIqpykjHkZgTBq1jIIn3aCcoqdEZd0cgCFGFNKb.jpg', 2, '2023-09-02'),
(103, 'shakil@gmail.com', '01731578788', 'Rib Eye Steak', '22', 800, '674749_0kIqpykjHkZgTBq1jIIn3aCcoqdEZd0cgCFGFNKb.jpg', 2, '2023-09-02'),
(104, 'sd@dsa', '02521', 'Sirlion Steak', '22', 2000, '107809_vhQrcQsZrbYmLHalKPDCBQvsVpbwEIsLASZhsd3y.jpg', 2, '2023-09-02'),
(105, 'shakil@gmail.com', '01731578788', 'Shondesh (কেক সন্দেশ)', '20', 1500, '706365_wojtek-mich-ZGj0_IjgXdo-unsplash.jpg', 2, '2023-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `owner_info`
--

CREATE TABLE `owner_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive',
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_info`
--

INSERT INTO `owner_info` (`id`, `name`, `email`, `phone`, `image`, `address`, `status`, `join_date`) VALUES
(1, 'Shohanur Rahman Shohan', 'shohan@gmail.com', '0173157878785', '943468_338887132_752083976569505_660661022731072129_n.jpg', 'Dhaka, Agargaon', 1, '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post_desc` text NOT NULL,
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `tags` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive, 3=Pending',
  `post_date` date NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `post_desc`, `image`, `category_id`, `author_id`, `tags`, `status`, `post_date`, `view_count`) VALUES
(36, 'Hey Guz', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkk  kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkk ', '9377972-news-2.jpg', 23, 5, 'hello', 0, '2023-08-14', 0),
(37, 'LI swimmer swept out to sea ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '1441822-07_milk_38_cow_milk_s_large.jpg', 23, 5, 'hello', 1, '2023-08-14', 5),
(38, 'LI swimmer swept out to sea ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '5332068-Cow_Grasslands_Grass_465174.jpg', 23, 5, 'hello', 1, '2023-08-14', 12),
(39, 'sd', 'sdsd', '8105409-Screenshot (21).png', 22, 5, 'sd', 0, '2023-08-30', 0),
(40, 'LI swimmer swept out to sea ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '9179708-Cow_Grasslands_Grass_465174.jpg', 22, 5, 'Newyork, usa, usa, tour, canada, travel', 1, '2023-09-01', 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_address` text DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 2 COMMENT '1=Admin, 2=User',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=InActive',
  `user_image` text DEFAULT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`, `role`, `status`, `user_image`, `join_date`) VALUES
(2, 'bainchud', 'parvej@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '014545458878', 'Dhaka, Bnhas', 2, 1, '41585_Cow_Grasslands_Grass_465174.jpg', '2023-08-08'),
(4, 'Shakil Miya', 'shakil@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01731578788', 'Faridpur', 2, 1, '74942_portfolio-single-img-1-1.jpg', '2023-08-08'),
(5, 'Shohanur Rahman Shohan', 'shohan@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01731578788', 'Agargaon, Dhaka', 1, 1, '633790_338887132_752083976569505_660661022731072129_n.jpg', '2023-08-13'),
(6, 'hahbjs', 'aa@gmail.aa', '8cb2237d0679ca88db6464eac60da96345513964', '0212121', 'sdsdsd', 2, 1, '800362_about-thumb-01.jpg', '2023-09-01'),
(7, 'sdsd', 'sd@dsa', '8cb2237d0679ca88db6464eac60da96345513964', '02521', 'sds', 2, 1, '347875-portfolio-single-img-1-1.jpg', '2023-09-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`farm_id`);

--
-- Indexes for table `farm_overview`
--
ALTER TABLE `farm_overview`
  ADD PRIMARY KEY (`ov_id`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `owner_info`
--
ALTER TABLE `owner_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `farm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `farm_overview`
--
ALTER TABLE `farm_overview`
  MODIFY `ov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `owner_info`
--
ALTER TABLE `owner_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
