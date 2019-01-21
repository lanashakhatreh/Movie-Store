-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2019 at 12:32 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `ip_add`, `user_id`, `qty`) VALUES
(16, 0, '::1', -1, 1),
(27, 60, '::1', 1, 1),
(28, 3, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(100) NOT NULL,
  `movie_title` text NOT NULL,
  `movie_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_title`, `movie_name`) VALUES
(1, 'Drama', NULL),
(2, 'Classic', NULL),
(3, 'Action', NULL),
(4, 'Romance', NULL),
(5, 'Adventure', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `series_id` int(100) DEFAULT NULL,
  `movie_id` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `series_id`, `movie_id`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, NULL, 'Poster', 2, 'Poster', 'friends_poster.jpg', 'friends_poster'),
(2, 1, NULL, 'Mug', 5, 'Mug', 'mug_friends.jpg', 'mug_friends'),
(3, 1, NULL, 'shirt', 7, 'shirt', 'shirt_friends.jpg', 'shirt'),
(4, 1, NULL, 'Mobile Cover ', 5, 'Mobile Cover ', 'cover phone_friends.jpg', 'cover phone_friends'),
(5, 1, NULL, 'Medal', 4, 'Medal', 'medal_friends.png', 'medal_friends'),
(6, 1, NULL, 'Jewelry', 5, 'Jewelry', 'jewelry_friends.jpg', 'jewelry_friends'),
(10, 2, NULL, 'Poster', 2, 'Poster', 'game of thrones_poster.jpg', 'game of thrones poster'),
(11, 2, NULL, 'Mug', 5, 'Mug', 'game of thrones_mug.jpg', 'game of thrones mug'),
(12, 2, NULL, 'Shirt', 7, 'Shirt', 'game of thrones_shirt.jpg', 'game of thrones shirt'),
(13, 2, NULL, 'Mobile Cover', 6, 'Mobile Cover', 'game of thrones_cover phone.jpg', 'game of thrones_cover phone'),
(14, 2, NULL, 'Medal', 4, 'Medal', 'game of thrones_medal.jpg', 'game of thrones_medal'),
(15, 2, NULL, 'Jewelry', 5, 'Jewelry', 'game of thrones_jewlery.jpg', 'game of thrones_jewelry'),
(16, 3, NULL, 'Poster', 2, 'Poster', 'bb_poster.jpg', 'poster'),
(17, 3, NULL, 'Mug', 5, 'Mug', 'bb_mug.jpg', 'mug'),
(19, 3, NULL, 'Mobile Cover', 5, 'Mobile Cover', 'bb_cover phone.jpg', 'Mobile Cover'),
(20, 3, NULL, 'Shirt', 7, 'Shirt', 'bb_shirt.JPG', 'shirt'),
(22, 4, NULL, 'Poster', 2, 'Poster', 'o_poster.jpg', 'poster'),
(23, 4, NULL, 'Mug', 5, 'Mug', 'o_mug.jpg', 'mug'),
(24, 4, NULL, 'Shirt', 7, 'Shirt', 'o_shirt.jpg', 'shirt'),
(27, 4, NULL, 'Jewelry', 5, 'Jewelry', 'o_jewlery.jpg', 'Jewelry'),
(33, 6, NULL, 'Poster', 2, 'Poster', 'p1.jpg', 'poster'),
(34, 6, NULL, 'Mug', 5, 'Mug', 'p2.JPG', 'mug'),
(35, 6, NULL, 'Shirt', 7, 'Shirt', 'p6.jpeg', 'shirt'),
(36, 6, NULL, 'Mobile Cover', 5, 'Mobile Cover', 'p3.JPG', 'phone cover'),
(37, 6, NULL, 'Medal', 5, 'Medal', 'p5.jpg', 'medal'),
(38, 6, NULL, 'Jewelry', 5, 'Jewelry', 'p4.jpg', 'Jewelry'),
(40, 2, NULL, 'Book', 25, 'Book', 'game of thrones_books.jpg', 'game of thrones_book'),
(45, 1, NULL, 'Book', 7, '0', 'book.JPG', 'book'),
(47, 3, NULL, 'Jewelry', 5, 'Jewelry', 'bb_Jewelry.jpg', 'Jewelry'),
(48, 5, NULL, 'Shirt', 7, 'Shirt', 'v2.jpg', 'shirt'),
(50, 5, NULL, 'Mug', 5, 'Mug', 'v5.jpg', 'mug'),
(51, 5, NULL, 'Jewelry', 5, 'Jewelry', 'v4.jpg', 'Jewelry'),
(52, 5, NULL, 'Poster', 5, 'Poster', 'v1.jpg', 'poster'),
(53, 7, NULL, 'Poster', 2, 'Poster ', 's1.jpg', 'poster'),
(54, 7, NULL, 'Mug', 5, 'Mug', 's3.jpg', 'mug'),
(55, 7, NULL, 'Shirt', 7, 'Shirt', 's2.jpg', 'shirt'),
(56, 7, NULL, 'Medal', 5, 'Medal ', 's4.jpg', 'medal'),
(57, 7, NULL, 'Jewelry', 5, 'Jewelry', 's5.jpg', 'Jewelry'),
(60, 8, NULL, 'Poster', 2, 'Poster ', 'p_poster.jpg', 'poster'),
(61, 8, NULL, 'Mug', 5, 'Mug', 'p_mug.jpg', 'mug'),
(62, 8, NULL, 'Shirt', 7, 'Shirt', 'p_shirt.jpg', 'shirt'),
(63, 8, NULL, 'accessories', 20, 'accessories', 'p_accessories.jpg', 'accessories'),
(64, 8, NULL, 'phone cover', 5, 'phone cover', 'p_phone.jpg', 'phone cover'),
(66, NULL, 2, 'THE GODFATHER', 12, 'THE GODFATHER', 'THE GODFATHER.jpg', 'THE GODFATHER'),
(67, NULL, 2, 'BREAKFAST AT TIFFANY ', 12, 'BREAKFAST AT TIFFANY', 'BREAKFAST AT TIFFANY.jpg', 'BREAKFAST AT TIFFANY'),
(68, NULL, 2, 'WEST SIDE STORY', 12, 'WEST SIDE STORY', 'WEST SIDE STORY.jpg', 'WEST SIDE STORY'),
(69, NULL, 2, 'CASABLANCA', 12, 'CASABLANCA', 'CASABLANCA.jpg', 'CASABLANCA'),
(70, NULL, 2, 'CITIZEN KANE', 12, 'CITIZEN KANE', 'CITIZEN KANE.jpg', 'CITIZEN KANE'),
(71, NULL, 2, 'LAWRENCE OF ARABIA ', 12, 'LAWRENCE OF ARABIA', 'LAWRENCE OF ARABIA.jpg', 'LAWRENCE OF ARABIA'),
(72, NULL, 2, 'Dial M For Murder', 12, 'Dial M For Murder', 'Dial M For Murder.jpg', 'Dial M For Murder'),
(73, NULL, 2, 'Gone.With.The.Wind', 12, 'Gone.With.The.Wind', 'Gone.With.The.Wind.jpg', 'Gone.With.The.Wind'),
(75, NULL, 2, 'REBECCA', 12, 'REBECCA', 'REBECCA.jpg', 'REBECCA'),
(76, NULL, 3, 'The Equalizer', 12, 'The Equalizer', 'The Equalizer.jpg', 'The Equalizer'),
(77, NULL, 3, ' Black Panther ', 12, 'Black Panther', 'Black Panther.jpg', 'Black Panther'),
(78, NULL, 3, ' Mission: Impossible', 12, 'Mission: Impossible', 'Mission Impossible.jpg', 'Mission: Impossible'),
(79, NULL, 3, ' The Dark Knight', 12, 'The Dark Knight', 'The Dark Knight.jpg', 'The Dark Knight'),
(80, NULL, 3, 'John Wick', 12, 'John Wick', 'John Wick.jpg', 'John Wick'),
(81, NULL, 3, 'Kingsman ', 12, 'Kingsman', 'Kingsman.jpg', 'Kingsman'),
(83, NULL, 3, ' Skyfall', 12, 'Skyfall', 'Skyfall.jpg', 'Skyfall'),
(84, NULL, 1, 'The Shawshank Redemption ', 12, 'The Shawshank Redemption ', 'The Shawshank Redemption.jpg', 'The Shawshank Redemption '),
(85, NULL, 1, '  Schindler s List', 12, 'Schindler s List', 'Schindler s List.jpg', 'Schindler s List'),
(86, NULL, 1, ' Fight Club ', 12, 'Fight Club', 'Fight Club.jpg', 'Fight Club'),
(87, NULL, 1, ' Goodfellas', 12, 'Goodfellas', 'Goodfellas.jpg', 'Goodfellas'),
(88, NULL, 1, 'The Green Mile ', 12, 'The Green Mile', 'The Green Mile.jpg', 'The Green Mile'),
(89, NULL, 1, 'The Shining  ', 12, 'The Shining', 'The Shining.jpg', 'The Shining'),
(90, NULL, 4, 'Forrest Gump ', 12, 'Forrest Gump ', 'Forrest Gump.jpg', 'Forrest Gump '),
(91, NULL, 4, '  The Princess Bride  ', 12, 'The Princess Bride', 'The Princess Bride.jpg', 'The Princess Bride'),
(92, NULL, 4, '  The Notebook ', 12, 'The Notebook', 'The Notebook.jpg', 'The Notebook'),
(93, NULL, 4, ' Titanic ', 12, 'Titanic', 'Titanic.jpg', 'Titanic'),
(94, NULL, 4, 'Pride & Prejudice ', 12, 'Pride & Prejudice', 'Pride & Prejudice.jpg', 'Pride & Prejudice'),
(95, NULL, 4, 'Silver Linings Playbook  ', 12, 'Silver Linings Playbook', 'Silver Linings Playbook.jpg', 'Silver Linings Playbook'),
(96, NULL, 4, 'A Walk to Remember', 12, 'A Walk to Remember', 'A Walk to Remember.jpg', 'A Walk to Remember'),
(98, NULL, 5, 'Kong: Skull Island ', 12, 'Kong: Skull Island', 'Kong Skull Island.jpg', 'Kong: Skull Island'),
(99, NULL, 5, ' Avengers  ', 12, 'Avengers', 'Avengers.jpg', 'Avengers'),
(100, NULL, 5, '  The Lord of the Rings ', 12, 'The Lord of the Rings\r\n', 'The Lord of the Rings.jpg', 'The Lord of the Rings\r\n'),
(101, NULL, 5, ' Interstellar ', 12, 'Interstellar', 'Interstellar.jpg', 'Interstellar'),
(102, NULL, 5, 'Raiders of the Lost Ark ', 12, 'Raiders of the Lost Ark', 'Raiders of the Lost Ark.jpg', 'Raiders of the Lost Ark'),
(103, NULL, 5, 'Gladiator  ', 12, 'Gladiator', 'Gladiator.jpg', 'Gladiator');

-- --------------------------------------------------------

--
-- Table structure for table `tv_series`
--

CREATE TABLE `tv_series` (
  `series_id` int(100) NOT NULL,
  `series_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_series`
--

INSERT INTO `tv_series` (`series_id`, `series_title`) VALUES
(1, 'Friends'),
(2, 'Game OF Therons'),
(3, 'Breaking Bad'),
(4, 'The Originals'),
(5, 'VIKINGS'),
(6, 'Prison Break '),
(7, 'Sherlock'),
(8, ' Peaky Blinders');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'lana', 'moh', 'lanashakhatreh928@gmail.com', '9eb97dc459713ff634c09aab847ad4bb', '0790282589', 'jordan', 'irbid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `tv_series`
--
ALTER TABLE `tv_series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `series_id` FOREIGN KEY (`series_id`) REFERENCES `tv_series` (`series_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
